# Configuration par segment — Analyse hebdomadaire des calls

> Ce fichier est la référence unique pour la configuration de chaque segment.
> Lire la section du segment concerné avant l'étape 1 du workflow.

---

## 1. Prospection Direct Sales

**Objectif** : Identifier tous les premiers contacts / relances de qualification avec des prospects collectivités eau potable sur réseau (régie directe).

**Reps concernés** : Colombel · Devraigne · Dourou · Guenot · Fethi · Articlaux · Pierre Le Pennec (Claap uniquement)
**Externals à inclure** : Guilhem Lamouroux `[Externe]` · Valentin Moreau `[Externe]` — vérifier contenu avant comptage

**Sources Attention**
- Labels de présélection : `Prospection`, `Qualification`
- Durée typique : <15 min
- Exclure : calls >20 min avec deal CRM avancé → segment Avancée pipe

**Sources Claap**
- Topic : `SDR`
- `hasExternalSpeaker: true`
- Requête sémantique : `"prospection recherche fuites Sprint collectivité réseau eau"`

**Exclusions spécifiques**
- Calls sur comptes 100% DSP (Veolia, Suez, Saur) → ICP hors cible, documenter en CFO si Lost
- Calls TWIN Exploitation (pitch logiciel) → transférer segment Prospection TWIN Exploitation
- Calls canal BE (Artelia, bureaux d'études) → transférer segment Partenaires
- Deals Lost → exclus comptage, analysés Règle CFO
- Guenot / Artelia → canal BE, reclasser Partenaires

**Signal de qualification fort** : prospect nomme son débit de nuit, son taux de rendement, ses secteurs de réseau.

---

## 2. Avancée pipe Direct Sales

**Objectif** : Identifier les appels commerciaux sur deals ouverts (Discovery Meeting → Pending Signature), hors prospection froide.

**Reps concernés** : Colombel · Devraigne · Dourou · Guenot · Fethi · Articlaux

**Sources Attention**
- Labels de présélection : `Découverte`, `Proposition`, `Négociation`, `Closing`, `Renouvellement`, `Expansion`
- Durée typique : >15 min
- Calls longs prioritaires pour analyse (≥20 min)

**Sources Claap**
- Topics : `Sales Land`, `Sales Expand`
- `hasExternalSpeaker: true`
- Requête sémantique : `"démo proposition offre devis Sprint campagne rendement"`

**Exclusions spécifiques — appliquer dans cet ordre**
1. `deal.stage = Lost` → exclus comptage, **Règle CFO obligatoire**
2. Calls Ops/CSM déguisés en Sales Land : titres contenant "bilan", "lancement", "réunion de démarrage", "exploitation" + deal Won clôturé récemment → exclure
3. Werda Adem OU Angélique Boitel + deal Won → Ops/CSM Sprint ou TWIN Patrimoine
4. Hubert Baya Toda OU Franklin Lobry seuls (sans rep Sales France) → International/Partenaires
5. Pipeline TWIN Exploitation (`3789937885`) → transférer segment TWIN Exploitation
6. Pipeline BE Channel (`3760999638`) → Partenaires
7. Pas de deal attaché + compte hors ICP eau → exclure

**Note terrain** : le topic Claap `Sales Land` ou `Sales Expand` n'est pas suffisant — vérifier deal stage + titre + speakers systématiquement. Résultat type W23 : 25 recordings → 4 retenus après requalification.

---

## 3. Prospection TWIN Exploitation

**Objectif** : Identifier les premiers contacts / relances sur le produit TWIN Exploitation (logiciel de pilotage réseau).

**Reps concernés** : Pierre Le Pennec (principal) · Colombel · Articlaux · Guenot (secondaires)
**Externals à inclure** : Guilhem Lamouroux `[Externe]` · Valentin Moreau `[Externe]`

**Sources Attention**
- Labels de présélection : `Prospection`, `Qualification`, `Découverte` courts (<10 min)
- Confirmer par : `transcript_search = "twin exploitation logiciel"`
- Volume structurellement faible — la prospection reste majoritairement orientée Sprint

**Sources Claap**
- Topic : `SDR` avec mentions "Twin", "Exploitation", "logiciel" dans le titre ou la recherche sémantique
- Requête sémantique : `"twin exploitation logiciel pilotage réseau cockpit anomalies"`
- `hasExternalSpeaker: true`

**Exclusions spécifiques**
- Calls Sprint mal classifiés comme TWIN
- Comptes en DSP (Veolia, Suez) → hors ICP TWIN Exploitation
- Calls avec uniquement reps Leakmited → internes, exclure

**Signal de qualification fort** : prospect mentionne consolidation de données, télégestion, Topkapi/PCWin, temps d'analyse vs exploitation.

---

## 4. 1er RDV TWIN Exploitation

**Objectif** : Identifier les premières visioconférences de découverte / démo produit TWIN Exploitation avec un prospect externe.

**Reps concernés** : Pierre Le Pennec + Sébastien Mounier (duo principal) · Florent Melchior (secondaire)

**Sources Attention**
- Résultat structurel : **0 call attendu** (ces reps ne sont pas sur Aircall pour les visios)
- Confirmer par : `transcript_search = "twin exploitation premier rendez-vous"` — si 0 résultat, ne pas insister

**Sources Claap**
- Topics : `Sales Land` (1ers RDV commerciaux) · `Product` (présentations produit avec prospect)
- `hasExternalSpeaker: true`
- Durée ≥15 min
- Requête sémantique : `"premier rendez-vous twin exploitation démo découverte logiciel"`

**Exclusions spécifiques**
- Calls SDR courts (<5 min) → segment Prospection TWIN Exploitation
- Calls uniquement reps Leakmited → internes, exclure
- `deal.stage = Lost` → exclus comptage, Règle CFO
- Calls avec dimension technique DSI/intégration forte → transférer segment DSI TWIN Exploitation

---

## 5. DSI TWIN Exploitation

**Objectif** : Identifier les sessions techniques avec les équipes DSI / IT côté client pour valider l'intégration SCADA, API, sécurité.

**Reps concernés** : Sébastien Mounier (lead technique) · Florent Melchior (co-présentateur)

**Sources Attention**
- Résultat structurel : **0 call attendu**
- Confirmer par : `transcript_search = "DSI intégration SCADA API sécurité NIS2"`

**Sources Claap**
- Topics : `Sales Land` · `Product` · `Expertise`
- ⚠️ Ne pas filtrer uniquement sur `Expertise` — à ce stade du cycle, les calls sont souvent en `Sales Land` ou `Product`
- `hasExternalSpeaker: true`
- Durée ≥20 min
- Requête sémantique : `"DSI intégration technique SCADA API sécurité informatique TWIN"`

**Exclusions spécifiques**
- 1ers RDV commerciaux sans dimension technique → segment 1er RDV TWIN Exploitation
- Calls Config/Intégration post-signature → segment Config/Intégration TWIN Exploitation
- Identifier la présence d'un interlocuteur IT/DSI côté client dans les speakers pour confirmer le segment

---

## 6. Config/Intégration TWIN Exploitation

**Objectif** : Identifier les sessions de paramétrage, configuration et intégration technique post-signature TWIN Exploitation.

**Reps concernés** : Mathis Guyot (lead) · Florent Melchior (co-présent)

**Sources Attention**
- Résultat structurel : **0 call attendu** (Mathis Guyot et Florent Melchior ne sont pas sur Aircall)
- Confirmer par : `transcript_search = "paramétrage Twin Exploitation configuration"`

**Sources Claap**
- Topic principal : `Expertise`
- Topic secondaire : `Product`
- `hasExternalSpeaker: true`
- Deals au stade Try and Buy ou Configuration dans le pipeline TWIN Exploitation (`3789937885`)
- Requête sémantique : `"configuration intégration paramétrage Twin Exploitation déploiement"`

**Volume structurellement faible** — cohérent avec le nombre de clients en phase TWIN Exploitation active à un instant donné.

**Exclusions spécifiques**
- Sessions DSI pré-signature → segment DSI TWIN Exploitation
- Calls commerciaux encore en cours de négociation → segment Avancée pipe ou 1er RDV

---

## 7. Ops/CSM Sprint

**Objectif** : Identifier les calls opérationnels liés aux campagnes Sprint en cours (kick-offs, bilans, suivis réparations, points performance).

**Reps concernés** : Werda Adem (lead) · Jules Turquais · Oussama Rafiq · Mathis Guyot · Angélique Boitel

**Sources Attention**
- Résultat structurel : **quasi nul** (les reps Ops ne sont pas sur Aircall)
- Confirmer par : `transcript_search = "sprint campagne bilan lancement"` — si 0 résultat, ne pas insister

**Sources Claap**
- ⚠️ Lancer **deux requêtes séparées** : `topicTitle = "Ops"` ET `topicTitle = "CSM"`
- `hasExternalSpeaker: true` — exclut les réunions internes Leakmited sans client
- Requête sémantique : `"sprint campagne bilan lancement kick-off réparations performance"`

**Types de calls retenus** : kick-offs, bilans de campagne, suivis réparations, points de performance.

**Exclusions spécifiques**
- Réunions internes Leakmited sans client présent (`hasExternalSpeaker: false`)
- Calls commerciaux Sprint (rep Sales + prospect sans Won) → segment Avancée pipe

---

## 8. Ops/CSM TWIN Patrimoine

**Objectif** : Identifier les calls de suivi, formation, renouvellement et revue patrimoniale sur les contrats TWIN actifs.

**Reps concernés** : Angélique Boitel (Head of CS) · Adeline Obiang Walbrou · Werda Adem · Jules Turquais

**Sources Attention**
- Résultat structurel : **0 call attendu** — ce segment passe exclusivement par visio Claap
- Confirmer par : `transcript_search = "twin patrimoine jumeau numérique"` — si résultats, vérifier qu'ils ne sont pas des calls commerciaux mal classifiés

**Sources Claap**
- Topic : `CSM`
- `hasExternalSpeaker: true`
- `dealTitle` contenant "TWIN"
- Requête sémantique : `"twin patrimoine suivi usage formation renouvellement revue"`

**Types de calls retenus** : suivi d'usage de la plateforme, formation, renouvellement, revue patrimoniale.

**Exclusions spécifiques**
- Calls de lancement TWIN Exploitation (pipeline actif) → segment Config/Intégration TWIN Exploitation
- Mentions incidentes "twin patrimonial" dans des calls Sprint commerciaux → exclure

---

## Mapping rapide — à quel segment appartient ce call ?

| Signal détecté | Segment |
|---|---|
| Prospect collectivité eau, 1er contact, <15 min | Prospection Direct Sales |
| Deal ouvert, rep Sales, >15 min, pas encore Won | Avancée pipe Direct Sales |
| Pitch TWIN Exploitation / logiciel, 1er contact | Prospection TWIN Exploitation |
| 1ère démo TWIN Exploitation avec prospect | 1er RDV TWIN Exploitation |
| Questions DSI, SCADA, API, sécurité, IT | DSI TWIN Exploitation |
| Paramétrage, config, déploiement post-signature | Config/Intégration TWIN Exploitation |
| Bilan Sprint, lancement, réparations, kick-off | Ops/CSM Sprint |
| Suivi, formation, renouvellement TWIN actif | Ops/CSM TWIN Patrimoine |
| Werda Adem / Angélique Boitel + deal Won | Ops/CSM Sprint ou TWIN Patrimoine |
| Hubert / Franklin seuls, sans rep Sales France | International/Partenaires → exclure |
| BE, AMO, Artelia | Canal Partenaires → exclure |
| DSP (Veolia, Suez, Saur), 100% délégué | ICP hors cible → exclure + CFO si Lost |
