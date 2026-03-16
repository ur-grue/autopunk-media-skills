---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: fr
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Générateur de Titres

## Ce que fait cette compétence
Génère une gamme d'options de titres et de sous-titres dans différents registres, longueurs et styles de publications pour un article ou un reportage donné.

## Quand utiliser cette compétence
- Vous avez un article terminé ou presque terminé et avez besoin d'options de titres avant de soumettre à un rédacteur en chef
- Vous êtes bloqué sur un titre et souhaitez sortir d'une approche unique
- Vous avez besoin de titres calibrés pour la voix d'une publication spécifique (tabloïd, revue littéraire, presse professionnelle, média numérique)
- Vous voulez un titre principal avec des options de sous-titre pour des reportages longs

## Ce que vous devez fournir
**Obligatoire :** Sujet de l'article ou résumé en 2 à 4 phrases ; type de publication ou public (ex. : quotidien national, publication professionnelle, magazine littéraire, média numérique)
**Facultatif :** Titre de travail existant à améliorer ou utiliser comme référence ; nombre de caractères maximum pour le titre ; si un sous-titre (chapeau) est nécessaire ; mots ou angles à éviter ; directive de ton (sérieux, provocateur, ironique, neutre)

## Comment Claude aborde cette tâche
1. Identifie l'argument central, la révélation ou le conflit de l'article — la seule chose qui rend ce texte digne d'être lu — et l'utilise comme ancre pour toutes les options de titres
2. Génère des titres à travers des approches structurelles distinctes : affirmation déclarative, question, impératif, retournement ironique, construction « X de Y », et le format substantif propre aux publications littéraires et longues
3. Calibre le registre selon le type de publication spécifié — le vocabulaire et la ponctuation d'un tabloïd diffèrent fondamentalement du style d'un magazine littéraire ; la presse professionnelle suit des conventions différentes de la presse grand public
4. Pour chaque titre principal, rédige un sous-titre (chapeau) correspondant qui ajoute le contexte journalistique que le titre principal omet
5. Signale quelles options fonctionnent mieux en presse écrite par rapport au numérique (les titres optimisés SEO sacrifient souvent l'élégance ; les titres print peuvent se permettre plus d'esprit)
6. Conclut par une note « Étape suivante » d'une phrase précisant quel titre prendre en avant, s'il faut lancer social-media-excerpt pour adapter le titre gagnant aux plateformes, et si newsletter-teaser-writer est nécessaire pour les textes de diffusion

## Format de sortie
6 à 10 options de titres organisées en groupes par registre (ex. : « Direct/Informationnel », « Analytique/Littéraire », « Provocateur/Percutant »). Chaque titre suivi de son chapeau. Annotation d'une ligne sur le registre et le contexte d'utilisation optimal. Longueur totale : 400 à 600 mots. Pas de markdown au-delà du gras pour le texte des titres. La sortie se termine par une note « Étape suivante » identifiant quel groupe de titres est le plus fort pour la publication spécifiée et quoi faire immédiatement : envoyer à un rédacteur en chef, lancer newsletter-teaser-writer, ou adapter la meilleure option pour les réseaux sociaux.

## Critères de qualité
- [ ] Les titres couvrent au moins 4 formats structurels différents
- [ ] Chaque titre est accompagné d'un chapeau qui ajoute du contexte journalistique
- [ ] Au moins une option est inférieure à 6 mots (fonctionne en couverture et sur les réseaux sociaux)
- [ ] Au moins une option est adaptée au SEO (phrase nominale claire avec mot-clé en tête)
- [ ] Aucun titre ne fabrique une affirmation au-delà de ce que le résumé de l'article soutient
- [ ] Les annotations de registre distinguent correctement les contextes print et numérique
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (envoyer le titre à un rédacteur, adapter pour les réseaux via social-media-excerpt, ou lancer newsletter-teaser-writer)

## Exemple

### Entrée
Résumé de l'article : Un reportage long sur comment de petites villes de France modifient discrètement leurs règles d'urbanisme pour autoriser plus de densité de logement — sans attendre une réforme nationale. L'article présente trois villes spécifiques, cite des élus responsables de l'urbanisme, et montre des résultats précoces : les loyers se sont stabilisés dans une ville après 18 mois.
Publication : Magazine d'intérêt général national, sérieux mais accessible (registre type Le Monde Magazine ou L'Obs)
Chapeau nécessaire : Oui
Pas de limite de caractères spécifiée

### Sortie

**Registre Direct / Informationnel**

1. **Les villes qui réparent discrètement la crise du logement**
*Chapeau : Pendant que Paris débat, une poignée de petites villes françaises réécrivent leurs plans locaux d'urbanisme — et ça commence à fonctionner.*
*(Recommandé pour : page d'accueil numérique ; adapté au SEO ; phrase nominale claire)*

2. **Le levier urbanistique dont personne ne parlait**
*Chapeau : Dans trois villes qui ont refusé d'attendre une réforme nationale, un changement discret du droit de l'urbanisme accomplit ce que des années de débat politique n'ont pas réussi.*
*(Recommandé pour : réseaux sociaux ; percutant, fonctionne en version courte)*

---

**Registre Analytique / Littéraire**

3. **Une ville change d'avis sur le jardin du voisin**
*Chapeau : À travers la France, un nombre petit mais croissant de communes parient que des logements plus denses — pas de nouvelles routes ni de subventions nationales — est la réponse à l'accessibilité.*
*(Recommandé pour : reportage print ; évocateur, récompense le lecteur curieux)*

4. **Comment construire une ville sans se battre pour ça**
*Chapeau : La crise du logement est un débat national depuis des décennies. Ces trois villes ont arrêté d'attendre.*
*(Recommandé pour : long format print ou numérique ; ironie sèche, registre intellectuel)*

---

**Registre Provocateur / Percutant**

5. **Ils ont modifié trois lignes du PLU. Les loyers ont cessé d'augmenter.**
*Chapeau : Ce n'était pas une révolution politique. Ce n'était pas un programme national. Dans une ville de taille moyenne, ça a pris 18 mois.*
*(Recommandé pour : newsletter ou réseaux sociaux ; la précision génère les clics ; meilleur pour les articles centrés sur les données)*

6. **La solution logement qui n'a pas besoin d'une loi nationale**
*Chapeau : Oubliez le débat parlementaire. Dans les villes où les urbanistes ont discrètement réécrit le droit local, les premiers résultats forcent une remise en question de la façon dont la France construit.*
*(Recommandé pour : section numérique opinion/analyse)*

---

**Couverture / Format Court**

7. **Le levier du jardin** *(Titre de couverture ; 3 mots ; nécessite un chapeau pour porter le contexte)*
8. **Les villes qui n'ont pas attendu** *(Fonctionne seul en couverture ou carte de réseau social)*

---

*Notes : Les options 1 et 5 sont les plus fortes pour le numérique/SEO. Les options 3 et 4 conviennent au registre littéraire d'un reportage print. Si ce texte va en couverture, l'option 7 avec un sous-titre de couverture est la forme courte la plus élégante.*

## Limites connues
- L'efficacité d'un titre en numérique dépend en partie du contexte de la miniature/image que Claude ne peut pas voir ; certaines options peuvent nécessiter un ajustement une fois le visuel connu
- Claude ne peut pas vérifier les affirmations ou les données dans le résumé de l'article ; les titres ne sont exacts que dans la mesure où ce que vous fournissez l'est — tout chiffre précis dans un titre (ex. : « 18 mois ») doit être vérifié dans le reportage
- Les titres littéraires et ironiques peuvent sous-performer algorithmiquement sur les plateformes qui privilégient une correspondance claire avec les mots-clés ; précisez votre canal de diffusion lors de votre demande

## Compétences associées
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../distribution/social-media-excerpt.md)
