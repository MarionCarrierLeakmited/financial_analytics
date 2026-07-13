---
name: call-analysis-leakmited
description: >
  Workflow complet d'analyse des calls commerciaux et opérationnels Leakmited.
  Utiliser ce skill dès que l'utilisateur demande à analyser les calls d'une semaine,
  d'un segment, d'un rep, ou d'une période donnée — même sans mention explicite du mot
  "segment" ou "workflow". Déclencher aussi pour : "analyse les appels de la semaine",
  "que s'est-il passé dans les calls de [rep]", "fais le tour des appels [période]",
  "Prompt 1 / Prompt 2 du segment [X]", "analyse de calls [segment]", "analyse hebdo".
  Supporte les périodes 7 jours ([DATE-7J] à [DATE]) et 30 jours ([DATE-30J] à [DATE]).
  Couvre les 8 segments : Prospection Direct Sales · Avancée pipe Direct Sales ·
  Prospection TWIN Exploitation · 1er RDV TWIN Exploitation · DSI TWIN Exploitation ·
  Config/Intégration TWIN Exploitation · Ops/CSM Sprint · Ops/CSM TWIN Patrimoine.
---

# Workflow d'analyse des calls — Leakmited

## Contexte du Project

Ce skill s'exécute dans un Project Claude.ai qui contient déjà dans son contexte :

- **`leakmited_hubspot_claude_reference_v2.md`** — référentiel complet (organigramme,
  pipelines, propriétés custom, workflow 360°, pages Notion, MEDDPICC, Section 12 calls).
  **Lire ce fichier en priorité** — il est la source de vérité pour tout ce qui concerne
  les IDs HubSpot, les pipelines, les reps, les règles métier et les pages Notion.

- **CSV Projets HubSpot** — export de l'objet Projets (0-970). Nom du fichier encode la
  date d'export (ex : `hubspotcrmexportstouslesprojets20260615.csv` = 15 juin 2026).

- **`userMemories`** — mémoire persistante contenant les corrections et apprentissages
  des sessions précédentes (règles dédoublonnage, filtres Claap, règle CFO, etc.).
  Ces règles s'appliquent automatiquement — elles ne sont pas répétées ici.

- **`references/segment-config.md`** (ce skill) — configuration détaillée par segment.

> Toutes ces sources sont déjà dans le contexte. Le skill y fait référence — il ne les
> charge pas lui-même.

---

## ÉTAPE 0 — Initialisation et vérification bloquante du CSV

### 0a. Identifier la période
- Période **hebdomadaire** (défaut) : `[DATE-7J]` à `[DATE]`
- Période **mensuelle** (si demandée explicitement) : `[DATE-30J]` à `[DATE]`
- Utiliser la date du jour réelle dans tous les calculs

### 0b. Identifier le segment
Parmi les 8 disponibles (voir description). Lire ensuite `references/segment-config.md`
→ section du segment concerné pour récupérer sources, filtres, reps et exclusions.

### 0c. ⛔ Vérification bloquante — fraîcheur du CSV Projets

**Extraire la date d'export du nom du fichier CSV présent dans le contexte.**

```
Date d'export = les 8 premiers chiffres du nom de fichier
Ex : hubspotcrmexportstouslesprojets20260615.csv → 15 juin 2026
```

**Calculer l'ancienneté** : `[DATE] − date_export`

| Ancienneté | Action |
|---|---|
| ≤ 7 jours | ✅ Continuer — mentionner la date en tête d'analyse |
| > 7 jours | 🛑 **STOP — workflow bloqué** |

**Si le CSV date de plus de 7 jours** :

> 🛑 **Workflow bloqué — export CSV trop ancien**
>
> L'export CSV Projets date du `[date_export]` soit `[N]` jours. Le seuil maximum
> est de 7 jours.
>
> Un export à jour est disponible ici :
> 👉 https://drive.google.com/drive/folders/1Ey-T1bp8FVxiySzPOjIA7z5IloQrEW8r?usp=sharing
>
> **Marche à suivre :**
> 1. Télécharger le dernier export CSV depuis ce dossier Drive
> 2. L'uploader dans ce Project Claude.ai (Settings → Project files)
> 3. Relancer l'analyse
>
> Le workflow ne peut pas démarrer sans un CSV à jour — les données opérationnelles
> Sprint (Sprint Gain Reached %, TTD, TTI) seraient inexactes.

> ⚠️ Si aucun fichier CSV n'est détecté dans le contexte, afficher le même message
> de blocage avec la mention "Aucun export CSV détecté dans le contexte du Project."

---

## ÉTAPE 1 — Récupération parallèle

Lancer **simultanément** les appels suivants :

### Source Attention (Aircall téléphone)
```
Attention:search_calls(
  team_id    = "35ac8f10-01d3-42d1-a4fd-18adff8019ea",
  from_date  = [DATE-Nj],
  to_date    = [DATE],
  with_crm_records             = true,
  include_internal_participants = true,
  page = 1 → paginer jusqu'à épuisement (size=50 par page)
)
```

### Source Claap (visioconférences)
```
Claap:search_recording_transcripts(
  workspaceId = "O2SDGVUZ2k",
  filters = {
    createdAt       : { gte: [DATE-Nj], lte: [DATE] },
    topicTitle      : [voir segment-config.md pour ce segment],
    hasExternalSpeaker : true
  },
  search = { query: [requête sémantique segment], type: "semantic" },
  limit  = 50
)
```
> Si le segment utilise plusieurs topics Claap → lancer une requête **par topic**.

### Calls longs en parallèle (amélioration W23)
Sans attendre la requalification complète, lancer immédiatement la lecture des
transcripts des calls ≥10 min (Attention) et ≥15 min (Claap) identifiés dans les
résultats bruts. Cela évite un aller-retour après le premier tableau.

---

## ÉTAPE 2 — Dédoublonnage obligatoire

```
Attention:search_calls(
  team_id          = "35ac8f10-01d3-42d1-a4fd-18adff8019ea",
  from_date        = [DATE-Nj],
  to_date          = [DATE],
  transcript_search = "Leakmited"
)
```

**Méthode** :
- Calls Attention dont le **titre contient "Leakmited"** = visios enregistrées
  simultanément Aircall ET Claap
- Croiser **date + rep + compte** avec la liste Claap du segment
- Un call présent dans les deux sources → **Claap fait foi**, retirer d'Attention
- Détecter et exclure tout **call interne** (prestataires, démos outils, etc.)

**Résultat attendu** : 0 doublon sur la plupart des segments.

---

## ÉTAPE 3 — Identification et traitement des Externes

**Règle** : toute personne dans Attention ou Claap **absente de l'organigramme
Leakmited** (lire la Section 1 du fichier de référence) = externe engagé.

- ✅ Comptabiliser dans le segment pertinent
- ✅ Flagger `[Externe]` dans toutes les colonnes du tableau
- ⚠️ **Vérifier le contenu des calls AVANT de comptabiliser** — l'external peut
  pitcher un produit qui appartient à un autre segment
  (ex : Lamouroux → pitch TWIN Exploitation, pas Prospection Direct Sales)

Exemples connus : Guilhem Lamouroux (SDR externe), Valentin Moreau (externe).

---

## ÉTAPE 4 — Requalification

### 4a. Requalification Attention

Classifier chaque call via **3 critères croisés** — jamais les labels Attention seuls :

| Critère | Usage |
|---|---|
| **Titre** | Signal primaire — nomme souvent compte + nature |
| **Durée** | <5 min = prospection · 5-15 min = qualification · >15 min = découverte/proposition |
| **CRM attaché** | deals/companies/contacts = prospect qualifié |

⛔ Scores Attention (`Score: X/100`) = à ignorer totalement
⛔ Labels Attention = présélection uniquement, jamais source de vérité

### 4b. Requalification Claap

Vérifier dans l'ordre pour chaque call :

1. `deal.stage = Lost` → exclure du comptage + **Règle CFO obligatoire**
2. Titre contenant "bilan" / "lancement" / "réunion de démarrage" + deal Won récent
   → Ops/CSM, pas Sales
3. Werda Adem ou Angélique Boitel + deal Won → Ops/CSM
4. Hubert / Franklin seuls sans rep Sales France → International/Partenaires
5. Mathis Guyot seul → Config/Intégration TWIN Exploitation
6. Pipeline TWIN Exploitation (`3789937885`) → segment TWIN Exploitation
7. Pipeline BE Channel (`3760999638`) → canal Partenaires
8. Compte 100% DSP (Veolia, Suez, Saur) → ICP hors cible → exclure + CFO si Lost

> `deal.stage` et `deal.amount` dans Claap = valeurs au moment de l'enregistrement,
> potentiellement périmées. Croiser avec HubSpot MCP si le stade/montant actuel est requis.
> Préférer `acv_weighted` à `amount` pour les ACV.

---

## ÉTAPE 5 — Comptage et vérification arithmétique

```
Volume net = N(Attention retenus) + N(Claap retenus) − N(doublons) − N(exclusions)
```

⛔ Ne jamais afficher un total incohérent avec les colonnes sources.
Vérifier la somme avant d'écrire dans le tableau.

---

## ÉTAPE 6 — Analyse des transcriptions

### Ordre de priorité
1. Calls longs Claap (≥20 min) → `Claap:get_recording_transcript`
2. Calls longs Attention (≥15 min) → `Attention:ask_attention` (batch ≤25 IDs)
3. Calls courts avec CRM deal attaché → `Attention:ask_attention`
4. Calls sur deals Lost → **obligatoire (Règle CFO)**
5. Calls sur deals bloqués >30 jours → diagnostiquer le frein

### Règles transcripts
- ⛔ Jamais les résumés/scores/intelligence items d'Attention
- ✅ Verbatim brut uniquement (`detailed_transcript: true` si nécessaire)
- Citations mot pour mot, attribuées : `Rep (Compte) : «verbatim»`

### Règle CFO
Mettre le contenu du call en lien avec le devenir du deal :
- Deal Lost → qu'est-ce qui s'est mal passé ?
- Deal bloqué → quel est le frein dans le transcript ?
- Deal avancé → qu'est-ce qui a fonctionné ?

---

## ÉTAPE 7 — Production du tableau de synthèse

**8 colonnes** :

| Colonne | Contenu attendu | À éviter |
|---|---|---|
| **Segment** | Nom + période | — |
| **Volume calls** | Total net + formule · répartition par rep · flag `[Externe]` | Liste individuelle des calls |
| **Appels Attention** | Calls Aircall uniquement · longs listés avec durée · "scores ignorés" | Calls Claap, scores Attention |
| **Appels Claap** | Calls visio uniquement · stade + montant `deal` Claap · Règle CFO | Calls Attention, Lost non filtrés |
| **Deal(s) avancé(s)** | RDV fermes avec date · bloqués avec diagnostic · Commit/Upside/Risk | Deals Lost, Won sans activité |
| **Bonne pratique clé** | Verbatim exact · rep + compte · aucune généralité | Formulations sans source |
| **Objection dominante** | Verbatim exact · traitement observé · verdict ✓/✗/⚡ · traitement optimal | Paraphrase sans transcript |
| **Action marketing** | 3-4 actions concrètes issues des patterns observés | Recommandations génériques |

**Format de sortie** :
- Widget HTML inline (conversation)
- Fichier Markdown téléchargeable (copier-coller direct dans Notion)

---

## Rappels permanents

- **Terminologie** : jamais "T&B" dans les outputs → toujours "TWIN Exploitation"
- **Sources** : Attention = téléphone Aircall · Claap = visioconférences
- **HubSpot MCP** = source de vérité pour les montants (`acv_weighted`) et stades actuels
- **CSV Projets** = source de vérité pour Sprint Gain Reached %, TTD, TTI
- **Notion** = pages stratégiques (MEDDPICC, méthode Losange, parcours avant-vente T&B)

---

## Fichiers de référence

- `references/segment-config.md` — configuration par segment (sources, filtres, reps,
  requêtes sémantiques, exclusions spécifiques)
