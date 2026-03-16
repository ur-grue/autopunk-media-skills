---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
language: fr
tags: [documentary, scripting, interview, questions, subject-research]
---

# Générateur de Questions d'Interview

## Ce que fait cette compétence
Génère un ensemble de questions d'interview ciblé et structuré pour un sujet documentaire spécifique — organisé par fonction narrative, des questions initiales de mise en confiance jusqu'aux questions les plus difficiles ou révélatrices.

## Quand utiliser cette compétence
- Vous préparez une interview documentaire et voulez des questions qui vont au-delà de ce que la recherche seule peut générer
- Vous avez des informations de fond sur un sujet mais avez besoin d'une séquence complète de questions organisée pour un flux devant la caméra
- Vous voulez des questions qui produiront des réponses utilisables, émotionnelles et précises plutôt que des déclarations préparées
- Vous avez besoin de questions structurées de manière à ce que le sujet raconte son histoire, plutôt qu'il réponde à un questionnaire

## Ce que vous devez fournir
**Obligatoire :** Qui est le sujet et son rôle dans le documentaire ; l'angle éditorial (ce que le film essaie de comprendre à travers cette interview) ; 3 à 5 faits clés déjà connus sur le sujet
**Facultatif :** Ce sur quoi le sujet sera probablement sur ses gardes ; les scènes ou séquences spécifiques que l'interview doit soutenir (ex. : « nous avons besoin qu'il décrive le moment où il a pris la décision ») ; ton du film ; si c'est un film observationnel où l'interview est le principal dispositif narratif, ou un documentaire avec des images de tournage séparées

## Comment Claude aborde cette tâche
1. Identifie le travail narratif que cette interview particulière doit accomplir dans le film — ce que le sujet seul peut fournir et qu'aucun autre élément du documentaire ne peut
2. Ouvre l'ensemble de questions avec 3 à 4 questions de mise en confiance : des questions biographiques ouvertes qui permettent au sujet de trouver sa voix avant la caméra, et qui peuvent donner un contexte inattendu
3. Développe la section substantielle du milieu : 10 à 15 questions qui progressent du factuel au réflexif au personnellement révélateur, chacune s'appuyant sur la réponse naturelle que la question précédente invite
4. Conclut avec les questions difficiles ou à enjeux élevés — séquencées de manière à ce qu'elles arrivent après que la confiance soit établie, pas au début
5. Ajoute des notes de production : quelles questions sont les plus susceptibles de produire des extraits sonores utilisables, lesquelles peuvent nécessiter un silence de suivi, et lesquelles peuvent être supprimées si le temps est limité
6. Après l'ensemble de questions, fournit une note « Étape suivante » : quelles trois questions sont les plus critiques si le temps est limité, quoi préparer avant le tournage (autorisations, recherches supplémentaires), et si scene-breakdown-writer doit être lancé pour planifier le contexte visuel autour de l'interview

## Format de sortie
Liste de questions numérotée, organisée en trois sections étiquetées : Ouverture (3 à 4 questions), Substantielle (10 à 15 questions), et À Enjeux Élevés (3 à 5 questions). Chaque section précédée d'un paragraphe de notes du réalisateur expliquant l'objectif de la section. Notes de production sur 3 à 4 questions tout au long. Total : 20 à 25 questions. 500 à 700 mots. La sortie se termine par une note « Étape suivante » : les trois questions à prioriser si le temps est limité, quoi avoir préparé avant le tournage, et s'il faut lancer scene-breakdown-writer pour planifier la couverture visuelle autour de l'interview.

## Critères de qualité
- [ ] Aucune question ne peut être répondue par « oui » ou « non » — toutes les questions sont ouvertes
- [ ] Les questions sont dans un langage conversationnel ordinaire — pas le langage d'une interview formelle ou d'un questionnaire
- [ ] Au moins deux questions demandent au sujet de décrire un moment ou une scène spécifique, pas une expérience générale
- [ ] La séquence passe du sûr au sensible — les questions à enjeux élevés n'apparaissent pas dans la première section
- [ ] Les notes de production signalent quelles questions sont les plus critiques pour les besoins éditoriaux du film
- [ ] Aucune question n'intègre une hypothèse que le sujet doit accepter pour répondre
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (identifier les trois questions incontournables, préparer les autorisations, ou lancer scene-breakdown-writer pour la planification visuelle)

## Exemple

### Entrée
Sujet : Le directeur d'un hôpital régional qui a pris la décision d'annuler les opérations programmées lors d'une crise de capacité, une décision qui a été publiquement critiquée
Rôle dans le documentaire : Sujet institutionnel principal — la personne qui a pris la décision que le film examine
Angle éditorial : Le film explore comment les administrateurs hospitaliers prennent des décisions sous contraintes de ressources, et le coût personnel de l'autorité institutionnelle
Faits connus : Travaille dans l'administration hospitalière depuis 22 ans ; a été publiquement critiqué dans les médias locaux ; n'a jamais accordé d'interview filmée sur la décision spécifique ; est réputé être méthodique et prudent dans sa façon de parler
Sur ses gardes concernant : Les discussions internes spécifiques qui ont précédé la décision ; s'il croit avoir pris la bonne décision

### Sortie

**OUVERTURE — Établir la voix et le monde** *(Objectif : laisser le sujet s'installer dans l'interview et trouver son registre avant d'aborder le matériau central.)*

1. Vous êtes dans l'administration hospitalière depuis plus de vingt ans. Ce travail, qu'est-ce que c'est concrètement au quotidien — pas la version d'une fiche de poste, mais la version que vous vivez ?
2. Ramenez-moi à votre arrivée à ce poste. Qu'est-ce que vous pensiez que ce serait, et qu'est-ce qui s'est révélé différent ?
3. Quand vous expliquez ce que vous faites à quelqu'un qui n'a aucune idée de comment fonctionne un hôpital — lors d'un dîner — comment vous l'expliquez ?
4. Qu'est-ce que les gens comprennent le plus souvent mal sur la façon dont les décisions se prennent à l'intérieur d'un hôpital ?

*(Note de production : La question 4 génère souvent les réponses les plus franches. Les sujets qui ont eu l'impression d'être mal représentés publiquement ont tendance à y répondre longuement. Laissez courir.)*

---

**SUBSTANTIELLE — La décision et son contexte** *(Objectif : construire vers l'événement spécifique par le contexte, de sorte que le sujet soit en train de narrer plutôt que de se défendre.)*

5. Ramenez-moi à cette période — les semaines qui ont précédé la décision. Quelle était la situation opérationnelle à l'intérieur de l'hôpital ?
6. Qui d'autre était dans la salle quand c'était en discussion ? Quels rôles occupaient-ils ?
7. À quel moment avez-vous compris qu'une décision allait devoir être prise — pas dans l'abstrait, mais qu'elle allait vous incomber spécifiquement ?
8. Décrivez-moi les informations que vous aviez devant vous au moment où vous avez pris la décision. Qu'est-ce que vous peziez ?
9. Y avait-il des options que vous avez envisagées et écartées ? Lesquelles étaient-elles ?
10. Combien de temps a vraiment pris la décision — du point où c'était réel au point où vous avez dit : c'est ce qu'on fait ?
11. À qui l'avez-vous annoncé en premier, et comment vous l'avez expliqué ?
12. Quelle était votre attente sur la façon dont ça allait être reçu ?
13. Quand la critique publique est arrivée — comment l'avez-vous rencontrée en premier ? Où étiez-vous ?
14. Y a-t-il quelque chose dans la couverture de l'époque que vous avez trouvé juste ?

*(Note de production : La question 14 est un adoucisseur avant la version plus difficile. Elle les invite à reconnaître quelque chose de vrai avant d'être interrogé sur ce qui était faux.)*

15. Que voudriez-vous que quelqu'un qui a vécu une opération annulée pendant cette période comprenne sur la façon dont cette décision a été prise ?

---

**À ENJEUX ÉLEVÉS — Réflexion et bilan** *(Objectif : créer un espace pour que le sujet exprime le doute, le regret ou la conviction. Ce sont les questions les plus importantes de l'interview. Ne les brusquez pas.)*

16. Si vous aviez eu plus d'informations — des ressources, du temps, une option que vous n'aviez pas — auriez-vous pris une décision différente ?
17. Pensez-vous avoir pris la bonne décision ?

*(Note de production : Après la question 17, restez silencieux. Ne reformulez pas ou ne les sortez pas de la question. La réponse qui vient après une pause est souvent celle dont le film a besoin.)*

18. Quel est le coût de cette décision pour vous, personnellement ? Pas professionnellement — personnellement.
19. Dans vingt-deux ans, quand quelqu'un d'autre occupera un poste comme le vôtre et sera confronté à quelque chose comme ça — qu'est-ce que vous voulez qu'il sache ?
20. Y a-t-il quelque chose à ce sujet que vous n'avez jamais été interrogé sur, et que vous voulez consigné ?

*(Note de production : La question 20 produit fréquemment la réponse la plus inattendue de l'interview. Gardez-la pour la fin. Donnez-lui de l'espace.)*

---

## Limites connues
- Les questions sont générées à partir des informations que vous fournissez ; plus votre dossier sur le sujet est précis, plus les questions seront ciblées — un dossier vague produit des questions génériques
- La technique d'interview documentaire varie considérablement selon le style du réalisateur ; certains réalisateurs préfèrent peu de questions et un maximum de silence ; adaptez cet ensemble de questions à votre approche plutôt que de le suivre mécaniquement
- Les questions à enjeux élevés sur des questions légales ou réglementaires doivent être examinées avec le conseiller juridique du documentaire avant le tournage ; certaines lignes de questionnement peuvent créer une exposition à la responsabilité
- Cette compétence ne tient pas compte du fait qu'un sujet ait un avocat présent ou ait été préparé ; ajustez votre séquençage en temps réel en fonction du degré de prudence apparent du sujet

## Compétences associées
- [scene-breakdown-writer](scene-breakdown-writer.md)
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)
