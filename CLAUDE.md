# Scorecards — Leakmited

## Projet

Analyse des calls commerciaux et opérationnels Leakmited, enrichie par les données HubSpot CRM Projets.

---

## Skill : `call-analysis-leakmited.skill`

Workflow complet d'analyse des calls. À déclencher dès qu'une demande porte sur :

- "analyse les calls de la semaine / du mois"
- "que s'est-il passé dans les calls de [rep]"
- "Prompt 1 / Prompt 2 du segment [X]"
- "analyse hebdo / mensuelle"

### Étapes du workflow

| Étape                   | Description                                                                                                       |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **0 — Init**            | Identifier période (7j défaut / 30j si demandé) + segment + vérifier fraîcheur CSV (⛔ bloquant si >7j)           |
| **1 — Récupération**    | Appels parallèles Attention (Aircall) + Claap (visio), pré-charger transcripts longs                              |
| **2 — Dédoublonnage**   | Croiser Attention/Claap par date+rep+compte — Claap fait foi en cas de doublon                                    |
| **3 — Externes**        | Identifier les participants hors organigramme Leakmited, flagger `[Externe]`, vérifier contenu                    |
| **4 — Requalification** | Attention : titre+durée+CRM (jamais scores seuls). Claap : Lost/Won/pipeline/speakers                             |
| **5 — Comptage**        | `Volume net = Attention + Claap − doublons − exclusions` — vérifier avant d'afficher                              |
| **6 — Transcripts**     | Claap ≥20 min → Attention ≥15 min → deals bloqués → deals Lost (Règle CFO obligatoire)                            |
| **7 — Tableau**         | 8 colonnes : Segment · Volume · Attention · Claap · Deals avancés · Bonne pratique · Objection · Action marketing |

### 8 segments

| #   | Segment                              | Reps principaux                                                        |
| --- | ------------------------------------ | ---------------------------------------------------------------------- |
| 1   | Prospection Direct Sales             | Colombel · Devraigne · Dourou · Guenot · Fethi · Articlaux · Le Pennec |
| 2   | Avancée pipe Direct Sales            | Colombel · Devraigne · Dourou · Guenot · Fethi · Articlaux             |
| 3   | Prospection TWIN Exploitation        | Le Pennec · Colombel · Articlaux · Guenot                              |
| 4   | 1er RDV TWIN Exploitation            | Le Pennec + Mounier (duo) · Melchior                                   |
| 5   | DSI TWIN Exploitation                | Mounier (lead technique) · Melchior                                    |
| 6   | Config/Intégration TWIN Exploitation | Mathis Guyot (lead) · Melchior                                         |
| 7   | Ops/CSM Sprint                       | Werda Adem · Turquais · Rafiq · Guyot · Boitel                         |
| 8   | Ops/CSM TWIN Patrimoine              | Angélique Boitel · Obiang Walbrou · Werda Adem · Turquais              |

### Sources de données du skill

| Source          | Outil                                | Contenu                                                               |
| --------------- | ------------------------------------ | --------------------------------------------------------------------- |
| **Attention**   | `Attention:search_calls`             | Calls téléphone Aircall — team `35ac8f10-01d3-42d1-a4fd-18adff8019ea` |
| **Claap**       | `Claap:search_recording_transcripts` | Visioconférences — workspace `O2SDGVUZ2k`                             |
| **HubSpot MCP** | MCP                                  | Source de vérité pour montants (`acv_weighted`) et stades actuels     |
| **CSV Projets** | Fichier contexte                     | Source de vérité pour Sprint Gain Reached %, TTD, TTI                 |

### Règles importantes

- ⛔ Jamais "T&B" dans les outputs → toujours "TWIN Exploitation"
- ⛔ Scores Attention (`Score: X/100`) = ignorer totalement
- ✅ Règle CFO : obligatoire sur tous les deals Lost (relier call → devenir du deal)
- ✅ Externals connus : Guilhem Lamouroux, Valentin Moreau — vérifier contenu avant de comptabiliser

---

## Données commerciales: `data/hubspot*.csv`

Exports HubSpot CRM de l'objet **Projets** (objet `0-970`).

| Fichier                                       | Date d'export                 |
| --------------------------------------------- | ----------------------------- |
| `hubspotcrmexportstouslesprojets20260610.csv` | 10 juin 2026                  |
| `hubspotcrmexportstouslesprojets20260615.csv` | 15 juin 2026                  |
| `hubspotcrmexportstouslesprojets20260622.csv` | 22 juin 2026 (le plus récent) |

Le nom du fichier encode la date d'export : `hubspotcrmexportstouslesprojets[YYYYMMDD].csv`. Par défaut, toujours utiliser la version la plus récente.

### Colonnes clés

Les CSV contiennent ~250 colonnes. Les colonnes métier principales :

| Colonne                                 | Description                                          |
| --------------------------------------- | ---------------------------------------------------- |
| `Nom`                                   | Nom du projet (encode pipeline : `SPRINT_`, `TWIN_`) |
| `Pipeline`                              | `#SPRINT` ou `#TWIN`                                 |
| `Phase de pipeline`                     | Stade actuel du projet                               |
| `Owner`                                 | Responsable du projet                                |
| `Sprint Start Date` / `Sprint End Date` | Dates de campagne Sprint                             |
| `Sprint Gain Reached %`                 | Taux d'atteinte objectif Sprint                      |
| `Sprint - TTD (days)`                   | Time To Detection                                    |
| `Sprint - TTI (days)`                   | Time To Investigation                                |
| `Sales Deal Value`                      | Valeur du deal                                       |
| `Twin Contract Status`                  | Statut contrat TWIN                                  |
| `Twin Start Date` / `Twin End Date`     | Durée contrat TWIN                                   |
| `Statut`                                | On Track / At Risk / etc.                            |
| `Date de fermeture`                     | Date de clôture prévue                               |
| `Labels`                                | Tags libres (ex : DPH, FBO, Migration V2)            |

Les colonnes `Cumulative time in "..."` et `Date entered/exited "..."` tracent le temps passé par stade de pipeline.

### Vision financière des sprints — `data/export perf sprint.xlsx`

**Registre commercial & financier de référence de tous les deals Sprint** (feuille
`Feuil2`, ~179 deals, cohortes 2021 → 2026, 10 pays). C'est la source de vérité pour le
**réalisé financier** (CA, coûts, marge, facturation) — là où le CSV Projets HubSpot est
la vérité _pipeline/opérationnel_ et la base app la vérité _qualité réseau_.

| Source de vérité                   | Pour quoi                                                     |
| ---------------------------------- | ------------------------------------------------------------- |
| `data/export perf sprint.xlsx`     | Finance réalisée : CA, coûts, marge, facturation, motion GTM  |
| CSV Projets HubSpot (`data/*.csv`) | Pipeline, phase, métriques opérationnelles (gain %, TTD, TTI) |
| Base app PostgreSQL                | Qualité des données réseau (diamètre / date / matériau)       |

#### Colonnes clés

| Colonne                                               | Description                                                                            |
| ----------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `Deal value devis` / `Deal value (€)`                 | Montant devisé vs réalisé/négocié                                                      |
| `Invoiced EUR` / `% /Total`                           | Montant facturé et taux de facturation (facturé / deal)                                |
| `Performance`                                         | Gain de débit (échelle 0–1) = `Sprint Gain Reached %` HubSpot                          |
| `Costs Sprint`                                        | Coûts de la campagne (€)                                                               |
| `# days campaign` · `# LS internal` · `# LS external` | Effort ops (jours campagne, leaksearchers internes / externes)                         |
| **`Gross margin sprint`**                             | **Marge brute = (`Deal value (€)` − `Costs Sprint`) / `Deal value (€)`**               |
| `Estimate`                                            | Réf. devis `D-YYYY-###` → lien probable vers HubSpot `Sales Quote Number` (à vérifier) |
| `Signing date` · `Deployment date`                    | Dates (⚠ format série Excel, à convertir)                                              |

#### Dimensions de segmentation

- `Contracts` : `Sprint` · `Sprint Multi` · `Sprint Inter`
- `Produit` : `Sprint` · `AI analysis`
- `Type sprint` : `Pilot` · `Zen` · `International`
- Motion GTM : `Newbiz` / `Expansion` (+ `Upsell`, `Cross-sell`)
- `Revenue` : `OneOff` · `Grant one off`
- `Cohorte` : année · `Status` : `Facturé` · `Accepté` · `Refusé` · `Expiré` · `Country`

#### ⚠ Précautions

- La **marge d'ici (`Gross margin sprint`) fait autorité** ; elle diffère du `margin_pct`
  calculé dans `sprint_loader.py` (basé sur HubSpot `Campaign deal value − estimated_costs`).
- **Coûts & effort (`Costs Sprint`, LS days) renseignés à partir de la cohorte ~2024** ;
  les deals antérieurs affichent `0` / `N/A` → filtrer avant toute moyenne.
- La marge contient au moins un **outlier extrême** (≈ −1169 %) → écrêter/filtrer avant d'agréger.
- `pandas` requiert `openpyxl` pour lire le `.xlsx` (non installé) ;

---

## Schéma de base de données PostgreSQL

Trois fichiers DDL (un par schéma) — lire avant d'écrire toute requête SQL :

| Fichier                                | Schéma PostgreSQL | Contenu                                                                            |
| -------------------------------------- | ----------------- | ---------------------------------------------------------------------------------- |
| [numericaltwin.sql](numericaltwin.sql) | `numerical_twin`  | Données du jumeau numérique (TWIN)                                                 |
| [platformv2.sql](platformv2.sql)       | `platformv2`      | Schéma standard partagé                                                            |
| [public.sql](public.sql)               | `public`          | L'organisation y est une table standard partagée, le reste est spécifique à SPRINT |

### Données Sprint — où chercher

Tables Sprint dans le schéma `public` (app : `/home/marionc/code_base/app`) :

| Table                                                    | Rôle                                                                                                                                                                                                                                           |
| -------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `sector_campaign`                                        | Campagne Sprint : `quote_number` (posé par un système externe, jamais par l'app), stats qualité figées à la création (`year/diameter/material_unknown_percentage`), chemins des fichiers sources (`data_path`, `kml_path`, `accessories_path`) |
| `sector`                                                 | Secteur d'une organisation (1 campagne = 1 secteur)                                                                                                                                                                                            |
| `assignment_progression` / `assignment_progression_pipe` | Tronçons réellement parcourus pendant la campagne — géométrie seule, **aucune FK réseau**                                                                                                                                                      |
| `campaign_event`                                         | Événements de campagne                                                                                                                                                                                                                         |

⚠️ **Les données réseau des campagnes Sprint ne sont PAS en base.** Elles vivent
dans des CSV en object storage (`sector_campaign.data_path`). Les % qualité stockés
en base sont calculés depuis ce CSV (`buildSectorCampaignStats`), **pondérés par la
longueur** (pas le nombre de tronçons), avec ces définitions d'« inconnu » :

- diamètre : `NULL` **ou `0`**
- année de pose : `NULL` **ou année sentinelle 1700**
- matériau : catégorie littérale `"Unknown"`

⚠️ **Ne pas confondre les tables réseau :**

- `public.network_pipe` = inventaire réseau (feature 2024, tuiles carto), partitionné
  par `network_id`, seules quelques partitions chargées en prod — PAS une source Sprint.
- `platformv2.network_arc` = **version la plus à jour des données réseau du client,
  utilisée par TWIN** — pas nécessairement l'état des données au moment d'un Sprint
  passé (le Sprint a travaillé sur le CSV figé dans `data_path`). Comparer les deux
  mesure une évolution des données, pas une erreur.
- Le seul lien campagne ↔ réseau est **spatial** : `assignment_progression_pipe.pipe_id`
  (format `137-31`) n'existe que dans le CSV de la campagne. Rapprochement validé :
  point milieu `location1`/`location2` → arc le plus proche dans un rayon de 10 m
  (index GiST + KNN, couverture ~99.8 %).

Code app de référence (SvelteKit + Kysely, schéma `public` uniquement, colonnes
snake_case en DB ↔ camelCase dans le code) :

- `frontend/src/lib/utils.ts` — `buildSectorCampaignStats` (calcul des % qualité)
- `frontend/src/lib/server/services/sector_campaign.ts` — requêtes campagnes
- `frontend/src/routes/utils.ts` — `toPipeFeatures` (parsing CSV réseau)

---

## Fichiers de référence attendus dans le contexte Claude.ai Project

Ces fichiers doivent être uploadés dans le Project Claude.ai (Settings → Project files) :

- `leakmited_hubspot_claude_reference_v2.md` — référentiel complet (organigramme, pipelines, IDs HubSpot, MEDDPICC, Section 12 calls)
- `userMemories` — mémoire persistante (règles dédoublonnage, filtres Claap, règle CFO)
- Le CSV Projets le plus récent (⛔ bloquant si >7 jours)
