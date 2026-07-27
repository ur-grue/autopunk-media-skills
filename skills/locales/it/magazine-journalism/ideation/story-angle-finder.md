---
name: story-angle-finder
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: it
tags: [journalism, ideation, angles, pitching, story-development]
---

# Cercatore di Angolo Editoriale

## Cosa fa questa skill
Genera da 6 a 8 angoli editoriali distinti a partire da un tema ampio o un evento di attualita', ciascuno con una prospettiva unica, un pubblico di riferimento e un approccio giornalistico.

## Quando usare questa skill
- Hai un tema ma non ancora una storia — conosci l'argomento ma non l'angolo specifico che lo rende pubblicabile
- Stai preparando un pitch e hai bisogno di vedere l'intera gamma di angoli prima di decidere quale sviluppare
- Un caporedattore ti ha assegnato una sezione o un tema ampio e devi identificare il punto di ingresso piu' convincente
- Vuoi vedere come lo stesso evento potrebbe essere coperto in modo diverso a seconda del tipo di pubblicazione (notizia, reportage, opinione, profilo)

## Cosa devi fornire
**Obbligatorio:** Il tema ampio, l'area tematica o l'evento di attualita' su cui stai lavorando; tipo di pubblicazione o testata di riferimento (oppure descrivi il tuo pubblico se non c'e' una testata specifica)
**Facoltativo:** Angoli che hai gia' considerato e vuoi evitare; fonti specifiche o dati a cui hai gia' accesso; ambito geografico (locale, nazionale, internazionale); arco temporale (di stretta attualita', evergreen, anniversario); se ti serve una frase di pitch pronta all'uso per ogni angolo

## Come Claude affronta questo compito
1. Identifica almeno sei lenti editoriali distinte attraverso le quali affrontare il tema: la storia personale/umana, l'analisi sistemica/strutturale, la storia basata sui dati, la prospettiva storica, l'approccio controintuitivo o provocatorio, il profilo, e l'esplicativo processo/come-funziona — selezionando i piu' appropriati per il tema
2. Per ogni angolo, specifica la domanda centrale a cui la storia risponderebbe, il tipo principale di giornalismo richiesto (documenti, fonti, dati, osservazione) e la testata piu' probabile per la pubblicazione
3. Segnala quali angoli sono urgenti rispetto a quelli evergreen, e quali richiedono un accesso significativo rispetto alla ricerca documentale
4. Nota dove gli angoli si sovrappongono con la copertura abituale affinche' il giornalista possa differenziare il proprio pitch
5. Chiude con una raccomandazione "Prossimo passo": quali uno o due angoli sviluppare per primi dato l'accesso dell'utente e l'obiettivo di pubblicazione, e se eseguire research-brief-creator o headline-generator come skill immediatamente successiva

## Formato di output
Da 6 a 8 brief di angolo numerati. Ogni brief include: Nome dell'angolo (3-5 parole), Domanda centrale, Approccio giornalistico (2 frasi), Tipo di pubblicazione ideale, e una Frase di pitch (una frase, pronta per essere inserita in un'e-mail di proposta). Lunghezza totale: 500-700 parole. Nessun gergo oltre al vocabolario editoriale standard. L'output termina con una nota "Prossimo passo": quale angolo sviluppare per primo (in base all'accesso e all'adeguatezza della testata), e quale skill eseguire dopo — research-brief-creator per costruire il piano di reportage o headline-generator per affinare la frase di pitch.

## Criteri di qualita'
- [ ] Ogni angolo ha una prospettiva editoriale genuinamente distinta — non solo un inquadramento diverso della stessa storia
- [ ] Ogni angolo include un approccio giornalistico concreto (non solo "intervistare esperti")
- [ ] Almeno un angolo e' controintuitivo o sfida l'inquadramento convenzionale del tema
- [ ] Almeno un angolo e' adatto a un trattamento di lungo formato
- [ ] Le frasi di pitch sono pronte per l'invio — sufficientemente specifiche per reggersi da sole in un'e-mail
- [ ] La distinzione urgente/evergreen e' indicata per ogni angolo
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (quale angolo sviluppare per primo, e quale skill eseguire dopo: research-brief-creator o headline-generator)

## Esempio

### Input
Tema: Il numero crescente di persone che abbandonano le grandi citta' italiane per trasferirsi in citta' di medie dimensioni dal 2020
Tipo di pubblicazione: Rivista di interesse generale nazionale
Evitare: Qualsiasi angolo che in sostanza dica "il lavoro da remoto ha reso tutto questo possibile" (il caporedattore dice che e' gia' stato trattato troppo)

### Output

**1. Il comune che ha ottenuto cio' che desiderava**
*Domanda centrale: Cosa succede alla cultura, ai prezzi e al tessuto sociale di una citta' di medie dimensioni quando arrivano grandi quantita' di migranti urbani?*
*Approccio giornalistico: Reportage immersivo in una citta' specifica che ha avuto una crescita demografica significativa. Intervistare residenti di lungo corso, commercianti locali e i nuovi arrivati.*
*Pubblicazione ideale:* Rivista nazionale, lungo formato
*Frase di pitch:* "In una citta' di medie dimensioni in [regione], la popolazione e' cresciuta del 20% in tre anni. Questa e' una storia su cosa ne pensano i vecchi residenti."
*Arco temporale:* Evergreen

---

**2. Lo scontro delle infrastrutture**
*Domanda centrale: Le infrastrutture delle citta' di medie dimensioni — acqua, scuole, strade, servizi sanitari — possono assorbire la crescita demografica urbana senza il supporto statale?*
*Approccio giornalistico: Documenti pubblici sui bilanci comunali, dati sulle iscrizioni scolastiche, e interviste con amministratori comunali e pianificatori regionali.*
*Pubblicazione ideale:* Reportage di inchiesta, sezione politica
*Frase di pitch:* "Le citta' di medie dimensioni stanno guadagnando residenti piu' velocemente di quanto possano permettersi di servirli — e nessun governo regionale ha un piano."
*Arco temporale:* Evergreen con agganci di attualita' disponibili

---

**3. Le persone che sono tornate**
*Domanda centrale: Tra chi ha lasciato le grandi citta' per le citta' di medie dimensioni, chi e' tornato indietro — e perche'?*
*Approccio giornalistico: Indagine su un campione auto-selezionato di rientrati urbani piu' 4-5 profili approfonditi. Contrasta la narrazione trionfale della migrazione.*
*Pubblicazione ideale:* Reportage di cultura/stile di vita
*Frase di pitch:* "Le storie di persone che si sono trasferite in una citta' di provincia e l'hanno odiata non vengono scritte. Eccone cinque."
*Arco temporale:* Evergreen; angolo controintuitivo

---

**4. Il problema dell'esportazione immobiliare**
*Domanda centrale: Le pressioni del mercato immobiliare urbano si stanno esportando nelle citta' di medie dimensioni, spiazzando i residenti della classe operaia che ci vivevano da prima?*
*Approccio giornalistico: Dati sui prezzi immobiliari, interviste con residenti di lungo corso esclusi dal loro mercato degli affitti, associazioni locali per la casa.*
*Pubblicazione ideale:* Reportage economico/politica sociale o sezione di inchiesta
*Frase di pitch:* "Nelle citta' dove i prezzi delle case sono stati stabili per decenni, l'ondata di migrazione urbana ha creato una nuova crisi di accessibilita' — per le persone che c'erano gia'."
*Arco temporale:* Evergreen con forti opportunita' di angolo locale

---

**5. Il profilo: l'urbanista**
*Domanda centrale: Chi sta gestendo realmente questa transizione — e cosa ne pensa?*
*Approccio giornalistico: Profilo di un singolo soggetto: un sindaco di citta' di medie dimensioni, un pianificatore o un dirigente dello sviluppo economico alle prese con il boom migratorio.*
*Pubblicazione ideale:* Profilo per rivista, supplemento domenicale
*Frase di pitch:* "Ha vissuto in questo comune tutta la vita. In tre anni, e' diventato irriconoscibile — e lei e' quella che tutti chiamano."
*Arco temporale:* Evergreen; forte angolo di interesse umano

---

**6. Il mito della vita piu' semplice**
*Domanda centrale: Trasferirsi in una citta' di medie dimensioni produce davvero il miglioramento della qualita' della vita che la gente si aspetta?*
*Approccio giornalistico: Dati da sondaggi longitudinali se disponibili; interviste con migranti urbani a distanza di 1 anno e 3 anni; focus su salute mentale e soddisfazione di vita.*
*Pubblicazione ideale:* Sezione salute/stile di vita o rivista culturale
*Frase di pitch:* "Gli studi mostrano che la soddisfazione di vita non migliora in modo affidabile dopo un trasferimento importante. Allora perche' la gente continua a lasciare le grandi citta' — e sono piu' felici?"
*Arco temporale:* Evergreen; sfida la narrazione migratoria senza smentirla

---

*Nota: Gli angoli 1, 3 e 5 sono i piu' solidi per una rivista di lungo formato generalista. Gli angoli 2 e 4 si adattano a una sezione di inchiesta o politica. L'angolo 6 e' un pitch solido per una pubblicazione di salute o stile di vita. Nessuno di questi richiede l'approccio del lavoro da remoto che vuoi evitare.*

## Limitazioni note
- Gli angoli sono generati solo a partire dalla descrizione del tema; Claude non ha accesso a banche dati di notizie attuali ne' a cio' che e' stato pubblicato di recente su questo argomento — verifica sempre che un angolo non sia stato trattato di recente prima di proporre un pitch
- La solidita' di qualsiasi angolo dipende dalla disponibilita' delle fonti e dall'accesso; un angolo che richiede reportage immersivo puo' essere inutilizzabile per un giornalista con sede altrove
- Per notizie dell'ultima ora, la valutazione della sensibilita' temporale puo' essere imprecisa senza il contesto degli eventi attuali; fornisci la data e gli sviluppi recenti per una classificazione piu' precisa evergreen/urgente

## Skill correlate
- [headline-generator](headline-generator.md)
- [research-brief-creator](research-brief-creator.md)
- [reportage-structure](../writing/reportage-structure.md)
