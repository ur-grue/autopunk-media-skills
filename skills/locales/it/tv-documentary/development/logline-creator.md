---
name: logline-creator
status: stable
category: tv-documentary
subcategory: development
version: 1.0
eval_score: 4.5
language: it
tags: [documentary, development, logline, pitching, synopsis]
---

# Creatore di Logline

## Cosa fa questa skill
Elabora da 4 a 6 opzioni di logline precise e convincenti per qualsiasi progetto documentaristico, che vanno da una singola frase a una forma di due frasi, ciascuna con un'enfasi diversa.

## Quando usare questa skill
- Stai preparando un pitch e ti serve una logline prima di poter scrivere un trattamento completo
- La tua logline e' troppo lunga, troppo vaga o non sta arrivando ai commissioning editor o ai finanziatori
- Ti servono versioni diverse per contesti diversi: sottomissione a festival, pitch a broadcaster, comunicato stampa o bio sui social
- Hai un documentario complesso con piu' soggetti e devi trovare la frase unica che lo sostiene

## Cosa devi fornire
**Obbligatorio:** Una descrizione del tuo progetto documentaristico — il soggetto, la storia centrale o l'argomento, e i personaggi o gli eventi chiave al centro
**Facoltativo:** Broadcaster o contesto di festival di riferimento; tono del film (osservativo, polemico, intimo, cinema-verite'); cosa rende questo film diverso dagli altri sullo stesso tema; qualsiasi logline o sinossi esistente che vuoi migliorare

## Come Claude affronta questo compito
1. Identifica la colonna vertebrale drammatica del documentario — non il tema, ma il conflitto, la domanda o la trasformazione specifica che il film seguira' dall'apertura alla risoluzione
2. Individua il soggetto (chi o cosa), la posta in gioco (cosa e' a rischio o in questione) e l'angolo specifico (cosa vede questo film che altri non hanno visto) — i tre componenti strutturali di una logline funzionale
3. Genera variazioni attraverso diverse strutture di logline: la forma guidata dal personaggio ("Un [soggetto] che [situazione] deve [obiettivo] prima che [posta in gioco]"), la forma di dichiarazione tematica, la forma interrogativa, e la forma compressa a due clausole usata nei pitch ai broadcaster
4. Calibra la lunghezza al contesto: una logline da festival ha 25-40 parole; una riga di pitch per broadcaster puo' arrivare a due frasi; una riga stampa/social deve funzionare in meno di 20 parole

## Formato di output
Da 4 a 6 opzioni di logline numerate. Ciascuna e' etichettata con la sua forma strutturale e il contesto previsto (festival, broadcaster, stampa, social). Un'annotazione di una riga segue ciascuna, spiegando l'enfasi o il compromesso specifico realizzato. Lunghezza totale: 250-350 parole.

## Criteri di qualita'
- [ ] Ogni logline identifica il soggetto, la tensione centrale e la posta in gioco
- [ ] Nessuna logline descrive il tema senza l'angolo specifico ("un film sul cambiamento climatico" non funziona; "un film sugli scienziati che hanno predetto la crisi e sono stati ignorati per vent'anni" funziona)
- [ ] L'opzione piu' corta ha meno di 25 parole e funziona come riga di pitch autonoma
- [ ] Almeno un'opzione e' calibrata per un pitch a broadcaster (puo' essere di due frasi)
- [ ] Nessuna logline contiene gergo, dettagli di produzione o linguaggio tecnico
- [ ] Nessuna delle opzioni e' intercambiabile — ciascuna enfatizza un aspetto diverso del film

## Esempio

### Input
Descrizione del progetto: Un documentario che segue un'ex revisore dei conti di enti pubblici che, a settant'anni, ha iniziato a investigare le frodi finanziarie nelle aziende municipalizzate dell'acqua in tre regioni. In cinque anni, ha identificato 14 casi di peculato che hanno colpito piccoli comuni. Diversi casi hanno portato a procedimenti giudiziari. Non ha alcuna autorita' formale e lavora completamente da sola. Il film e' osservativo, segue le sue indagini in corso.
Contesto broadcaster: Canale documentaristico di un importante broadcaster pubblico, serio ma accessibile
Serve anche una riga stampa/social

### Output

1. **La forma guidata dal personaggio** *(pitch a broadcaster)*
"Lavorando da sola e senza autorita' legale, un'ex revisore dei conti settantenne da cinque anni indaga sulle frodi finanziarie nelle aziende municipalizzate dell'acqua di piccoli comuni — e i magistrati continuano a richiamarla."
*(Enfasi: la sua agency e il paradosso della validazione istituzionale. Forte per contesto broadcaster.)*

2. **La forma interrogativa** *(sottomissione a festival)*
"Chi controlla chi gestisce l'acqua che bevi? In tre regioni, la risposta e' stata una revisore dei conti in pensione con un foglio di calcolo e la convinzione che la frode si possa sempre trovare."
*(Enfasi: la domanda sistemica dietro la storia personale.)*

3. **La forma tematica** *(comunicato stampa)*
"Un ritratto della convinzione di una donna che le risorse pubbliche appartengono al pubblico — e dell'indagine di cinque anni che le ha dato ragione quattordici volte."
*(Enfasi: l'argomento morale. Funziona bene nei contesti editoriali.)*

4. **La forma compressa a due clausole** *(riga unica per broadcaster)*
"Un'ex revisore dei conti indaga sui peculati nelle aziende municipalizzate dell'acqua — dall'interno della propria automobile, senza autorita' legale, e con un tasso di rinvio a giudizio del 100%."
*(Enfasi: l'assurdo produttivo della situazione. Il "tasso di rinvio a giudizio del 100%" e' il gancio.)*

5. **La riga stampa/social** *(meno di 20 parole)*
"Una donna. Nessuna autorita'. Quattordici rinvii a giudizio. Un documentario su cosa un'ex revisore dei conti ha trovato nelle bollette dell'acqua dei piccoli comuni."
*(Enfasi: incisivita'; funziona come didascalia di una card social o frase di apertura di un comunicato stampa.)*

6. **La forma lunga da festival** *(due frasi, meno di 50 parole)*
"Dopo una carriera nella revisione contabile del settore pubblico, Margherita ha deciso che le frodi che continuava a leggere negli scandali delle piccole aziende dell'acqua erano individuabili. Cinque anni, tre regioni e quattordici casi dopo, nessuno e' riuscito a dimostrare che avesse torto."
*(Enfasi: arco personale e traiettoria. Forte per festival documentaristici.)*

## Limitazioni note
- Le logline sono tanto specifiche quanto la descrizione del progetto che fornisci — se il concept documentaristico e' ancora poco sviluppato, le logline esporranno quel problema invece di risolverlo
- Una logline non puo' sostituire un trattamento completo; i commissioning editor e i finanziatori necessiteranno di contesto di supporto; usa questa skill insieme a pitch-treatment-writer
- Per progetti genuinamente multi-filone o multi-soggetto (tre protagonisti separati senza narrativa condivisa), una singola logline puo' essere impossibile; in questo caso, Claude segналеra' il problema strutturale e suggerira' approcci alternativi

## Skill correlate
- [pitch-treatment-writer](pitch-treatment-writer.md)
- [festival-synopsis-writer](../localization/festival-synopsis-writer.md)
- [series-bible-generator](series-bible-generator.md)
