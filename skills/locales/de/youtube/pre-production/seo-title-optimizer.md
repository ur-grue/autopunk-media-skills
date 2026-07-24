---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
language: de
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# SEO-Titel-Optimierer

## Was dieser Skill macht
Erzeugt 8 bis 10 suchoptimierte YouTube-Titelvorschläge für ein gegebenes Videothema, sortiert nach Klickpotenzial und Auffindbarkeit.

## Wann du diesen Skill brauchst
- Dein Video ist fertig oder fast fertig und braucht vor der Veröffentlichung einen Titel
- Du planst ein Video und willst die Suchnachfrage über Titelvarianten prüfen
- Dein aktueller Titel performt schlecht und du willst A/B-Test-Alternativen
- Du baust einen Redaktionsplan und brauchst Arbeitstitel für kommende Videos

## Was du liefern musst
**Pflicht:** Videothema oder Arbeitstitel; Zielgruppe (wer schaut diesen Kanal); Hauptziel des Videos (informieren, unterhalten, Tutorial, Meinung, Review)
**Optional:** Kanal-Nische und Tonalität (locker, lehrreich, journalistisch); 2 bis 3 Wettbewerber-Titel zum selben Thema; gewünschte Videolänge oder Format; Keywords, für die du bereits rankst

## Wie Claude diese Aufgabe angeht
1. Identifiziert die zentrale Suchabsicht hinter dem Thema -- welche konkrete Frage oder welches Bedürfnis jemanden dazu bringt, nach diesem Video zu suchen
2. Extrahiert 3 bis 5 wertvolle Keywords und Phrasen, die der tatsächlichen Suchweise der Zielgruppe entsprechen, inklusive Long-Tail-Varianten
3. Erzeugt Titel über mehrere bewährte YouTube-Titelstrukturen: Listicle, How-to, Frage, "Warum/Was/Wie"-Erklärformat, Neugier-Lücke und Wertversprechen
4. Filtert nach Zeichenlänge (unter 60 Zeichen bevorzugt für vollständige Anzeige auf den meisten Geräten), platziert das stärkste Keyword vorne und vermeidet Clickbait, der die Absprungrate erhöhen würde
5. Ordnet die Optionen nach geschätztem Klickpotenzial und versieht jede mit einer einzeiligen Begründung

## Ausgabeformat
Eine nummerierte Liste mit 8 bis 10 Titeln. Jeder Titel gefolgt von einer Klammerbemerkung, die den strukturellen Ansatz und das primäre Keyword erklärt. Titel sortiert von höchstem zu niedrigstem geschätztem Klickpotenzial. Gesamtlänge: unter 400 Wörter. Klartext, keine Markdown-Überschriften innerhalb der Ausgabe.

## Qualitätskriterien
- [ ] Jeder Titel enthält mindestens ein konkretes Keyword, nicht nur abstrakte Beschreibungen
- [ ] Die Titel decken mindestens 4 verschiedene Strukturformate ab (Liste, How-to, Frage, Aussage)
- [ ] Kein Titel überschreitet 70 Zeichen
- [ ] Der erstplatzierte Titel setzt das primäre Keyword innerhalb der ersten 4 Wörter
- [ ] Mindestens zwei Titel zielen auf Long-Tail-Suchanfragen
- [ ] Kein Titel enthält irreführende Superlative, die nicht belegt werden können

## Beispiel

### Eingabe
Thema: Wie du eine Morgenroutine aufbaust, die tatsächlich hält
Zielgruppe: Produktivitätsbewusste Erwachsene, 25 bis 40, die schon Morgenroutinen ausprobiert und wieder aufgegeben haben
Ziel: Tutorial/Ratgeber
Kanal-Tonalität: Direkt, praktisch, kein Füllmaterial
Gesichtete Wettbewerber-Titel: "Meine 5-Uhr-Morgenroutine", "So bin ich zum Frühaufsteher geworden"

### Ausgabe
1. **Morgenroutine aufbauen, die wirklich hält** (Direktes How-to; Keyword: "Morgenroutine"; trifft die exakte Suchabsicht frustrierter Wiedereinsteiger:innen)
2. **Warum deine Morgenroutine immer scheitert (und wie du es änderst)** (Problem-Lösung; greift die Frustration auf; starke Neugier-Lücke)
3. **Morgenroutine, die du nicht nach 3 Tagen aufgibst** (Spezifik + Schmerzpunkt; Long-Tail für "Morgenroutine aufgegeben"-Suchen)
4. **Morgenroutine für Leute, die Morgenroutinen hassen** (Kontraintuitiver Hook; spricht die Kernidentität der Zielgruppe direkt an)
5. **Das einzige Morgenroutine-System, das langfristig funktioniert** (Autorität + Versprechen; zielt auf "Morgenroutine die funktioniert"-Suchen)
6. **Hör auf, an Morgenroutinen zu scheitern -- mach stattdessen das** (Imperativ; hohe Dringlichkeit; zielt auf Wiederholungssucher:innen)
7. **Wie ich endlich eine Morgenroutine aufgebaut habe, die blieb** (Persönlicher Erfahrungsbericht; "endlich" zielt auf Langzeit-Suchende)
8. **Morgenroutine-Gewohnheiten, die bleiben (kein 5-Uhr-Wecker nötig)** (Einwand-Entkräftung; "kein 5-Uhr-Wecker" differenziert von Wettbewerbern)
9. **Was dir niemand über Morgenroutinen sagt** (Neugier-Lücke; zielt auf Leute, die den Standardratgeber kennen)
10. **Morgenroutine aufbauen -- die Schritt-für-Schritt-Anleitung** (SEO-Anker-Titel; zielt auf strukturierte Long-Tail-Tutorial-Suchen)

**Empfohlen:** Option 1 für die Erstveröffentlichung; Option 2 als A/B-Test-Kandidat.

## Bekannte Einschränkungen
- Die Wirksamkeit eines Titels hängt stark vom Thumbnail ab -- ein guter Titel mit einem schwachen Thumbnail wird trotzdem schlecht performen; nutze diesen Skill zusammen mit thumbnail-concept-brief
- Claude hat keinen Zugriff auf aktuelle YouTube-Suchvolumen-Daten; Keyword-Vorschläge basieren auf strukturellen Mustern, nicht auf Echtzeit-Analytik
- Nischen-Kanäle mit sehr spezifischer Zielgruppe (z. B. Fach-Subthemen) brauchen möglicherweise zusätzlichen Fachkontext für präzise Keyword-Auswahl
- Suchoptimierte Titel können die Markenstimme aufweichen; Creator:innen mit etablierter Tonalität sollten entsprechend filtern

## Verwandte Skills
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../../post-production/description-seo-writer.md)
