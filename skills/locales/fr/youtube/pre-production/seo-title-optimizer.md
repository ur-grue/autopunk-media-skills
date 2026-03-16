---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
language: fr
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# Optimiseur de Titre SEO

## Ce que fait cette compétence
Génère 8 à 10 options de titres YouTube optimisés pour la recherche pour un sujet de vidéo donné, classées par potentiel de clic et de découvrabilité.

## Quand utiliser cette compétence
- Vous avez une vidéo terminée ou presque terminée et avez besoin d'un titre avant la publication
- Vous planifiez une vidéo et souhaitez valider la demande de recherche via des tests de titres
- Votre titre actuel sous-performe et vous souhaitez tester des alternatives en A/B
- Vous construisez un calendrier éditorial et avez besoin de titres de travail pour les prochaines vidéos

## Ce que vous devez fournir
**Obligatoire :** Sujet de la vidéo ou titre de travail ; public cible (qui regarde cette chaîne) ; objectif principal de la vidéo (informer, divertir, tutoriel, opinion, critique)
**Facultatif :** Niche et ton de la chaîne (décontracté, éducatif, journalistique) ; 2 à 3 titres de concurrents sur le même sujet ; durée ou format de vidéo souhaité ; mots-clés sur lesquels vous avez déjà un bon positionnement

## Comment Claude aborde cette tâche
1. Identifie l'intention de recherche centrale derrière le sujet — quelle question ou quel désir spécifique amènerait quelqu'un à rechercher cette vidéo
2. Extrait 3 à 5 mots-clés et expressions à haute valeur susceptibles de correspondre à la façon dont le public recherche réellement, incluant des variantes de longue traîne
3. Génère des titres selon plusieurs structures YouTube éprouvées : liste, tutoriel, question, explicatif « pourquoi/quoi/comment », lacune de curiosité, et formats promesse de valeur
4. Filtre par nombre de caractères (moins de 60 caractères préféré pour un affichage complet sur la plupart des appareils), place le mot-clé le plus fort en premier, et évite le clickbait qui augmenterait le taux de rebond
5. Classe les options par potentiel estimé de clic et annote chacune avec une justification d'une ligne

## Format de sortie
Une liste numérotée de 8 à 10 titres. Chaque titre est suivi d'une note entre parenthèses expliquant l'approche structurelle utilisée et le mot-clé principal ciblé. Les titres sont ordonnés du potentiel de clic estimé le plus élevé au plus faible. Longueur totale : moins de 400 mots. Texte brut, sans en-têtes markdown dans la sortie.

## Critères de qualité
- [ ] Chaque titre inclut au moins un mot-clé concret, pas seulement des descripteurs abstraits
- [ ] Les titres couvrent au moins 4 formats structurels différents (liste, tutoriel, question, affirmation)
- [ ] Aucun titre ne dépasse 70 caractères
- [ ] Le titre le mieux classé place le mot-clé principal dans les 4 premiers mots
- [ ] Au moins deux titres ciblent des requêtes de recherche de longue traîne
- [ ] Aucun titre ne contient de superlatifs trompeurs qui ne peuvent pas être étayés

## Exemple

### Entrée
Sujet : Comment créer une routine matinale qui tienne vraiment dans la durée
Public cible : Adultes axés sur la productivité, 25 à 40 ans, qui ont essayé et abandonné des routines matinales par le passé
Objectif : Tutoriel/conseil
Ton de la chaîne : Direct, pratique, sans détour
Titres de concurrents vus : « Ma routine du matin à 5h », « Comment je suis devenu quelqu'un du matin »

### Sortie
1. **Comment créer une routine matinale qui tienne vraiment** (Tutoriel direct ; mot-clé : « routine matinale » ; correspond exactement à l'intention de recherche des personnes frustrées)
2. **Pourquoi votre routine matinale échoue toujours (et comment y remédier)** (Problème-solution ; cible l'angle de la frustration ; forte lacune de curiosité)
3. **Routine matinale que vous n'abandonnerez pas en 3 jours** (Précision + point douloureux ; longue traîne pour les recherches « abandonner routine matinale »)
4. **La routine matinale pour les gens qui détestent les routines matinales** (Accroche contre-intuitive ; s'adresse directement à l'identité du public cible)
5. **Le seul système de routine matinale qui fonctionne sur le long terme** (Autorité + promesse ; cible les recherches « routine matinale qui fonctionne »)
6. **Arrêtez d'échouer avec les routines matinales — faites ça à la place** (Impératif ; forte urgence ; cible les chercheurs répétitifs)
7. **Comment j'ai enfin créé une routine matinale qui a tenu** (Témoignage personnel ; « enfin créé » cible les chercheurs de longue date)
8. **Habitudes de routine matinale durables (sans se lever à 5h)** (Suppression d'objection ; « sans 5h » se différencie des titres des concurrents)
9. **Ce que personne ne vous dit sur la création d'une routine matinale** (Lacune de curiosité ; cible les personnes qui ont lu les conseils standard)
10. **Routine matinale cohérente — Le guide étape par étape** (Titre d'ancrage SEO ; cible les recherches structurées de tutoriels de longue traîne)

**Recommandé :** Option 1 pour la publication principale ; Option 2 comme candidat au test A/B.

## Limites connues
- L'efficacité du titre dépend fortement de la miniature — un titre fort avec une miniature faible sous-performera quand même ; utilisez cette compétence en parallèle avec thumbnail-concept-brief
- Claude ne peut pas accéder aux données de volume de recherche YouTube en direct ; les suggestions de mots-clés sont basées sur des modèles structurels, pas sur des analyses en temps réel
- Les chaînes de niche avec des audiences très spécifiques (ex. : sous-thèmes professionnels) peuvent avoir besoin d'un contexte de domaine supplémentaire pour une sélection précise des mots-clés
- Les titres optimisés pour la recherche peuvent sacrifier la voix de la marque ; les créateurs avec une identité tonale établie doivent filtrer en conséquence

## Compétences associées
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)
