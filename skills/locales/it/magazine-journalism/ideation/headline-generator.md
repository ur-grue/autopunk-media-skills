---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: it
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Generatore di Titoli

## Cosa fa questa skill
Genera una serie di opzioni per titoli e sottotitoli in diversi registri, lunghezze e stili editoriali per un articolo o reportage specifico.

## Quando usare questa skill
- Hai un articolo finito o quasi finito e ti servono opzioni di titolo prima di inviarlo al caporedattore
- Sei bloccato su un titolo e vuoi uscire da un unico approccio
- Ti servono titoli calibrati sulla voce di una testata specifica (tabloid, rivista letteraria, stampa specializzata, testata digitale)
- Vuoi un titolo principale con opzioni di sottotitolo per reportage lunghi

## Cosa devi fornire
**Obbligatorio:** Argomento dell'articolo o riassunto di 2-4 frasi; tipo di pubblicazione o pubblico di riferimento (es.: quotidiano nazionale, testata specializzata, rivista letteraria, testata digitale)
**Facoltativo:** Titolo di lavoro esistente da migliorare o usare come riferimento; limite di caratteri; se serve un sottotitolo (occhiello o catenaccio); parole o approcci da evitare; indicazione di tono (serio, provocatorio, ironico, neutro)

## Come Claude affronta questo compito
1. Identifica l'argomento centrale, la rivelazione o il conflitto dell'articolo — l'unica cosa che rende questo testo degno di essere letto — e lo usa come ancora per tutte le opzioni di titolo
2. Genera titoli attraverso approcci strutturali diversi: affermazione dichiarativa, domanda, imperativo, giro ironico, costruzione "X di Y", e il formato nominale pulito usato dalle riviste letterarie e dal giornalismo di approfondimento
3. Calibra il registro in base al tipo di pubblicazione specificato — il vocabolario e la punteggiatura di un tabloid differiscono radicalmente dallo stile di una rivista letteraria; la stampa specializzata segue convenzioni diverse dalla stampa generalista
4. Per ogni titolo principale, scrive un sottotitolo corrispondente che aggiunge il contesto giornalistico che il titolo omette
5. Segnala quali opzioni funzionano meglio in cartaceo rispetto al digitale (i titoli SEO tendono a sacrificare l'eleganza; i titoli per la carta stampata possono concedersi maggiore inventiva)
6. Chiude con una nota "Prossimo passo" di una frase che specifica quale titolo portare avanti, se eseguire social-media-excerpt per adattare il titolo vincente alle piattaforme, e se newsletter-teaser-writer serve per il testo di distribuzione

## Formato di output
Da 6 a 10 opzioni di titolo organizzate in gruppi per registro (es.: "Diretto/Informativo", "Analitico/Letterario", "Provocatorio/Incisivo"). Ogni titolo seguito dal suo sottotitolo. Annotazione di una riga sul registro e il miglior contesto d'uso. Lunghezza totale: 400-600 parole. Nessun markdown oltre al grassetto per il testo dei titoli. L'output termina con una nota "Prossimo passo" che identifica quale gruppo di titoli e' piu' solido per la pubblicazione indicata e cosa fare subito: inviarlo al caporedattore, eseguire newsletter-teaser-writer, o adattare la migliore opzione per i social media.

## Criteri di qualita'
- [ ] I titoli coprono almeno 4 formati strutturali diversi
- [ ] Ogni titolo ha un sottotitolo che aggiunge contesto giornalistico
- [ ] Almeno un'opzione ha meno di 6 parole (funziona in copertina e sui social)
- [ ] Almeno un'opzione tiene conto della SEO (frase nominale chiara con parola chiave in apertura)
- [ ] Nessun titolo fabbrica un'affermazione oltre quanto il riassunto dell'articolo supporta
- [ ] Le annotazioni di registro distinguono correttamente i contesti cartaceo e digitale
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (inviare il titolo al caporedattore, adattarlo per i social con social-media-excerpt, o eseguire newsletter-teaser-writer)

## Esempio

### Input
Riassunto dell'articolo: Un reportage lungo su come piccole citta' in diverse regioni d'Italia stanno cambiando silenziosamente le loro norme urbanistiche per consentire una maggiore densita' abitativa — senza aspettare riforme nazionali. L'articolo presenta tre citta' specifiche, cita funzionari della pianificazione urbanistica e mostra risultati iniziali: gli affitti si sono stabilizzati in una citta' dopo 18 mesi.
Pubblicazione: Rivista di interesse generale nazionale, seria ma accessibile (registro tipo Internazionale o IL del Sole 24 Ore)
Sottotitolo necessario: Si'
Nessun limite di caratteri specificato

### Output

**Registro Diretto / Informativo**

1. **Le citta' che stanno riparando silenziosamente la crisi abitativa**
*Sottotitolo: Mentre il governo nazionale discute, un pugno di citta' italiane sta riscrivendo le proprie norme urbanistiche — e funziona gia'.*
*(Consigliato per: copertina digitale; SEO-friendly; frase nominale chiara)*

2. **La soluzione urbana che nessuno aspettava**
*Sottotitolo: In tre citta' che hanno rifiutato di attendere una riforma nazionale, un cambiamento discreto nel diritto urbanistico sta ottenendo cio' che anni di dibattito politico non hanno raggiunto.*
*(Consigliato per: social media; incisivo, funziona in versione breve)*

---

**Registro Analitico / Letterario**

3. **Una citta' cambia idea sul cortile di casa**
*Sottotitolo: In tutta Italia, un numero piccolo ma crescente di comunita' scommette che abitazioni piu' dense — non nuove strade ne' sussidi statali — siano la risposta all'accessibilita' abitativa.*
*(Consigliato per: reportage cartaceo; evocativo, premia il lettore curioso)*

4. **Come costruire una citta' senza litigarci sopra**
*Sottotitolo: La crisi abitativa e' un dibattito nazionale da decenni. Queste tre citta' hanno smesso di aspettare.*
*(Consigliato per: lungo formato cartaceo o digitale; ironia asciutta, registro intellettuale)*

---

**Registro Provocatorio / Incisivo**

5. **Hanno cambiato tre righe del piano regolatore. Gli affitti hanno smesso di salire.**
*Sottotitolo: Non e' stata una svolta politica. Non e' stato un programma statale. In una citta' di medie dimensioni, ci sono voluti 18 mesi.*
*(Consigliato per: newsletter o social media; la specificita' genera clic; ideale per articoli basati sui dati)*

6. **La soluzione abitativa che non ha bisogno del governo nazionale**
*Sottotitolo: Dimentica il dibattito parlamentare. Nelle citta' dove gli urbanisti hanno riscritto silenziosamente la normativa locale, i primi risultati stanno costringendo a ripensare il modo in cui si costruisce nel Paese.*
*(Consigliato per: sezione di analisi/opinione digitale)*

---

**Copertina / Formato breve**

7. **La riforma dal basso** *(Titolo di copertina; 4 parole; necessita di sottotitolo per dare contesto)*
8. **Le citta' che non hanno aspettato** *(Funziona solo in copertina o card per social media)*

---

*Note: Le opzioni 1 e 5 sono le piu' solide per digitale/SEO. Le opzioni 3 e 4 si adattano al registro letterario di un reportage cartaceo. Se questo testo va in copertina, l'opzione 7 con un sottotitolo e' la forma breve piu' elegante.*

## Limitazioni note
- L'efficacia di un titolo in digitale dipende in parte dal contesto dell'immagine/miniatura che Claude non puo' vedere; alcune opzioni potrebbero necessitare un aggiustamento una volta noto il visual
- Claude non puo' verificare le affermazioni o i dati nel riassunto dell'articolo; i titoli sono accurati solo quanto cio' che fornisci — qualsiasi cifra specifica in un titolo deve essere verificata nel reportage
- I titoli letterari e ironici possono avere un rendimento algoritmico basso sulle piattaforme che privilegiano la corrispondenza diretta delle parole chiave; indica il tuo canale di distribuzione al momento della richiesta

## Skill correlate
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../distribution/social-media-excerpt.md)
