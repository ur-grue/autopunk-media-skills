---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
language: it
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Generatore di Note dell'Episodio

## Cosa fa questa skill
Genera note dell'episodio complete e ottimizzate per la SEO a partire da una trascrizione o un riassunto dell'episodio — inclusa la descrizione dell'episodio, i punti chiave, i timestamp, la bio dell'ospite e la sezione link — pronte per essere incollate nella piattaforma di hosting del podcast.

## Quando usare questa skill
- Il tuo episodio e' pronto per la pubblicazione e ti servono le note scritte prima della messa in onda
- Vuoi una struttura coerente delle note in tutti gli episodi invece di scriverle da zero ogni volta
- Stai recuperando un arretrato di episodi pubblicati senza note adeguate
- Vuoi note che funzionino sia come riferimento utile per l'ascoltatore sia come testo indicizzabile dalla SEO

## Cosa devi fornire
**Obbligatorio:** Titolo dell'episodio; una trascrizione (completa o parziale) oppure un riassunto di 6-10 frasi che copra i principali argomenti trattati
**Facoltativo:** Nome e bio dell'ospite (o bio da includere); link menzionati nell'episodio; informazioni sullo sponsor; account social del programma; link alle piattaforme podcast (Apple Podcasts, Spotify, ecc.) per la sezione standard; se servono i timestamp; parola chiave obiettivo per la SEO

## Come Claude affronta questo compito
1. Scrive il paragrafo di descrizione iniziale (100-150 parole): cosa copre l'episodio, chi e' l'ospite e cosa otterra' l'ascoltatore — con la parola chiave principale che compare naturalmente nella prima frase
2. Estrae 4-6 punti chiave come elenco puntato — gli insight o gli argomenti specifici dell'episodio, non etichette generiche di argomenti
3. Genera i timestamp per i principali cambi di argomento se viene fornita una trascrizione con tempi, oppure annota le sezioni se non sono disponibili timestamp
4. Formatta la bio dell'ospite (se fornita) in un paragrafo pulito, aggiungendo il follow social consigliato e i link al sito web
5. Struttura la sezione link: risorse menzionate, link dell'ospite, profili social del programma, note sugli sponsor
6. Chiude con una riga "Prossimo passo" che consiglia cosa fare con l'output: su quale piattaforma incollarlo, se eseguire prima episode-summary-writer nel caso il contenuto sia scarso, o se transcript-cleanup migliorerebbe il materiale di partenza

## Formato di output
Note dell'episodio complete strutturate con sezioni etichettate: Descrizione dell'episodio, Punti chiave, Momenti salienti (con timestamp se disponibili), Bio dell'ospite, Link e risorse. Lunghezza totale: 350-550 parole piu' sezione link. Scritte per lettori che scorrono: valore in apertura, punti chiave in elenco, formato link pulito. Testo semplice che si incolla senza problemi su qualsiasi piattaforma. L'output termina con una breve nota "Prossimo passo" che specifica l'azione immediata: incollare nella piattaforma di hosting del podcast, aggiungere gli URL reali ai segnaposto dei link, o usare episode-summary-writer se il materiale di partenza era un riassunto invece di una trascrizione completa.

## Criteri di qualita'
- [ ] La descrizione dell'episodio contiene la parola chiave principale in modo naturale nella prima frase
- [ ] I punti chiave sono specifici per questo episodio — non descrizioni generiche di argomenti
- [ ] La sezione bio dell'ospite e' distinta dalla descrizione principale e include almeno un segnaposto per link social
- [ ] La sezione link e' formattata in modo pulito e include la disclosure dello sponsor se applicabile
- [ ] Il testo totale delle note e' inferiore a 600 parole (ottimale per la visualizzazione su piattaforma e la scansione dell'ascoltatore)
- [ ] Nessuna citazione inventata o affermazione dell'episodio non presente nel riassunto o nella trascrizione fornita
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (es.: incollare sulla piattaforma, completare i segnaposto dei link, eseguire transcript-cleanup per un materiale di partenza migliore)

## Esempio

### Input
Titolo dell'episodio: La scienza del sonno che sta cambiando il modo in cui i medici trattano l'insonnia
Ospite: Dott.ssa Valentina Rossi, ricercatrice di medicina del sonno e autrice
Riassunto dell'episodio: La conversazione copre: perche' la TCC-I (terapia cognitivo-comportamentale per l'insonnia) supera i sonniferi nei risultati a lungo termine ma viene prescritta raramente; come il cervello consolida la memoria durante il sonno REM e cosa fa la privazione di sonno a quel processo; i miti dell'igiene del sonno rispetto a cio' che l'evidenza supporta realmente; perche' i disturbi del sonno sono drammaticamente sottodiagnosticati nelle donne; e la ricerca attuale dell'ospite su sonno e rischio di Alzheimer.
Bio dell'ospite: La dott.ssa Valentina Rossi e' ricercatrice di medicina del sonno e autrice di "Il Cervello Riposato". Dirige il laboratorio sonno e cognizione di un'importante universita' di ricerca e consulente per ospedali sui protocolli di trattamento dell'insonnia. Instagram: @valentinarossidoc (fittizio). Sito web: valentinarossi.com (fittizio).
Link: Il suo libro "Il Cervello Riposato", il sito web del suo laboratorio
Parola chiave: TCC-I trattamento insonnia
Timestamp disponibili: No

### Output

**Descrizione dell'episodio**

La TCC-I — terapia cognitivo-comportamentale per l'insonnia — supera costantemente i sonniferi nei trial clinici, ma la maggior parte dei pazienti insonni non ne ha mai sentito parlare. In questo episodio, la ricercatrice di medicina del sonno dott.ssa Valentina Rossi spiega perche', e cosa dice davvero l'evidenza su come dormiamo, perche' facciamo fatica e cosa aiuta genuinamente.

Parliamo della consolidazione della memoria durante il sonno REM, del perche' i disturbi del sonno sono drammaticamente sottodiagnosticati nelle donne, e del crescente corpo di ricerca che collega l'alterazione cronica del sonno al rischio cognitivo a lungo termine. La dott.ssa Rossi analizza anche quali consigli standard di igiene del sonno sono supportati dall'evidenza — e quali no.

---

**Punti chiave**

- La TCC-I produce risultati migliori a lungo termine per l'insonnia rispetto ai farmaci, ma richiede un professionista formato e impiega piu' tempo a funzionare — ecco perche' e' sottoprescritta nonostante l'evidenza
- La privazione di sonno interrompe la consolidazione della memoria a livello neurologico; una sola notte difficile compromette la capacita' del cervello di elaborare e immagazzinare cio' che ha appreso quel giorno
- Le donne ricevono diagnosi di insonnia a tassi piu' bassi degli uomini nonostante riportino sintomi a tassi piu' alti — un divario diagnostico che la dott.ssa Rossi attribuisce in parte a come sono stati storicamente progettati gli studi clinici sul sonno
- L'"igiene del sonno" e' reale ma sopravvalutata; fattori come la temperatura della stanza e la luce contano, ma sono secondari rispetto ai pattern cognitivi e comportamentali affrontati dalla TCC-I
- La ricerca emergente esamina la connessione tra alterazione cronica del sonno e rischio di Alzheimer — un'area che la dott.ssa Rossi definisce "una delle domande piu' importanti nella scienza del sonno in questo momento"

---

**Momenti salienti**

*(Timestamp non disponibili — consulta l'episodio completo per la posizione dei segmenti)*
- Perche' la TCC-I non viene prescritta su larga scala nonostante l'evidenza
- Cosa fa realmente il sonno REM per il cervello
- Il divario di genere nella diagnosi dei disturbi del sonno
- Igiene del sonno: cosa funziona e cosa no
- La frontiera della ricerca su Alzheimer e sonno

---

**La dott.ssa Valentina Rossi**

La dott.ssa Valentina Rossi e' ricercatrice di medicina del sonno e autrice di *Il Cervello Riposato*. Dirige il laboratorio sonno e cognizione di un'importante universita' di ricerca e consulente per ospedali sui protocolli di trattamento dell'insonnia.

Seguila: Instagram @valentinarossidoc | valentinarossi.com

---

**Link e risorse**

- *Il Cervello Riposato* della dott.ssa Valentina Rossi — [link]
- Laboratorio di ricerca della dott.ssa Rossi — [link]
- Iscriviti al programma: [Apple Podcasts] [Spotify]
- Seguici: [account social del programma]

---

## Limitazioni note
- I punti chiave sono tanto specifici quanto la trascrizione o il riassunto che fornisci; un riassunto vago produce punti chiave vaghi — piu' dettaglio dai, piu' utile e' l'output
- I timestamp richiedono una trascrizione con tempi o una temporizzazione approssimativa dei segmenti per essere precisi; senza questi, la skill produce solo etichette di sezione
- Il valore SEO delle note dipende dalla piattaforma; Spotify e Apple indicizzano le note degli episodi in modo diverso, e l'ottimizzazione per una piattaforma non garantisce il rendimento sull'altra
- Questa skill non genera il titolo dell'episodio — fornisci il titolo finito per un allineamento preciso delle parole chiave nella descrizione

## Skill correlate
- [episode-summary-writer](episode-summary-writer.md)
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [transcript-cleanup](transcript-cleanup.md)
