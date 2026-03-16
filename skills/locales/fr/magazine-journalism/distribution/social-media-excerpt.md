---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
language: fr
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Extrait pour Réseaux Sociaux

## Ce que fait cette compétence
Extrait et reformate le passage ou l'argument le plus partageable d'un article publié en publications adaptées à chaque plateforme — sans réécrire le journalisme.

## Quand utiliser cette compétence
- Votre article est publié et vous avez besoin d'un contenu social prêt à poster qui génère du trafic ou construit une audience
- Vous voulez teaser un article payant sur les réseaux sociaux sans divulguer ses conclusions principales
- Vous repurposez un long format sur un calendrier de réseaux sociaux et avez besoin de plusieurs publications distinctes à partir d'un seul texte
- Vous voulez que l'extrait ressemble à l'article — pas à du texte marketing

## Ce que vous devez fournir
**Obligatoire :** Texte complet de l'article ou un extrait substantiel (au moins 400 mots) ; les plateformes pour lesquelles formatter (X/Twitter, Instagram, LinkedIn, ou les trois)
**Facultatif :** Handle/nom d'utilisateur de la publication pour l'attribution ; passage spécifique que vous pensez être le plus partageable ; directive de ton (style fils/commentaire vs. style carte-citation vs. extrait direct) ; s'il faut inclure un lien et un appel à la lecture ; statut payant

## Comment Claude aborde cette tâche
1. Lit l'article complet et identifie 2 à 3 candidats d'extrait : la phrase ou statistique la plus frappante, la citation la plus forte d'une source, et l'affirmation la plus contre-intuitive ou surprenante de l'article
2. Pour chaque plateforme, formate l'extrait pour s'adapter au registre naturel et aux conventions de caractères de la plateforme — pas seulement une troncation, mais une adaptation structurelle
3. Pour X/Twitter : une publication d'accroche de 240 caractères qui fonctionne seule, optionnellement suivie d'une continuation en fil de 2 à 3 tweets
4. Pour LinkedIn : un cadrage légèrement plus long et contextualisant avant l'extrait, se terminant par une conclusion professionnelle
5. Pour Instagram : un format carte-citation avec une légende qui développe la pensée
6. Préserve la voix de l'article — ces publications doivent ressembler au journalisme, pas à de la promotion pour celui-ci
7. Conclut par une note « Étape suivante » : quelle publication poster en premier, s'il faut programmer le fil ou poster toutes les plateformes simultanément, et si thumbnail-concept-brief doit être lancé pour créer un visuel correspondant pour la carte-citation Instagram

## Format de sortie
Blocs plateforme par plateforme, clairement étiquetés. Chaque bloc contient le texte de la publication, une note sur le nombre de caractères, et un conseil d'utilisation d'une ligne. Le texte de carte-citation (pour Instagram) est clairement séparé de la légende. Longueur totale : 350 à 500 mots selon les plateformes demandées. Texte brut tout au long — pas de HTML. La sortie se termine par une note « Étape suivante » : sur quelle plateforme poster en premier, s'il faut poster simultanément ou décaler les publications, et s'il faut utiliser thumbnail-concept-brief pour créer le visuel Instagram.

## Critères de qualité
- [ ] Chaque extrait est tiré de l'article réel — pas de paraphrase ou d'ajout éditorial qui n'est pas dans le texte
- [ ] La publication X/Twitter fonctionne comme une phrase autonome — elle ne nécessite pas de cliquer sur le lien pour avoir du sens
- [ ] La publication LinkedIn inclut une ligne de cadrage qui donne un contexte professionnel avant l'extrait
- [ ] Le texte de carte-citation Instagram est inférieur à 200 caractères (lisible à taille miniature)
- [ ] Aucune publication ne survend ou n'exagère les affirmations de l'article au-delà de ce que le texte soutient
- [ ] Le format d'attribution est cohérent avec les conventions de la plateforme
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (poster sur la première plateforme, programmer le fil, ou lancer thumbnail-concept-brief pour le visuel Instagram)

## Exemple

### Entrée
Extrait d'article (tiré d'un reportage sur la science du sommeil) :

*« Les conseils dominants sur le sommeil répètent le chiffre de huit heures depuis des décennies, mais la recherche derrière ce chiffre est plus fragile que la plupart des gens ne le réalisent. Une série de grandes études dans les années 2010 a constaté que les adultes qui signalaient dormir exactement huit heures ne vivaient pas, en moyenne, plus longtemps ni ne performaient mieux aux tests cognitifs que ceux qui dormaient six heures et demie ou sept heures. Ce que la recherche montre constamment, ce n'est pas un nombre optimal, mais une plage — et l'extrémité inférieure de cette plage, pour la plupart des adultes en bonne santé, est plus proche de six heures que de huit.*

*"Nous avons vendu aux gens un chiffre plutôt qu'un principe", dit la Pre Élise Morin, chercheuse en médecine du sommeil dans une université parisienne qui n'était impliquée dans aucune des études commerciales. "Le principe est : dormez jusqu'à vous sentir reposé. Le chiffre est une commodité commerciale." »*

Plateformes : X/Twitter, LinkedIn, Instagram
Handle de la publication : @larevuemagazine (fictif)
Payant : Oui

### Sortie

---

**X / Twitter**

Publication : *« "Nous avons vendu aux gens un chiffre plutôt qu'un principe. Le principe est : dormez jusqu'à vous sentir reposé. Le chiffre est une commodité commerciale." »* — une chercheuse sur pourquoi la règle des 8 heures est plus fragile qu'on ne le croit. [@larevuemagazine, lien en bio — abonné]

*(238 caractères avec attribution. Fonctionne comme citation autonome. Statut payant divulgué avec l'indication « abonné ».)*

**Suite du fil optionnelle :**
2/ La recherche est plus complexe que les conseils. De grandes études dans les années 2010 n'ont trouvé aucun avantage de mortalité ou de performance cognitive pour les personnes dormant exactement 8 heures par rapport à celles dormant 6,5 à 7 heures. Ce que la science montre, c'est une plage — pas un chiffre.
3/ Article complet sur le lien — utile si vous vous êtes déjà senti coupable de ne pas atteindre les huit heures.

---

**LinkedIn**

Les conseils sur le sommeil répètent le même chiffre — huit heures — depuis des décennies. La recherche derrière ce chiffre est plus contestée que la plupart des gens ne le savent.

*« Nous avons vendu aux gens un chiffre plutôt qu'un principe. Le principe est : dormez jusqu'à vous sentir reposé. Le chiffre est une commodité commerciale. »*

C'est une chercheuse en médecine du sommeil citée dans un nouveau reportage sur ce que la science dit vraiment — et pourquoi le consensus est plus complexe que le titre. Pertinent pour quiconque gère son propre emploi du temps, le bien-être de son équipe, ou les normes de productivité au travail.

[Lien] (Article payant — @larevuemagazine)

*(~170 mots. Cadrage contextualisant. Angle de pertinence professionnelle. Attribution et note payante incluses.)*

---

**Instagram**

*Texte de carte-citation (moins de 200 caractères) :*
« Nous avons vendu aux gens un chiffre plutôt qu'un principe. Le principe est : dormez jusqu'à vous sentir reposé. »
— Chercheuse en sommeil, @larevuemagazine

*Légende :*
Huit heures. C'est le chiffre que tout le monde connaît. Mais d'où vient-il — et la recherche le soutient-elle vraiment ? Un nouveau reportage examine la science. Lien en bio (article payant).

---

## Limites connues
- Cette compétence extrait et formate ; elle ne génère pas de nouvelles affirmations éditoriales — si l'article ne contient pas une citation forte autonome ou une statistique frappante, les publications sociales auront un impact limité
- La performance des articles payants sur les réseaux sociaux varie considérablement selon la plateforme et le public ; LinkedIn surpasse souvent X pour le contenu payant car le cadrage peut établir une valeur professionnelle avant le clic
- Pour Instagram, le contexte visuel (l'image ou le graphique associé à la carte-citation) n'est pas traité ici — utilisez la compétence thumbnail-concept-brief ou les compétences de direction artistique pour les visuels
- La sélection du passage est subjective ; si vous avez une ligne spécifique en tête, fournissez-la — la sélection de Claude peut ne pas correspondre au jugement éditorial sur ce qui est le plus représentatif du texte

## Compétences associées
- [newsletter-teaser-writer](newsletter-teaser-writer.md)
- [headline-generator](../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)
