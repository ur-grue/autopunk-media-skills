---
name: hook-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.78
language: de
tags: [youtube, pre-production, hooks, retention, podcast, documentary]
---

# Hook-Generator

## Was dieser Skill macht
Schreibt drei Einstiegs-Hooks -- einen pro Stil -- für ein YouTube-Video, eine Podcast-Intro oder eine Doku-Eröffnung. Jeder Hook hat 1 bis 3 Sätze und ist sofort einsatzbereit.

## Wann du diesen Skill brauchst
- Du hast ein Video-, Folgen- oder Filmthema und brauchst die ersten 15 bis 30 Sekunden
- Du hast einen Hook-Entwurf, willst aber vor dem Dreh stärkere Alternativen
- Du willst testen, welcher Ansatz die meiste Spannung oder Neugier erzeugt, bevor du dich auf einen Dreh festlegst

## Was du liefern musst
**Pflicht:**
- Thema oder Prämisse in ein bis drei Sätzen -- worum es im Video, in der Folge oder im Film wirklich geht
- Format: YouTube (Langformat oder Shorts), Podcast oder Dokumentarfilm

**Optional:**
- Tonalität: seriöser Journalismus, Wissenschaft populär, Unterhaltung (Standard: Unterhaltung, wenn nicht angegeben)
- Zielgruppe: für wen der Inhalt gedacht ist, in einem Satz (z. B. "Gründer:innen in der Frühphase", "Trü-Crime-Hörer:innen")
- Ein konkretes Faktum, eine Statistik oder eine Szene aus deinem Inhalt, die den Hook verankern könnte

## Wie Claude diese Aufgabe angeht

1. **Findet die zentrale Spannung.** Vor dem Schreiben sucht Claude das überzeugendste Element des Themas -- das kontraintuitive Faktum, das unerwartete Ergebnis, den Einsatz, der das Zuschauen lohnenswert macht. Daraus speisen sich alle drei Hooks.

2. **Schreibt einen Hook pro Stil**, jeder greift die Spannung aus einem anderen Winkel an:
   - **Provokante Frage** -- öffnet eine Wissenslücke, die der Zuschauer schließen muss. Keine rhetorischen Fragen, die sich selbst beantworten. Die Frage muss das Publikum persönlich betreffen.
   - **Überraschende Statistik oder Fakt** -- führt mit einer spezifischen, kontraintuitiven Zahl oder einem Detail. Die Genauigkeit erzeugt Glaubwürdigkeit und Neugier. Keine vagen Superlative.
   - **Gewagte These** -- stellt eine selbstbewusste, leicht kontroverse Behauptung auf, die das Denken des Zuschauers über das Thema neu rahmt. Verdient sich das Vertrauen; prahlt nicht.

3. **Passt das Register an die Tonalität an.** Hooks für seriöosen Journalismus sind sachlich und autorität -- sie bauen Glaubwürdigkeit auf, ohne zu reißen. Populärwissenschaftliche Hooks setzen auf Staunen und Zugänglichkeit. Unterhaltungs-Hooks führen mit Persönlichkeit, Energie oder einer visuellen Provokation. Wenn die Tonalität unklar ist, wählt Claude das gängigste Register für das Format.

4. **Respektiert das Format.** YouTube-Hooks priorisieren visuelle Provokation und Muster-Unterbrechung. Podcast-Hooks funktionieren nur über Sprache und wirken am besten, wenn sie gesprächig und überraschend sind. Doku-Eröffnungen können einen langsameren Aufbau tragen -- eine Orts- oder Zeitangabe gefolgt von einer Wendung.

5. **Empfiehlt den nächsten Schritt.** Nach den Hooks benennt Claude, welchen Hook du zürst drehen oder aufnehmen solltest und welchen verwandten Skill du danach ausführen kannst (seo-title-optimizer für den Titel, thumbnail-concept-brief für die visuelle Energie des Hooks oder full-script-writer für das komplette Skript).

## Ausgabeformat

Drei beschriftete Hook-Optionen. Jeder Hook: 1 bis 3 Sätze, nicht mehr. Kein Vorwort, keine Bewertung, keine Erklärung -- nur die Hooks. Nach den drei Optionen eine Zeile mit praktischer Empfehlung, welcher Stil für das gegebene Format und die Tonalität am besten funktioniert. Die Ausgabe endet mit einer Zeile "Nächster Schritt", die die sofortige Aktion benennt: welchen Hook zürst verwenden und welchen Skill als nächstes ausführen.

```
**Option 1 -- Provokante Frage**
[Hook-Text]

**Option 2 -- Überraschende Statistik**
[Hook-Text]

**Option 3 -- Gewagte These**
[Hook-Text]

---
*Empfehlung: [Ein Satz darüber, welche Option am besten zu diesem Format und dieser Tonalität passt und warum.]*
```

## Qualitätskriterien
- [ ] Jeder Hook öffnet eine Wissenslücke -- der Zuschauer muss tatsächlich dranbleiben, um sie zu schließen
- [ ] Die Option "Überraschende Statistik" nutzt eine konkrete Zahl oder ein spezifisches Detail, keine vage Behauptung
- [ ] Kein Hook benutzt die Phrase "in diesem Video" oder kündigt an, was der Inhalt behandeln wird
- [ ] Die Tonalität passt zum angegebenen Register (Journalismus / Populärwissenschaft / Unterhaltung)
- [ ] Jede Option ist wirklich eigenständig -- keine Umformulierung der anderen
- [ ] Die Ausgabe passt zum Format: YouTube-Prägnanz, Podcast-Gesprächszug oder Doku-Bedächtigkeit
- [ ] Die Empfehlung ist spezifisch und umsetzbar, nicht generisch
- [ ] Die Ausgabe enthält mindestens eine konkrete nächste Aktion (welchen Hook verwenden und was als nächstes tun: drehen, seo-title-optimizer ausführen oder full-script-writer öffnen)

## Beispiel

### Eingabe
**Thema:** Ein YouTube-Langvideo darüber, warum die gängigsten Tipps zur privaten Altersvorsorge für ein Erwerbsmodell geschrieben wurden, das es nicht mehr gibt -- die unbefristete Vollzeitstelle mit Betriebsrente und Beamtenpension.

**Format:** YouTube Langformat (20 bis 25 Minuten)

**Tonalität:** Seriöser Journalismus

**Zielgruppe:** Menschen zwischen 30 und 45, die sich finanziell abgehängt fühlen, obwohl sie alles gemacht haben, was man ihnen geraten hat

### Ausgabe

**Option 1 -- Provokante Frage**
Was, wenn der Grund, warum du dich finanziell abgehängt fühlst, nicht ist, dass du etwas falsch machst -- sondern dass du Ratschläge befolgst, die für ein Arbeitsmarktmodell geschrieben wurden, das es seit Mitte der 90er nicht mehr gibt?

**Option 2 -- Überraschende Statistik**
Das meistzitierte Altersvorsorge-Modell im deutschsprachigen Raum stammt aus einer Zeit, in der 71 Prozent der Beschäftigten eine unbefristete Vollzeitstelle hatten, eine Betriebsrente bekamen und ihren Arbeitgeber nie wechselten. Diese Zeit war vorbei, bevor die meisten von euch ins Berufsleben eingestiegen sind.

**Option 3 -- Gewagte These**
Die Ratschläge zur Altersvorsorge sind nicht kaputt. Sie sind für jemanden optimiert, den es nicht mehr gibt -- und wer sie anwendet, ohne dieses Grundproblem zu verstehen, verliert Jahre.

---
*Empfehlung: Für seriöosen Journalismus mit dieser Zielgruppe arbeitet Option 2 am härtesten: Die konkrete Statistik signalisiert Recherche und baut Vertrauen auf, bevor das größere Argument kommt. Option 1 ist stärker, wenn die Tonalität Richtung Meinungsstück geht.*

## Bekannte Einschränkungen
- Dieser Skill kann Statistiken nicht verifizieren. Wenn du eine konkrete Zahl in deiner Eingabe lieferst, wird sie verwendet. Wenn nicht, kann die Option "Überraschende Statistik" eine plausibel klingende Zahl konstruieren, die vor dem Dreh geprüft werden muss.
- Bei Themen, deren zentrale Spannung wirklich speziell oder hochtechnisch ist, können die Hooks zwar treffend, aber abstrakt ausfallen -- liefere ein konkretes Detail aus deiner Recherche, um Claude etwas Greifbares zu geben.
- Doku-Hooks profitieren stark davon, die Eröffnungsszene oder das Eröffnungsbild zu kennen. Ohne diese Information erzeugt der Skill rein sprachliche Hooks, die visuell angepasst werden müssen.

## Verwandte Skills
- [seo-title-optimizer](seo-title-optimizer.md) -- den Titel schreiben, nachdem der Hook-Winkel steht
- [thumbnail-concept-brief](thumbnail-concept-brief.md) -- die visuelle Energie des Hooks in eine Thumbnail-Richtung übersetzen
- [full-script-writer](../../scripting/full-script-writer.md) -- das komplette Skript schreiben, wenn Hook und Titel stehen
- [intro-outro-writer](../../../podcast/scripting/intro-outro-writer.md) -- Podcast-spezifisches Intro/Outro-Schreiben
