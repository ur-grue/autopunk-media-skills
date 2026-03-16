---
name: story-angle-finder
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: fr
tags: [journalism, ideation, angles, pitching, story-development]
---

# Trouveur d'Angle Éditorial

## Ce que fait cette compétence
Génère 6 à 8 angles éditoriaux distincts à partir d'un sujet large ou d'un événement d'actualité, chacun avec une perspective unique, un public cible et une approche journalistique.

## Quand utiliser cette compétence
- Vous avez un sujet mais pas encore d'histoire — vous connaissez le thème mais pas l'angle spécifique qui le rend publiable
- Vous préparez un pitch et avez besoin de voir l'ensemble des angles avant de décider lequel développer
- Un rédacteur en chef vous a confié un sujet ou un secteur et vous devez identifier le point d'entrée le plus convaincant
- Vous voulez voir comment un même événement pourrait être traité différemment selon les types de publication (actualité, reportage, opinion, portrait)

## Ce que vous devez fournir
**Obligatoire :** Le sujet large, le domaine thématique ou l'événement d'actualité sur lequel vous travaillez ; type de publication ou publication cible (ou décrivez votre public si pas de publication spécifique)
**Facultatif :** Les angles que vous avez déjà envisagés et souhaitez éviter ; sources spécifiques ou données auxquelles vous avez déjà accès ; portée géographique (locale, nationale, internationale) ; horizon temporel (actualité, intemporel, anniversaire) ; si vous avez besoin d'une accroche de pitch prête à l'emploi pour chaque angle

## Comment Claude aborde cette tâche
1. Identifie au moins six prismes éditoriaux distincts à travers lesquels le sujet peut être abordé : l'histoire personnelle/humaine, l'analyse systémique/structurelle, l'histoire des données, la perspective historique, l'angle contre-intuitif ou provocateur, le portrait, et l'explainer processus/comment-ça-fonctionne — en sélectionnant ceux qui conviennent le mieux au sujet
2. Pour chaque angle, spécifie la question centrale à laquelle l'article répondrait, le type principal de reportage requis (documents, sources, données, observation), et le foyer de publication le plus probable
3. Marque quels angles sont urgents versus intemporels, et lesquels nécessitent un accès significatif versus de la recherche documentaire
4. Note là où les angles chevauchent la couverture courante afin que le journaliste puisse différencier son pitch
5. Conclut par une recommandation « Étape suivante » : quels un ou deux angles développer en priorité compte tenu de l'accès de l'utilisateur et de sa cible de publication, et s'il faut lancer research-brief-creator ou headline-generator comme prochaine compétence immédiate

## Format de sortie
6 à 8 briefs d'angle numérotés. Chaque brief comprend : Nom de l'angle (3 à 5 mots), Question centrale, Approche journalistique (2 phrases), Type de publication idéal, et une Accroche de pitch (une phrase, prête à insérer dans un email de proposition). Longueur totale : 500 à 700 mots. Pas de jargon au-delà du vocabulaire éditorial standard. La sortie se termine par une note « Étape suivante » : quel angle développer en premier (selon l'accès et l'adéquation de publication), et quelle compétence lancer ensuite — research-brief-creator pour construire le plan de reportage ou headline-generator pour affiner l'accroche de pitch.

## Critères de qualité
- [ ] Chaque angle a une perspective éditoriale genuinement distincte — pas seulement un recadrage différent de la même histoire
- [ ] Chaque angle comprend une approche journalistique concrète (pas seulement « interviewer des experts »)
- [ ] Au moins un angle est contre-intuitif ou remet en question le cadrage conventionnel du sujet
- [ ] Au moins un angle convient à un traitement en long format
- [ ] Les accroches de pitch sont prêtes à être envoyées — assez précises pour se tenir seules dans un email
- [ ] La distinction urgent versus intemporel est faite pour chaque angle
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (quel angle développer en premier, et quelle compétence lancer ensuite : research-brief-creator ou headline-generator)

## Exemple

### Entrée
Sujet : Le nombre croissant de personnes quittant les grandes villes françaises pour s'installer dans des villes moyennes depuis 2020
Type de publication : Magazine d'intérêt général national
À éviter : Tout angle qui revient essentiellement à « le télétravail a rendu cela possible » (la rédactrice en chef dit que ça a été fait à l'excès)

### Sortie

**1. La ville qui a obtenu ce qu'elle souhaitait**
*Question centrale : Qu'arrive-t-il à la culture, aux prix et au tissu social d'une ville moyenne quand des urbains arrivent en grand nombre ?*
*Approche journalistique : Reportage immersif dans une ville spécifique qui a connu une croissance démographique significative. Interviews des résidents de longue date, des commerçants locaux et des nouveaux arrivants.*
*Publication idéale :* Magazine national, long format
*Accroche de pitch :* « Dans une ville de taille moyenne de [région], la population a augmenté de 18 % en trois ans. C'est une histoire sur ce qu'en pensent les anciens habitants. »
*Horizon temporel :* Intemporel

---

**2. Le choc des infrastructures**
*Question centrale : Les infrastructures des villes moyennes — eau, écoles, routes, services médicaux — peuvent-elles absorber la croissance démographique urbaine sans soutien de l'État ?*
*Approche journalistique : Documents publics sur les budgets municipaux, données sur les effectifs scolaires, et interviews d'administrateurs municipaux et de planificateurs régionaux.*
*Publication idéale :* Reportage d'investigation, desk politique
*Accroche de pitch :* « Les villes moyennes gagnent des habitants plus vite qu'elles peuvent se permettre de les servir — et ni l'État ni les régions n'ont de plan. »
*Horizon temporel :* Intemporel avec des accroches d'actualité disponibles

---

**3. Les gens qui sont revenus**
*Question centrale : Parmi ceux qui ont quitté les grandes villes pour des villes moyennes, qui est revenu — et pourquoi ?*
*Approche journalistique : Enquête par auto-sélection auprès des revenants urbains plus 4 à 5 portraits approfondis. Contrebalance le récit triomphaliste de la migration.*
*Publication idéale :* Reportage culturel/lifestyle
*Accroche de pitch :* « Les histoires des gens qui ont déménagé dans une petite ville et l'ont détestée ne sont pas écrites. En voici cinq. »
*Horizon temporel :* Intemporel ; angle contre-intuitif

---

**4. Le problème de l'exportation du logement**
*Question centrale : Les pressions du marché immobilier urbain sont-elles exportées vers les villes moyennes, chassant les résidents de la classe populaire qui y vivaient depuis longtemps ?*
*Approche journalistique : Données sur les prix immobiliers, interviews de résidents de longue date contraints de quitter leur marché locatif, associations locales de défense du logement.*
*Publication idéale :* Reportage économique/politique sociale ou desk d'investigation
*Accroche de pitch :* « Dans des villes où les prix immobiliers étaient stables depuis des décennies, la vague de migration urbaine a créé une nouvelle crise d'accessibilité — pour les gens qui étaient déjà là. »
*Horizon temporel :* Intemporel avec de fortes opportunités d'angle local

---

**5. Le portrait : l'urbaniste de la ville**
*Question centrale : Qui gère réellement cette transition — et qu'en pense-t-il ?*
*Approche journalistique : Portrait d'un seul sujet : un maire, un urbaniste ou un directeur du développement économique d'une ville moyenne face à la vague migratoire.*
*Publication idéale :* Portrait de magazine, supplément dominical
*Accroche de pitch :* « Elle a vécu dans cette ville toute sa vie. En trois ans, elle est devenue méconnaissable — et c'est elle que tout le monde appelle. »
*Horizon temporel :* Intemporel ; fort angle humain

---

**6. Le mythe de la vie plus simple**
*Question centrale : Déménager dans une ville moyenne apporte-t-il vraiment l'amélioration de la qualité de vie que les gens attendent ?*
*Approche journalistique : Données d'enquêtes longitudinales si disponibles ; interviews de migrants urbains à 1 an et 3 ans du déménagement ; cadrage santé mentale et satisfaction de vie.*
*Publication idéale :* Desk santé/lifestyle ou magazine culturel
*Accroche de pitch :* « Les études montrent que la satisfaction de vie ne s'améliore pas de manière fiable après un grand déménagement. Alors pourquoi les gens continuent-ils de quitter les grandes villes — et sont-ils plus heureux ? »
*Horizon temporel :* Intemporel ; remet en question le récit de la migration sans le rejeter

---

*Note : Les angles 1, 3 et 5 sont les plus forts pour un magazine généraliste long format. Les angles 2 et 4 conviennent à un desk d'investigation ou de politique. L'angle 6 est un pitch fort pour une publication lifestyle ou santé. Aucun de ces angles ne requiert le cadrage du télétravail que vous souhaitez éviter.*

## Limites connues
- Les angles sont générés à partir de la description du sujet uniquement ; Claude n'a pas accès aux bases de données d'actualités actuelles ni à ce qui a été récemment publié sur ce sujet — vérifiez toujours qu'un angle n'a pas été couvert récemment avant de pitcher
- La force d'un angle dépend de la disponibilité des sources et de l'accès ; un angle nécessitant un reportage immersif peut être inutilisable pour un journaliste basé ailleurs
- Pour les actualités, l'évaluation de la sensibilité temporelle peut être inexacte sans le contexte des événements récents ; fournissez la date et les développements récents pour une classification plus précise intemporel vs. urgent

## Compétences associées
- [headline-generator](headline-generator.md)
- [research-brief-creator](research-brief-creator.md)
- [reportage-structure](../writing/reportage-structure.md)
