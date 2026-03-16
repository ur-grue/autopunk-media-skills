---
name: hook-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.78
language: fr
tags: [youtube, pre-production, hooks, retention, podcast, documentary]
---

# Générateur d'Accroche

## Ce que fait cette compétence
Rédige trois options d'accroche d'ouverture — une par style — pour une vidéo YouTube, une introduction de podcast ou l'ouverture d'un documentaire. Chaque accroche fait 1 à 3 phrases et peut être utilisée telle quelle.

## Quand utiliser cette compétence
- Vous avez un sujet de vidéo, d'épisode ou de film et vous devez rédiger les 15 à 30 premières secondes
- Vous avez une ébauche d'accroche mais souhaitez des alternatives plus percutantes avant le tournage
- Vous voulez tester quel angle crée le plus de tension ou de curiosité avant de vous lancer dans un tournage

## Ce que vous devez fournir
**Obligatoire :**
- Sujet ou prémisse en une à trois phrases — de quoi parle réellement la vidéo, l'épisode ou le film
- Format : YouTube (long format ou Shorts), podcast ou documentaire

**Facultatif :**
- Ton : journalisme sérieux · sciences populaires · divertissement (par défaut : divertissement si non précisé)
- Public cible : à qui s'adresse le contenu en une phrase (ex. : « entrepreneurs en phase de démarrage », « auditeurs de true crime »)
- Un fait précis, une statistique ou une scène de votre contenu qui pourrait ancrer l'accroche

## Comment Claude aborde cette tâche

1. **Identifie la tension centrale.** Avant de rédiger, trouve la chose la plus captivante du sujet — le fait contre-intuitif, le résultat inattendu, les enjeux qui rendent ce contenu incontournable. C'est la matière première à partir de laquelle les trois accroches seront construites.

2. **Rédige une accroche par style**, chacune attaquant la tension sous un angle différent :
   - **Question provocatrice** — ouvre un vide cognitif que le spectateur ressent le besoin de combler. N'utilise pas de questions rhétoriques qui se répondent d'elles-mêmes. La question doit faire ressentir un enjeu personnel au public.
   - **Statistique ou fait surprenant** — commence par un chiffre ou un détail précis et contre-intuitif. La précision est ce qui crée crédibilité et curiosité. Évite les superlatifs vagues.
   - **Affirmation directe et audacieuse** — formule un énoncé confiant, légèrement provocateur, qui recadre la façon dont le spectateur pense au sujet. Justifie sa confiance ; ne bluste pas.

3. **Adapte le registre au ton.** Les accroches journalistiques sont mesurées et autoritaires — elles gagnent la crédibilité sans sensationnalisme. Les accroches de vulgarisation scientifique jouent sur l'émerveillement et l'accessibilité. Les accroches de divertissement misent sur la personnalité, l'énergie ou une provocation visuelle. Si le ton de l'entrée est ambigu, Claude s'aligne sur le registre le plus courant pour le format.

4. **Respecte le format.** Les accroches YouTube privilégient la provocation visuelle et les ruptures de schéma. Les accroches de podcast reposent entièrement sur le langage et fonctionnent souvent mieux quand elles sont conversationnelles et surprenantes. Les ouvertures documentaires peuvent supporter une construction plus lente — une déclaration d'un lieu ou d'une époque suivie d'un retournement.

5. **Recommande l'étape suivante.** Après la livraison des accroches, précise laquelle filmer ou enregistrer en premier, et quelle compétence associée utiliser ensuite (seo-title-optimizer pour aligner le titre, thumbnail-concept-brief pour traduire l'énergie visuelle de l'accroche, ou full-script-writer pour développer).

## Format de sortie

Trois options d'accroche étiquetées. Chaque accroche : 1 à 3 phrases, pas plus. Sans préambule, sans notation, sans explication — juste les accroches. Après les trois options, une ligne de conseils pratiques sur le style qui fonctionne le mieux pour le format et le ton donnés. La sortie se termine par une ligne « Étape suivante » précisant l'action immédiate : quelle accroche utiliser en premier et quelle compétence lancer ensuite.

```
**Option 1 — Question provocatrice**
[Texte de l'accroche]

**Option 2 — Statistique surprenante**
[Texte de l'accroche]

**Option 3 — Affirmation audacieuse**
[Texte de l'accroche]

---
*Conseil : [Une phrase sur l'option qui correspond le mieux à ce format/ton et pourquoi.]*
```

## Critères de qualité
- [ ] Chaque accroche ouvre un vide cognitif — le spectateur ressent genuinement le besoin de continuer pour le combler
- [ ] L'option statistique surprenante utilise un chiffre ou un détail précis, pas une affirmation vague
- [ ] Aucune accroche n'utilise l'expression « dans cette vidéo » ou n'annonce ce que le contenu va couvrir
- [ ] Le ton correspond au registre spécifié (journalisme / sciences populaires / divertissement)
- [ ] Chaque option est genuinement distincte — pas une reformulation des autres
- [ ] La sortie correspond au format : punch YouTube, entraînement conversationnel podcast, ou délibération documentaire
- [ ] Le conseil est précis et actionnable, pas générique
- [ ] La sortie inclut au moins une action concrète que l'utilisateur peut prendre immédiatement (quelle accroche utiliser et quoi faire ensuite : la filmer, lancer seo-title-optimizer ou ouvrir full-script-writer)

## Exemple

### Entrée
**Sujet :** Une vidéo YouTube d'analyse approfondie sur pourquoi la plupart des conseils en développement personnel sont conçus pour un mode de vie qui n'existe plus — le salarié en CDI avec une retraite garantie et un emploi stable à vie.

**Format :** YouTube long format (20 à 25 minutes)

**Ton :** Journalisme sérieux

**Public :** Personnes entre 30 et 45 ans qui se sentent en retard dans leur vie professionnelle malgré avoir suivi tous les conseils reçus

### Sortie

**Option 1 — Question provocatrice**
Et si la raison pour laquelle vous avez l'impression d'être en retard n'était pas que vous faites quelque chose de mal — mais que vous suivez des conseils écrits pour une version du marché du travail qui a disparu dans les années 1990 ?

**Option 2 — Statistique surprenante**
Le cadre de développement personnel le plus cité dans les médias francophones a été conçu à une époque où 68 % des actifs bénéficiaient d'un emploi à vie, d'une retraite à prestations définies et d'un seul employeur pour toute leur carrière. Cette époque s'est terminée avant que la plupart d'entre vous n'entrent sur le marché du travail.

**Option 3 — Affirmation audacieuse**
Les conseils en développement personnel ne sont pas défaillants. Ils sont simplement optimisés pour quelqu'un qui n'existe plus — et les appliquer sans comprendre cette hypothèse vous coûtera des années.

---
*Conseil : Pour un journalisme sérieux destiné à ce public, l'Option 2 travaille le plus fort : la statistique précise signale la rigueur et construit la confiance avant de formuler l'argument plus large. L'Option 1 est la plus forte si le ton penche vers l'éditorial ou l'opinion.*

## Limites connues
- Cette compétence ne peut pas vérifier les statistiques. Si vous fournissez un chiffre précis dans votre entrée, elle l'utilisera. Si vous n'en fournissez pas, l'option statistique surprenante peut construire un chiffre plausible qui nécessite une vérification avant le tournage.
- Pour les sujets où la tension centrale est genuinement obscure ou très technique, les accroches peuvent être exactes mais abstraites — fournissez un détail concret de votre recherche pour donner à Claude quelque chose de précis à ancrer.
- Les accroches documentaires bénéficient significativement de la connaissance de la scène ou de l'image d'ouverture. Sans cela, cette compétence génère des accroches uniquement langagières qui peuvent nécessiter une adaptation visuelle.

## Compétences associées
- [seo-title-optimizer](seo-title-optimizer.md) — rédiger le titre après avoir fixé l'angle de l'accroche
- [thumbnail-concept-brief](thumbnail-concept-brief.md) — traduire l'énergie visuelle de l'accroche en direction de miniature
- [full-script-writer](../scripting/full-script-writer.md) — rédiger le script complet une fois l'accroche et le titre confirmés
- [intro-outro-writer](../../podcast/scripting/intro-outro-writer.md) — rédaction d'intro/outro spécifique au podcast
