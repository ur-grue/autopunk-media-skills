---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
language: de
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Social-Media-Auszug

## Was dieser Skill macht
Extrahiert die teilbarste Passage oder das stärkste Argument aus einem veröffentlichten Artikel und formatiert es als plattformspezifische Social-Media-Posts -- ohne den Journalismus umzuschreiben.

## Wann du diesen Skill brauchst
- Dein Artikel ist veröffentlicht und du brauchst postfertigen Social-Content, der Traffic bringt oder die Marke stärkt
- Du willst einen Paywall-Artikel in Social Media anteasern, ohne die Kernerkenntnisse zu verraten
- Du verwandest ein Langform-Feature über einen Social-Media-Kalender in mehrere eigenständige Posts
- Du willst, dass der Auszug nach dem Artikel klingt -- nicht nach Marketing

## Was du liefern musst
**Pflicht:** Vollständiger Artikeltext oder ein substanzieller Auszug (mindestens 400 Wörter); Plattformen, für die formatiert werden soll (X/Twitter, Instagram, LinkedIn oder alle drei)
**Optional:** Publikations-Handle/-Username für die Zuordnung; konkrete Passage, die du für die teilbarste hältst; Tonanweisung (Thread-/Kommentar-Stil vs. Zitatkarten-Stil vs. direkter Auszug); ob ein Link und Lese-Aufforderung eingefügt werden soll; Paywall-Status

## Wie Claude diese Aufgabe angeht
1. Liest den gesamten Artikel und identifiziert 2 bis 3 Kandidaten für Auszüge: den packendsten Satz oder die stärkste Statistik, das beste Quellenzitat und die kontraintuitivste oder überraschendste Behauptung des Artikels
2. Formatiert den Auszug für jede Plattform passend zu deren natürlichem Register und Zeichenkonventionen -- nicht einfach Kürzung, sondern strukturelle Anpassung
3. Für X/Twitter: ein 240-Zeichen-Einstiegspost, der allein funktioniert, optional gefolgt von einer 2- bis 3-Tweet-Thread-Fortsetzung
4. Für LinkedIn: ein etwas längerer Kontext-Rahmen vor dem Auszug, abgeschlossen mit einem beruflichen Takeaway
5. Für Instagram: ein Zitatkarten-Format mit einer Caption, die den Gedanken weiterführt
6. Bewahrt die Stimme des Artikels -- diese Posts sollen nach Journalismus klingen, nicht nach Werbung dafür
7. Schliesst mit einer "Nächster Schritt"-Notiz: welchen Post zürst veröffentlichen, ob den Thread zeitlich staffeln oder alle Plattformen gleichzeitig bespielen, und ob thumbnail-concept-brief laufen soll, um ein passendes Bild für die Instagram-Zitatkarte zu erstellen

## Ausgabeformat
Blöcke je Plattform, klar beschriftet. Jeder Block enthält den Post-Text, einen Hinweis zur Zeichenlänge und eine einzeilige Nutzungsempfehlung. Zitatkarten-Text (für Instagram) ist klar von der Caption getrennt. Gesamtlänge: 350 bis 500 Wörter je nach angefragten Plattformen. Durchgehend Klartext -- kein HTML. Die Ausgabe endet mit einer "Nächster Schritt"-Notiz: auf welcher Plattform zürst posten, ob gleichzeitig oder gestaffelt, und ob thumbnail-concept-brief für das Instagram-Bild genutzt werden soll.

## Qualitätskriterien
- [ ] Jeder Auszug stammt aus dem tatsächlichen Artikel -- keine Paraphrase oder redaktionelle Ergänzung, die nicht im Text steht
- [ ] X/Twitter-Post funktioniert als eigenständiger Satz -- man muss nicht den Link klicken, damit er Sinn ergibt
- [ ] LinkedIn-Post enthält eine rahmende Zeile, die beruflichen Kontext liefert, bevor der Auszug kommt
- [ ] Instagram-Zitatkarten-Text hat weniger als 200 Zeichen (lesbar in Thumbnail-Größe)
- [ ] Kein Post übertreibt oder verzerrt die Aussagen des Artikels über das hinaus, was der Text trägt
- [ ] Das Zuordnungsformat entspricht den Konventionen der jeweiligen Plattform
- [ ] Die Ausgabe enthält mindestens eine konkrete nächste Aktion (auf der ersten Plattform posten, den Thread planen oder thumbnail-concept-brief für das Instagram-Bild ausführen)

## Beispiel

### Eingabe
Artikelauszug (aus einem Recherche-Feature zur Schlafforschung):

*"Der gängige Ratschlag zum Schlaf lautet seit Jahrzehnten: acht Stunden. Aber die Studienlage hinter dieser Zahl ist wackliger, als die meisten ahnen. Mehrere Gross-Studien aus den 2010er-Jahren ergaben, dass Erwachsene, die genau acht Stunden schliefen, weder länger lebten noch bei kognitiven Tests besser abschnitten als solche mit sechseinhalb oder sieben Stunden. Was die Forschung tatsächlich zeigt, ist keine optimale Zahl, sondern ein Korridor -- und dessen untere Grenze liegt für die meisten gesunden Erwachsenen näher bei sechs Stunden als bei acht.*

*'Wir haben den Leuten eine Zahl verkauft statt eines Prinzips', sagt Dr. Elena Berger, Schlafforscherin an einer süddeutschen Universität, die an keiner der kommerziellen Studien beteiligt war. 'Das Prinzip lautet: Schlaf, bis du dich erholt fühlst. Die Zahl ist eine Marketing-Vereinfachung.'"*

Plattformen: X/Twitter, LinkedIn, Instagram
Publikations-Handle: @dasmagazin (fiktiv)
Paywall: Ja

### Ausgabe

---

**X / Twitter**

Post: *"'Wir haben den Leuten eine Zahl verkauft statt eines Prinzips. Das Prinzip lautet: Schlaf, bis du dich erholt fühlst. Die Zahl ist eine Marketing-Vereinfachung.'"* -- Schlafforscherin über die Acht-Stunden-Regel. [@dasmagazin, Link im Profil -- Abo-Artikel]

*(238 Zeichen mit Zuordnung. Funktioniert als eigenständiges Zitat. Paywall mit "Abo-Artikel" kenntlich gemacht.)*

**Optionale Thread-Fortsetzung:**
2/ Die Studienlage ist komplizierter als der Ratschlag. Gross-Studien aus den 2010er-Jahren fanden keinen Vorteil bei Mortalität oder kognitiver Leistung für Leute, die genau 8 Stunden schliefen -- gegenüber 6,5 bis 7 Stunden. Die Wissenschaft zeigt einen Korridor, keine Zahl.
3/ Das ganze Stück am Link -- lohnt sich, wenn du dich je für weniger als acht Stunden schuldig gefühlt hast.

---

**LinkedIn**

Der Schlafratschlag wiederholt seit Jahrzehnten dieselbe Zahl -- acht Stunden. Die Studienlage dahinter ist strittiger, als die meisten wissen.

*"Wir haben den Leuten eine Zahl verkauft statt eines Prinzips. Das Prinzip lautet: Schlaf, bis du dich erholt fühlst. Die Zahl ist eine Marketing-Vereinfachung."*

Das sagt eine Schlafforscherin in einem neuen Recherche-Feature darüber, was die Wissenschaft tatsächlich zeigt -- und warum der Konsens komplizierter ist als die Schlagzeile. Relevant für alle, die den eigenen Tagesrhythmus steuern, das Wohlbefinden ihres Teams im Blick haben oder betriebliche Gesundheitsnormen hinterfragen.

[Link] (Abo-Artikel -- @dasmagazin)

*(~175 Wörter. Kontext-Rahmung. Beruflicher Relevanz-Winkel. Zuordnung und Paywall-Hinweis enthalten.)*

---

**Instagram**

*Zitatkarten-Text (unter 200 Zeichen):*
"Wir haben den Leuten eine Zahl verkauft statt eines Prinzips. Das Prinzip: Schlaf, bis du dich erholt fühlst."
-- Schlafforscherin, @dasmagazin

*Caption:*
Acht Stunden. Die Zahl, die jeder kennt. Aber woher kommt sie -- und stützt die Forschung sie wirklich? Ein neues Recherche-Feature zerlegt die Studienlage. Link im Profil (Abo-Artikel).

---

## Bekannte Einschränkungen
- Dieser Skill extrahiert und formatiert; er erzeugt keine neuen redaktionellen Behauptungen -- wenn der Artikel kein starkes eigenständiges Zitat oder keine packende Statistik enthält, sind die Social-Posts in ihrer Wirkung begrenzt
- Die Performance von Paywall-Artikeln auf Social Media variiert stark nach Plattform und Zielgruppe; LinkedIn übertrifft X bei Paywall-Inhalten oft, weil die Rahmung den beruflichen Wert vermitteln kann, bevor der Klick kommt
- Für Instagram wird der visuelle Kontext (das Bild oder die Grafik neben der Zitatkarte) hier nicht behandelt -- nutze thumbnail-concept-brief oder die Art-Direction-Skills für visuelle Assets
- Die Passagen-Auswahl ist subjektiv; wenn du eine bestimmte Stelle im Sinn hast, liefere sie mit -- Claudes Auswahl muss nicht mit dem redaktionellen Urteil übereinstimmen, was am repräsentativsten für das Stück ist

## Verwandte Skills
- [newsletter-teaser-writer](../newsletter-teaser-writer.md)
- [headline-generator](../../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)
