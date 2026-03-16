---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
language: fr
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Générateur de Notes d'Émission

## Ce que fait cette compétence
Génère des notes d'émission complètes et optimisées pour le référencement à partir d'une transcription ou d'un résumé d'épisode — incluant description de l'épisode, points clés, horodatages, biographie de l'invité et section de liens — prêtes à coller dans une plateforme d'hébergement de podcast.

## Quand utiliser cette compétence
- Votre épisode est prêt à être publié et vous avez besoin de notes d'émission rédigées avant sa mise en ligne
- Vous souhaitez une structure cohérente de notes d'émission sur tous les épisodes plutôt que de rédiger à partir de zéro à chaque fois
- Vous rattrapez un retard d'épisodes publiés sans notes d'émission adéquates
- Vous voulez des notes d'émission qui servent à la fois de référence utile pour les auditeurs et de texte découvrable via le référencement

## Ce que vous devez fournir
**Obligatoire :** Titre de l'épisode ; soit une transcription (complète ou partielle) soit un résumé de 6 à 10 phrases couvrant les principaux sujets abordés
**Facultatif :** Nom et biographie de l'invité (ou biographie à inclure) ; liens mentionnés dans l'épisode ; informations sur les sponsors ; comptes sociaux de l'émission ; liens vers les plateformes de podcast (Apple Podcasts, Spotify, etc.) pour la section standard ; si des horodatages sont nécessaires ; mot-clé cible pour le référencement

## Comment Claude aborde cette tâche
1. Rédige le paragraphe de description d'ouverture (100 à 150 mots) : ce que l'épisode couvre, qui est l'invité, et ce que l'auditeur va retenir — avec le mot-clé principal apparaissant naturellement dans la première phrase
2. Extrait 4 à 6 points clés en puces — les insights ou arguments spécifiques de l'épisode, pas des étiquettes de sujets génériques
3. Génère des horodatages pour les changements de sujets majeurs si une transcription avec timing est fournie, ou note les sections si aucun horodatage n'est disponible
4. Formate la biographie de l'invité (si fournie) dans un paragraphe soigné, avec les liens de suivi sur les réseaux sociaux et le site recommandés
5. Structure la section des liens : ressources mentionnées, liens de l'invité, profils sociaux de l'émission, notes de sponsors
6. Conclut par une ligne « Étape suivante » recommandant quoi faire avec le résultat : quelle plateforme utiliser pour coller, s'il faut d'abord lancer episode-summary-writer si le contenu est trop léger, ou si transcript-cleanup améliorerait le matériau source

## Format de sortie
Notes d'émission complètes structurées avec des sections étiquetées : Description de l'épisode, Points clés, Temps forts de l'épisode (avec horodatages si disponibles), Biographie de l'invité, Liens et ressources. Longueur totale : 350 à 550 mots plus section de liens. Rédigé pour les lecteurs qui parcourent en diagonale : valeur frontale, points clés en puces, formatage des liens soigné. Texte brut qui se colle proprement dans n'importe quelle plateforme. La sortie se termine par une brève note « Étape suivante » précisant l'action immédiate : coller dans la plateforme d'hébergement du podcast, ajouter les URL réelles aux espaces réservés de liens, ou utiliser episode-summary-writer si le matériau source était un résumé plutôt qu'une transcription complète.

## Critères de qualité
- [ ] La description de l'épisode contient le mot-clé principal naturellement dans la première phrase
- [ ] Les points clés sont spécifiques à cet épisode — pas des descriptions génériques de sujets
- [ ] La section biographie de l'invité est distincte de la description principale et inclut au moins un espace réservé pour un lien social
- [ ] La section des liens est proprement formatée et inclut une divulgation sponsor le cas échéant
- [ ] Le texte total des notes d'émission est inférieur à 600 mots (optimal pour l'affichage sur les plateformes et la lecture des auditeurs)
- [ ] Aucune citation inventée ou affirmation de l'épisode qui n'est pas présente dans le résumé ou la transcription fournis
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (ex. : coller dans la plateforme, remplir les espaces réservés de liens, lancer transcript-cleanup pour un meilleur matériau source)

## Exemple

### Entrée
Titre de l'épisode : La science du sommeil qui change la façon dont les médecins traitent l'insomnie
Invité : Dr. Fatima Benali, chercheuse en médecine du sommeil et autrice
Résumé de l'épisode : La conversation porte sur : pourquoi la TCC-I (thérapie cognitivo-comportementale pour l'insomnie) surpasse les somnifères en termes de résultats à long terme mais est rarement prescrite ; comment le cerveau consolide la mémoire pendant le sommeil paradoxal et ce que la privation de sommeil fait à ce processus ; les mythes d'hygiène du sommeil versus ce que la science soutient réellement ; pourquoi les troubles du sommeil sont dramatiquement sous-diagnostiqués chez les femmes ; et la recherche actuelle de l'invitée sur le lien entre sommeil et risque d'Alzheimer.
Biographie de l'invité : Dr. Fatima Benali est chercheuse en médecine du sommeil et autrice de « Le Cerveau Reposé ». Elle dirige le laboratoire sommeil et cognition d'une grande université de recherche et conseille des hôpitaux sur les protocoles de traitement de l'insomnie. Twitter : @fatimabenalidoc (fictif). Site : fatimabenalidoc.fr (fictif).
Liens : Son livre « Le Cerveau Reposé », le site de son laboratoire
Mot-clé : TCC-I traitement insomnie
Horodatages disponibles : Non

### Sortie

**Description de l'épisode**

La TCC-I — thérapie cognitivo-comportementale pour l'insomnie — surpasse systématiquement les somnifères dans les essais cliniques, mais la plupart des patients souffrant d'insomnie n't en entendent jamais parler. Dans cet épisode, la chercheuse en médecine du sommeil Dr. Fatima Benali explique pourquoi, et ce que la science dit réellement sur comment nous dormons, pourquoi nous avons du mal, et ce qui aide genuinement.

Nous parlons de la consolidation mémorielle pendant le sommeil paradoxal, des raisons pour lesquelles les troubles du sommeil sont dramatiquement sous-diagnostiqués chez les femmes, et du corpus croissant de recherches reliant la perturbation chronique du sommeil au risque cognitif à long terme. La Dr. Benali décortique également quels conseils d'hygiène du sommeil standard sont fondés sur des preuves — et lesquels ne le sont pas.

---

**Points clés**

- La TCC-I produit de meilleurs résultats à long terme pour l'insomnie que les médicaments, mais nécessite un prestataire formé et prend plus de temps à agir — c'est pourquoi elle est sous-prescrite malgré les preuves
- La privation de sommeil perturbe la consolidation de la mémoire au niveau neurologique ; une seule mauvaise nuit affecte la capacité du cerveau à traiter et stocker ce qu'il a appris ce jour-là
- Les femmes sont diagnostiquées avec l'insomnie à des taux plus faibles que les hommes malgré des taux de signalement plus élevés — un écart de diagnostic que la Dr. Benali attribue en partie à la façon dont les études cliniques sur le sommeil ont historiquement été conçues
- L' « hygiène du sommeil » est réelle mais surestimée ; des facteurs comme la température de la pièce et la lumière comptent, mais ils sont secondaires aux schémas cognitifs et comportementaux que la TCC-I traite
- Des recherches émergentes examinent le lien entre la perturbation chronique du sommeil et le risque d'Alzheimer — un domaine que la Dr. Benali appelle « une des questions les plus importantes en science du sommeil en ce moment »

---

**Temps forts de l'épisode**

*(Horodatages non disponibles — référez-vous à l'épisode complet pour les emplacements des segments)*
- Pourquoi la TCC-I n'est pas largement prescrite malgré les preuves
- Ce que le sommeil paradoxal fait réellement au cerveau
- L'écart de genre dans le diagnostic des troubles du sommeil
- Hygiène du sommeil : ce qui fonctionne et ce qui ne fonctionne pas
- La frontière de la recherche sur Alzheimer et le sommeil

---

**À propos de la Dr. Fatima Benali**

La Dr. Fatima Benali est chercheuse en médecine du sommeil et autrice de *Le Cerveau Reposé*. Elle dirige le laboratoire sommeil et cognition d'une grande université de recherche et conseille des hôpitaux sur les protocoles de traitement de l'insomnie.

Suivez-la : Twitter @fatimabenalidoc | fatimabenalidoc.fr

---

**Liens et ressources**

- *Le Cerveau Reposé* par la Dr. Fatima Benali — [lien]
- Laboratoire de recherche de la Dr. Benali — [lien]
- Abonnez-vous à l'émission : [Apple Podcasts] [Spotify]
- Suivez-nous : [compte social de l'émission]

---

## Limites connues
- Les points clés ne sont aussi précis que la transcription ou le résumé que vous fournissez ; un résumé vague produit des points clés vagues — plus vous donnez de détails, plus la sortie est utile
- Les horodatages nécessitent soit une transcription horodatée, soit un timing approximatif des segments pour être précis ; sans cela, la compétence produit uniquement des étiquettes de sections
- La valeur SEO des notes d'émission dépend de la plateforme ; Spotify et Apple indexent les notes d'émission différemment, et l'optimisation pour une plateforme ne garantit pas les performances sur l'autre
- Cette compétence ne génère pas le titre de l'épisode — fournissez le titre terminé pour un alignement précis des mots-clés dans la description

## Compétences associées
- [episode-summary-writer](episode-summary-writer.md)
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [transcript-cleanup](transcript-cleanup.md)
