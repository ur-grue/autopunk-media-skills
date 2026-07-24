---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
language: de
tags: [documentary, scripting, interview, questions, subject-research]
---

# Interview-Fragen-Generator

## Was dieser Skill macht
Erzeugt einen gezielten, strukturierten Interviewfragen-Satz für eine bestimmte Dokumentarfilm-Protagonistin oder einen bestimmten Protagonisten -- geordnet nach erzählerischer Funktion, von eröffnenden Aufwärmfragen bis zu den anspruchsvollsten oder aufschlussreichsten Fragen.

## Wann du diesen Skill brauchst
- Du bereitest ein Doku-Interview vor und willst Fragen, die über das hinausgehen, was Recherche allein erzeugt
- Du hast Hintergrundwissen über eine Person, brauchst aber eine vollständige Fragenabfolge, die auf Kamerafluss ausgelegt ist
- Du willst Fragen, die brauchbare, emotionale und spezifische Antworten erzeugen -- statt vorbereiteter Statements
- Du brauchst Fragen, die so aufgebaut sind, dass die Person ihre Geschichte erzählt, statt einen Fragebogen abzuarbeiten

## Was du liefern musst
**Pflicht:** Wer die Person ist und welche Rolle sie im Film spielt; der redaktionelle Winkel (was der Film durch dieses Interview verstehen will); 3 bis 5 Kernfakten über die Person, die bereits bekannt sind
**Optional:** Worüber die Person voraussichtlich zurückhaltend sein wird; konkrete Szenen oder Sequenzen, die das Interview stützen muss (z. B. "wir brauchen, dass sie den Moment beschreibt, als sie die Entscheidung getroffen hat"); Tonalität des Films; ob es ein beobachtender Film ist, in dem das Interview das primäre Erzälmittel ist, oder ein Dokumentarfilm mit getrenntem Verite-Material

## Wie Claude diese Aufgabe angeht
1. Identifiziert die erzählerische Arbeit, die dieses konkrete Interview im Film leisten muss -- was nur diese Person liefern kann, was kein anderes Element des Films liefert
2. Eröffnet den Fragensatz mit 3 bis 4 Aufwärmfragen: offene biografische Fragen, die der Person helfen, vor der Kamera ihre Stimme zu finden, und die unerwarteten Kontext liefern können
3. Entwickelt den inhaltlichen Mittelteil: 10 bis 15 Fragen, die von Sachlichem über Reflexives zu persönlich Enthülllendem fortschreiten, wobei jede auf die natürliche Antwort aufbaut, die die vorherige Frage einlädt
4. Schliesst mit den schwierigen oder hochsensiblen Fragen -- so platziert, dass sie nach dem Aufbau von Vertrauen kommen, nicht am Anfang
5. Ergänzt Produktionshinweise: welche Fragen am ehesten brauchbare Soundbites liefern, welche eine Nachfrage-Stille brauchen könnten und welche bei Zeitmangel gestrichen werden können
6. Gibt nach dem Fragensatz eine "Nächster Schritt"-Notiz: die drei wichtigsten Fragen bei Zeitmangel, was vor dem Dreh vorbereitet werden muss (Einverständniserklärungen, zusätzliche Recherche) und ob scene-breakdown-writer für die visuelle Planung um das Interview herum laufen sollte

## Ausgabeformat
Nummerierte Fragenliste, gegliedert in drei beschriftete Abschnitte: Eröffnung (3 bis 4 Fragen), Inhaltlicher Teil (10 bis 15 Fragen) und Hochsensible Fragen (3 bis 5 Fragen). Jedem Abschnitt geht ein einabsätziger Regiebemerkung voraus, die den Zweck des Abschnitts erklärt. Produktionshinweise bei 3 bis 4 Fragen im Verlauf. Gesamt: 20 bis 25 Fragen. 500 bis 700 Wörter. Die Ausgabe endet mit einer "Nächster Schritt"-Notiz: die drei Fragen, die bei Zeitmangel Priorität haben, was vor dem Dreh vorbereitet sein muss, und ob scene-breakdown-writer für die visuelle Abdeckung um das Interview herum laufen sollte.

## Qualitätskriterien
- [ ] Keine Frage lässt sich mit "Ja" oder "Nein" beantworten -- alle Fragen sind offen
- [ ] Die Fragen sind in einfacher Gesprächssprache formuliert -- nicht im Ton eines formellen Interviews oder Fragebogens
- [ ] Mindestens zwei Fragen bitten die Person, einen konkreten Moment oder eine Szene zu beschreiben, nicht eine allgemeine Erfahrung
- [ ] Die Abfolge bewegt sich von sicherem zu sensiblem Terrain -- hochsensible Fragen tauchen nicht im ersten Abschnitt auf
- [ ] Produktionshinweise markieren, welche Fragen für die redaktionellen Bedürfnisse des Films am wichtigsten sind
- [ ] Keine Frage enthält eine eingebettete Annahme, der die Person zustimmen muss, um antworten zu können
- [ ] Die Ausgabe enthält mindestens eine konkrete nächste Aktion (die drei Must-Ask-Fragen identifizieren, Einverständniserklärungen vorbereiten oder scene-breakdown-writer für die visuelle Planung ausführen)

## Beispiel

### Eingabe
Person: Die aerztliche Direktorin eines Kreiskrankenhauses, die die Entscheidung getroffen hat, elektive Operationen während einer Kapazitätskrise abzusagen -- eine Entscheidung, die öffentlich kritisiert wurde
Rolle im Film: Zentrale institutionelle Protagonistin -- die Person, die die Entscheidung getroffen hat, die der Film untersucht
Redaktioneller Winkel: Der Film untersucht, wie Klinikverwaltungen unter Ressourcenknappheit Entscheidungen treffen und welchen persönlichen Preis institutionelle Verantwortung hat
Bekannte Fakten: Arbeitet seit 22 Jahren in der Klinikverwaltung; wurde in der Lokalpresse öffentlich kritisiert; hat noch nie ein gefilmtes Interview über die konkrete Entscheidung gegeben; gilt als methodisch und bedacht in ihrer Ausdrucksweise
Zurückhaltend bei: Den konkreten internen Gesprächen vor der Entscheidung; ob sie glaubt, die richtige Entscheidung getroffen zu haben

### Ausgabe

**EROEFFNUNG -- Stimme und Welt aufbauen** *(Ziel: Die Person soll sich ins Interview einfinden und ihr Register finden, bevor wir zum Kernmaterial kommen.)*

1. Sie arbeiten seit über zwei Jahrzehnten in der Klinikverwaltung. Was beinhaltet dieser Job eigentlich im Alltag -- nicht die Version aus der Stellenbeschreibung, sondern die, die Sie leben?
2. Nehmen Sie mich zurück an den Anfang in dieser Rolle. Was haben Sie erwartet, und was hat sich als anders herausgestellt?
3. Wenn Sie jemandem, der keine Ahnung hat, wie ein Krankenhaus funktioniert, erklären müssen, was Sie tun -- auf einem Geburtstag, Tischgespräch -- wie erklären Sie es?
4. Was glauben Sie, verstehen die meisten Menschen falsch daran, wie Entscheidungen in einem Krankenhaus getroffen werden?

*(Produktionshinweis: Frage 4 löst oft die offensten Antworten aus. Personen, die sich öffentlich missverstanden fühlen, antworten hier gern ausführlich. Laufen lassen.)*

---

**INHALTLICHER TEIL -- Die Entscheidung und ihr Kontext** *(Ziel: Sich über den Kontext an das konkrete Ereignis heranarbeiten, damit die Person erzählt statt sich zu verteidigen.)*

5. Nehmen Sie mich in diese Phase -- die Wochen vor der Entscheidung. Wie war die betriebliche Lage im Krankenhaus?
6. Wer sass noch mit im Raum, als das besprochen wurde? Was waren deren Rollen?
7. Ab welchem Punkt war Ihnen klar, dass eine Entscheidung getroffen werden muss -- nicht abstrakt, sondern dass es an Ihnen hängen würde?
8. Beschreiben Sie mir die Informationen, die vor Ihnen lagen, als Sie die Entscheidung getroffen haben. Was haben Sie abgewogen?
9. Gab es Optionen, die Sie erwägt und verworfen haben? Welche waren das?
10. Wie lang hat die eigentliche Entscheidung gedauert -- von dem Punkt, wo es ernst wurde, bis zu dem Moment, wo Sie gesagt haben: So machen wir es?
11. Wem haben Sie es zürst gesagt, und wie haben Sie es erklärt?
12. Was haben Sie erwartet, wie das aufgenommen wird?
13. Als die öffentliche Kritik kam -- wie haben Sie davon erfahren? Wo waren Sie?
14. Gibt es etwas an der damaligen Berichterstattung, das Sie für zutreffend halten?

*(Produktionshinweis: Frage 14 ist ein Weichmacher vor der härteren Version. Sie lädt ein, etwas Wahres anzürkennen, bevor gefragt wird, was falsch war.)*

15. Was würden Sie sich wünschen, dass jemand, dessen geplante Operation in der Zeit abgesagt wurde, darüber versteht, wie diese Entscheidung getroffen wurde?

---

**HOCHSENSIBLE FRAGEN -- Bilanz und Reflexion** *(Ziel: Raum schaffen, damit die Person Zweifel, Bedauern oder Überzeugung ausdrücken kann. Das sind die wichtigsten Fragen des Interviews. Nicht hetzen.)*

16. Wenn Sie mehr Informationen gehabt hätten -- mehr Ressourcen, mehr Zeit, eine Option, die Sie nicht hatten -- hätten Sie anders entschieden?
17. Glauben Sie, dass Sie die richtige Entscheidung getroffen haben?

*(Produktionshinweis: Nach Frage 17 still bleiben. Nicht paraphrasieren, nicht retten. Die Antwort, die nach der Pause kommt, ist oft die, die der Film braucht.)*

18. Was kostet Sie diese Entscheidung persönlich? Nicht beruflich -- persönlich.
19. Wenn in 22 Jahren jemand anders in einer Rolle wie Ihrer sitzt und vor etwas Ähnlichem steht -- was soll diese Person wissen?
20. Gibt es etwas an dieser Sache, das Ihnen noch nie jemand gefragt hat und das Sie festhalten wollen?

*(Produktionshinweis: Frage 20 erzeugt häufig die unerwartetste Antwort des gesamten Interviews. Für den Schluss aufheben. Raum geben.)*

---

## Bekannte Einschränkungen
- Die Fragen werden aus den Informationen erzeugt, die du lieferst; je spezifischer dein Briefing zur Person, desto gezielter die Fragen -- ein vages Briefing erzeugt generische Fragen
- Dokumentarische Interviewtechnik variiert stark je nach Regiestil; manche Regisseur:innen bevorzugen minimale Fragen und maximale Stille; passe diesen Fragensatz an deinen Ansatz an, statt ihn mechanisch abzuarbeiten
- Hochsensible Fragen zu rechtlichen oder regulatorischen Themen sollten vor dem Dreh mit dem Rechtsberater des Films abgestimmt werden; manche Fragenlinien können Haftungsrisiken erzeugen
- Dieser Skill berücksichtigt nicht, ob eine Person Rechtsbeistand dabei hat oder gecoacht wurde; passe die Abfolge in Echtzeit an, je nachdem wie zurückhaltend die Person wirkt

## Verwandte Skills
- [scene-breakdown-writer](../scene-breakdown-writer.md)
- [interview-question-builder](../../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../../development/pitch-treatment-writer.md)
