---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
language: de
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Shownotes-Generator

## Was dieser Skill macht
Erzeugt vollständige, SEO-taugliche Podcast-Shownotes aus einem Transkript oder einer Folgenzusammenfassung -- mit Folgenbeschreibung, Kernaussagen, Zeitmarken, Gast-Bio und Links-Bereich -- fertig zum Einfügen in die Podcast-Hosting-Plattform.

## Wann du diesen Skill brauchst
- Deine Folge ist fertig und du brauchst Shownotes vor der Veröffentlichung
- Du willst eine einheitliche Shownotes-Struktur über alle Folgen, statt jedes Mal von null zu schreiben
- Du arbeitest einen Rückstand von Folgen ab, die ohne ordentliche Shownotes veröffentlicht wurden
- Du willst Shownotes, die gleichzeitig als nützliche Referenz für Hörer:innen und als SEO-auffindbarer Text funktionieren

## Was du liefern musst
**Pflicht:** Folgentitel; entweder ein Transkript (ganz oder teilweise) oder eine Folgenzusammenfassung in 6 bis 10 Sätzen, die die besprochenen Hauptthemen abdeckt
**Optional:** Gastname und Bio (oder die einzubindende Bio); im Gespräch erwähnte Links; Sponsor-Informationen; Social-Media-Handles der Show; Podcast-Plattform-Links (Apple Podcasts, Spotify usw.) für den Boilerplate-Bereich; ob Zeitmarken benötigt werden; Ziel-Keyword für SEO

## Wie Claude diese Aufgabe angeht
1. Schreibt den Einleitungsabsatz (100 bis 150 Wörter): was die Folge behandelt, wer der Gast ist und was Hörer:innen mitnehmen -- das primäre Keyword erscheint natürlich im ersten Satz
2. Extrahiert 4 bis 6 Kernaussagen als Aufzählungspunkte -- die konkreten Erkenntnisse oder Argumente aus der Folge, nicht generische Themenbezeichnungen
3. Erzeugt Zeitmarken für größere Themenwechsel, wenn ein Transkript mit Zeitangaben vorliegt, oder benennt die Abschnitte, falls keine Zeitmarken verfügbar sind
4. Formatiert die Gast-Bio (falls geliefert) als sauberen Absatz mit den empfohlenen Social-Media- und Website-Links
5. Strukturiert den Links-Bereich: erwähnte Ressourcen, Gast-Links, Social-Media-Profile der Show, Sponsor-Hinweise
6. Schliesst mit einer "Nächster Schritt"-Zeile, die empfiehlt, was mit der Ausgabe zu tun ist: in welche Plattform einfügen, ob zürst episode-summary-writer ausführen, falls der Inhalt dünn ist, oder ob transcript-cleanup das Quellmaterial verbessern würde

## Ausgabeformat
Vollständige Shownotes mit beschrifteten Abschnitten: Folgenbeschreibung, Kernaussagen, Folgen-Highlights (mit Zeitmarken falls verfügbar), Gast-Bio, Links & Ressourcen. Gesamtlänge: 350 bis 550 Wörter plus Links-Bereich. Geschrieben für Querleser:innen: Wert vorne, Kernaussagen als Aufzählung, saubere Link-Formatierung. Klartext, der sich in jede Plattform sauber einfügen lässt. Die Ausgabe endet mit einer kurzen "Nächster Schritt"-Notiz, die die sofortige Aktion benennt: in Podcast-Host einfügen, echte URLs in die Link-Platzhalter einsetzen oder episode-summary-writer nutzen, falls das Quellmaterial eine Zusammenfassung statt eines vollen Transkripts war.

## Qualitätskriterien
- [ ] Die Folgenbeschreibung enthält das primäre Keyword natürlich im ersten Satz
- [ ] Die Kernaussagen sind spezifisch für diese Folge -- keine generischen Themenbeschreibungen
- [ ] Der Gast-Bio-Bereich ist von der Hauptbeschreibung getrennt und enthält mindestens einen Social-Link-Platzhalter
- [ ] Der Links-Bereich ist sauber formatiert und enthält Sponsor-Offenlegung falls zutreffend
- [ ] Der gesamte Shownotes-Text bleibt unter 600 Wörtern (optimal für Plattformanzeige und Scannen durch Hörer:innen)
- [ ] Keine erfundenen Zitate oder Behauptungen aus der Folge, die nicht in der gelieferten Zusammenfassung oder im Transkript stehen
- [ ] Die Ausgabe enthält mindestens eine konkrete nächste Aktion (in Plattform einfügen, Link-Platzhalter ausfüllen oder transcript-cleanup für besseres Quellmaterial ausführen)

## Beispiel

### Eingabe
Folgentitel: Die Schlafforschung, die verändert, wie Aerzt:innen Schlaflosigkeit behandeln
Gast: Dr. Sarah Lindemann, Schlafmedizinerin und Buchautorin
Folgenzusammenfassung: Das Gespräch behandelt: warum KVT-I (Kognitive Verhaltenstherapie bei Insomnie) in Langzeitergebnissen Schlafmedikamente übertrifft, aber selten verschrieben wird; wie das Gehirn während des REM-Schlafs Erinnerungen konsolidiert und was Schlafentzug mit diesem Prozess anstellt; praktische Schlafhygiene-Mythen versus was die Evidenz tatsächlich stützt; warum Schlafstörungen bei Fraün dramatisch unterdiagnostiziert sind; und die aktuelle Forschung der Gästin zum Zusammenhang zwischen Schlaf und Alzheimer-Risiko.
Gast-Bio: Dr. Sarah Lindemann ist Schlafmedizinerin und Autorin von "Das ausgeruhte Gehirn". Sie leitet das Labor für Schlaf und Kognition an einer großen Forschungsuniversität und berät Kliniken zu Insomnie-Behandlungsprotokollen. Instagram: @sarahlindemann (fiktiv). Website: sarahlindemann.de (fiktiv).
Links: Ihr Buch "Das ausgeruhte Gehirn", die Website ihres Labors
Keyword: KVT-I Insomnie Behandlung
Zeitmarken verfügbar: Nein

### Ausgabe

**Folgenbeschreibung**

KVT-I -- Kognitive Verhaltenstherapie bei Insomnie -- übertrifft Schlafmedikamente in klinischen Studien durchgehend, aber die meisten Patient:innen mit Schlaflosigkeit erfahren nie davon. In dieser Folge erklärt Schlafmedizinerin Dr. Sarah Lindemann, warum das so ist, und was die Evidenz tatsächlich über unser Schlafen, unsere Probleme damit und wirksame Hilfe sagt.

Wir sprechen über Gedächtniskonsolidierung im REM-Schlaf, warum Schlafstörungen bei Fraün dramatisch unterdiagnostiziert sind und die wachsende Studienlage zum Zusammenhang zwischen chronischer Schlafunterbrechung und kognitivem Langzeitrisiko. Dr. Lindemann erklärt außerdem, welche gängigen Schlafhygiene-Ratschläge evidenzbasiert sind -- und welche nicht.

---

**Kernaussagen**

- KVT-I liefert bessere Langzeitergebnisse bei Insomnie als Medikamente, erfordert aber geschulte Therapeut:innen und wirkt langsamer -- deshalb wird sie trotz der Evidenz zu wenig verschrieben
- Schlafentzug stört die Gedächtniskonsolidierung auf neurologischer Ebene; eine einzige schlechte Nacht beeinträchtigt die Fähigkeit des Gehirns, Gelerntes zu verarbeiten und zu speichern
- Fraün werden seltener mit Insomnie diagnostiziert als Männer, obwohl sie häufiger Symptome berichten -- eine diagnostische Lücke, die Dr. Lindemann teils auf das historische Design klinischer Schlafstudien zurückführt
- "Schlafhygiene" ist real, aber überbewertet; Faktoren wie Raumtemperatur und Licht spielen eine Rolle, sind aber zweitrangig gegenüber den kognitiven und verhaltensbasierten Mustern, die KVT-I adressiert
- Aktuelle Forschung untersucht den Zusammenhang zwischen chronischer Schlafunterbrechung und Alzheimer-Risiko -- ein Feld, das Dr. Lindemann als "eine der wichtigsten Fragen der Schlafforschung gerade" bezeichnet

---

**Folgen-Highlights**

*(Zeitmarken nicht verfügbar -- bitte die vollständige Folge für Segmentpositionen hören)*
- Warum KVT-I trotz der Evidenz kaum verschrieben wird
- Was REM-Schlaf tatsächlich für das Gehirn tut
- Die Gender-Lücke in der Schlafstörungsdiagnose
- Schlafhygiene: was wirkt und was nicht
- Die Forschungsfront Alzheimer und Schlaf

---

**Über Dr. Sarah Lindemann**

Dr. Sarah Lindemann ist Schlafmedizinerin und Autorin von *Das ausgeruhte Gehirn*. Sie leitet das Labor für Schlaf und Kognition an einer großen Forschungsuniversität und berät Kliniken zu Insomnie-Behandlungsprotokollen.

Folge ihr: Instagram @sarahlindemann | sarahlindemann.de

---

**Links & Ressourcen**

- *Das ausgeruhte Gehirn* von Dr. Sarah Lindemann -- [Link]
- Dr. Lindemanns Forschungslabor -- [Link]
- Abonniere die Show: [Apple Podcasts] [Spotify]
- Folge uns: [Social-Media-Handle der Show]

---

## Bekannte Einschränkungen
- Die Kernaussagen sind nur so spezifisch wie das Transkript oder die Zusammenfassung, die du lieferst; eine vage Folgenzusammenfassung erzeugt vage Kernaussagen -- je mehr Detail du gibst, desto nützlicher die Ausgabe
- Zeitmarken erfordern entweder ein Transkript mit Zeitangaben oder ungefähre Segmentzeiten; ohne das erzeugt der Skill nur Abschnittsbezeichnungen
- Der SEO-Wert von Shownotes ist plattformabhängig; Spotify und Apple Podcasts indexieren Shownotes unterschiedlich, und eine Optimierung für die eine Plattform garantiert keine Performance auf der anderen
- Dieser Skill erzeugt nicht den Folgentitel -- liefere den fertigen Titel für eine präzise Keyword-Abstimmung in der Beschreibung

## Verwandte Skills
- [episode-summary-writer](../episode-summary-writer.md)
- [guest-research-brief](../../pre-production/guest-research-brief.md)
- [transcript-cleanup](../transcript-cleanup.md)
