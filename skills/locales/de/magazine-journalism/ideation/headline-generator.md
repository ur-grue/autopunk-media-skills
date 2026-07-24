---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: de
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Schlagzeilen-Generator

## Was dieser Skill macht
Erzeugt eine Bandbreite von Schlagzeilen- und Unterzeilen-Optionen über verschiedene Register, Längen und Publikationsstile für einen gegebenen Artikel oder ein Feature.

## Wann du diesen Skill brauchst
- Dein Artikel ist fertig oder fast fertig und du brauchst Schlagzeilen-Optionen, bevor du ihn bei der Redaktion einreichst
- Du hängst an einer Schlagzeile fest und willst aus einem einzigen Ansatz ausbrechen
- Du brauchst Schlagzeilen, die auf die Stimme einer bestimmten Publikation zugeschnitten sind (Boulevard, Feuilleton, Fachpresse, Online-Medium)
- Du brauchst eine Hauptschlagzeile mit Unterzeilen-Optionen für Langform-Features

## Was du liefern musst
**Pflicht:** Artikelthema oder eine Zusammenfassung des Stücks in 2 bis 4 Sätzen; Publikationstyp oder Zielgruppe (z. B. überregionale Tageszeitung, Fachpublikation, Kulturmagazin, Online-Nachrichtenportal)
**Optional:** Vorhandene Arbeitsschlagzeile als Referenz; Zeichenlimit für die Schlagzeile; ob eine Unterzeile (Dachzeile/Vorspann) benötigt wird; Wörter oder Rahmungen, die vermieden werden sollen; Tonanweisung (seriös, provokant, lakonisch, neutral)

## Wie Claude diese Aufgabe angeht
1. Identifiziert das zentrale Argument, die Enthülling oder den Konflikt des Artikels -- das eine Element, das dieses Stück lesenswert macht -- und nutzt es als Anker für alle Schlagzeilen-Optionen
2. Erzeugt Schlagzeilen über verschiedene Strukturansätze: Aussagesatz, Frage, Imperativ, ironische Wendung, "X-von-Y"-Konstruktion und die knappe Nominalphrase, wie sie in Feuilleton und Langform-Publikationen üblich ist
3. Kalibriert das Register auf den angegebenen Publikationstyp -- Boulevard-Vokabular und -Zeichensetzung unterscheiden sich grundlegend vom Feuilleton-Stil; Fachpresse folgt anderen Konventionen als Verbraucherzeitschriften
4. Schreibt zu jeder Hauptschlagzeile eine passende Unterzeile (Vorspann/Dachzeile), die den journalistischen Kontext ergänzt, den die Hauptzeile ausspart
5. Markiert, welche Optionen am besten für Print oder Digital funktionieren (SEO-optimierte Schlagzeilen opfern oft Eleganz; Print-Schlagzeilen können sich mehr Witz leisten)
6. Schliesst mit einer "Nächster Schritt"-Empfehlung: welche Schlagzeile weiterverfolgen, ob social-media-excerpt für die Plattform-Adaption genutzt werden sollte, und ob newsletter-teaser-writer für den Verteiler benötigt wird

## Ausgabeformat
6 bis 10 Schlagzeilen-Optionen, geordnet in Cluster nach Register (z. B. "Direkt/Nachricht", "Analytisch/Feuilleton", "Provokant/Knapp"). Jede Schlagzeile gefolgt von ihrer Unterzeile. Einzeilige Anmerkung zu Register und Einsatzkontext. Gesamtlänge: 400 bis 600 Wörter. Kein Markdown über Fettschrift für Schlagzeilentexte hinaus. Die Ausgabe endet mit einer "Nächster Schritt"-Notiz, die benennt, welches Schlagzeilen-Cluster für die angegebene Publikation am stärksten ist und was sofort zu tun ist: an die Redaktion senden, newsletter-teaser-writer ausführen oder die beste Option für Social Media adaptieren.

## Qualitätskriterien
- [ ] Die Schlagzeilen decken mindestens 4 verschiedene Strukturformate ab
- [ ] Jede Schlagzeile hat eine passende Unterzeile, die journalistischen Kontext ergänzt
- [ ] Mindestens eine Option hat weniger als 6 Wörter (funktioniert auf Cover und Social Media)
- [ ] Mindestens eine Option ist SEO-bewusst (keyword-geführt, klare Nominalphrase)
- [ ] Keine Schlagzeile erfindet eine Behauptung, die über die Artikelzusammenfassung hinausgeht
- [ ] Die Register-Anmerkungen unterscheiden korrekt zwischen Print- und Digital-Kontext
- [ ] Die Ausgabe enthält mindestens eine konkrete nächste Aktion (Schlagzeile an Redaktion senden, für Social Media adaptieren via social-media-excerpt oder newsletter-teaser-writer ausführen)

## Beispiel

### Eingabe
Artikelzusammenfassung: Eine Langform-Recherche darüber, wie kleine und mittelgroße Städte in Deutschland still ihre Bebauungspläne ändern, um mehr Wohndichte zu ermöglichen -- ohne auf den Bund oder das Land zu warten. Das Stück porträtiert drei Städte, zitiert Stadtplaner:innen und zeigt erste Ergebnisse: In einer Stadt haben sich die Mieten nach 18 Monaten stabilisiert.
Publikation: Überregionales Qualitätsmagazin, seriös aber zugänglich (Register wie ZEIT oder SPIEGEL)
Unterzeile benötigt: Ja
Kein Zeichenlimit angegeben

### Ausgabe

**Direkt / Nachrichtenregister**

1. **Die Städte, die die Wohnungskrise leise lösen**
*Unterzeile: Während Berlin debattiert, schreiben Mittelstädte ihre Bebauungspläne um -- und es funktioniert bereits.*
*(Am besten für: digitale Startseite; SEO-tauglich; klare Nominalphrase)*

2. **Die Bebauungsplan-Lösung, über die niemand spricht**
*Unterzeile: In drei Städten, die nicht auf den Bund gewartet haben, bewirkt eine stille Änderung im Baurecht, was Jahre der Wohnungspolitik nicht geschafft haben.*
*(Am besten für: Social Media; prägnant, funktioniert kurz)*

---

**Analytisch / Feuilleton-Register**

3. **Eine Stadt denkt über ihren Hinterhof nach**
*Unterzeile: In Deutschland wächst eine kleine, aber wachsende Zahl von Kommunen, die darauf setzen, dass dichteres Bauen -- nicht neue Förderprogramme -- die Antwort auf die Bezahlbarkeit ist.*
*(Am besten für: Print-Feature; evokativ, belohnt neugierige Leser:innen)*

4. **Wie man eine Stadt baut, ohne darüber zu streiten**
*Unterzeile: Die Wohnungskrise ist seit Jahrzehnten ein bundespolitisches Thema. Diese drei Städte haben aufgehört zu warten.*
*(Am besten für: Print oder digitales Langformat; trockene Ironie, intellektuelles Register)*

---

**Provokant / Knappes Register**

5. **Sie änderten drei Zeilen im Bebauungsplan. Die Mieten stiegen nicht weiter.**
*Unterzeile: Es war kein großer politischer Durchbruch. Es war kein Bundesprogramm. In einer mittelgroßen Stadt dauerte es 18 Monate.*
*(Am besten für: Newsletter oder Social Media; Spezifik treibt Klicks; stark bei datengetriebenen Stücken)*

6. **Die Wohnungslösung, die keinen Koalitionsvertrag braucht**
*Unterzeile: Vergesst die Bundesdebatte. In Städten, deren Planer:innen leise das Baurecht umschrieben, erzwingen erste Ergebnisse ein Umdenken.*
*(Am besten für: digitale Analyse-/Meinungsrubrik)*

---

**Cover / Kurzform**

7. **Die Hinterhof-Lösung** *(Cover-Zeile; 3 Wörter; braucht Unterzeile für Kontext)*
8. **Die Städte, die nicht mehr warten** *(Funktioniert allein auf Cover oder Social Card)*

---

*Hinweise: Optionen 1 und 5 sind am stärksten für Digital/SEO. Optionen 3 und 4 passen zum Feuilleton-Register eines Print-Features. Wenn das Stück aufs Cover soll, ist Option 7 mit Dachzeile die eleganteste Kurzform.*

## Bekannte Einschränkungen
- Die Wirkung von Schlagzeilen im Digitalen hängt teils vom Thumbnail/Bild ab, das Claude nicht sehen kann; manche Optionen brauchen Anpassung, wenn das Bild feststeht
- Claude kann keine Behauptungen oder Daten in der Artikelzusammenfassung verifizieren; Schlagzeilen sind nur so genau wie das, was du lieferst -- jede konkrete Zahl in einer Schlagzeile (z. B. "18 Monate") muss durch die Recherche gedeckt sein
- Literarische und ironische Schlagzeilen können algorithmisch auf Plattformen schlechter performen, die klares Keyword-Matching priorisieren; nenne deinen Distributionskanal bei der Anfrage

## Verwandte Skills
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../../distribution/social-media-excerpt.md)
