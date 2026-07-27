---
name: press-release-writer
status: stable
category: media-business
subcategory: distribution
version: 1.0
eval_score: 4.4
language: it
tags: [media-business, distribution, press-release, pr, publicity]
---

# Autore di Comunicato Stampa

## Cosa fa questa skill
Scrive un comunicato stampa professionale per annunciare una premiere, una commissione, un premio o una tappa produttiva di un progetto mediatico, formattato per la distribuzione a giornalisti del settore dell'intrattenimento e stampa specializzata.

## Quando usare questa skill
- Un progetto e' stato commissionato, approvato o acquisito e necessita di un annuncio formale
- Un film o una serie ha una premiere a un festival e ti servono materiali stampa pronti per il giorno dell'annuncio
- Un progetto ha vinto un premio o e' stato selezionato per un programma importante
- Una casa di produzione annuncia una nuova partnership importante, coproduzione o accordo di distribuzione
- Un podcast o un canale YouTube lancia una nuova stagione o raggiunge un traguardo

## Cosa devi fornire
**Obbligatorio:** L'annuncio da fare (cosa e' accaduto esattamente), titolo e formato del progetto, nome della casa di produzione, talento chiave coinvolto (regista, presentatore, produttore esecutivo), e il canale o distributore coinvolto se applicabile.

**Facoltativo:** Data di messa in onda o lancio, citazioni del talento o dei dirigenti chiave, breve descrizione o sinossi del progetto, qualsiasi altro contesto (storico dei premi, serie precedenti, background produttivo), data di embargo se applicabile.

## Come Claude affronta questo compito
1. Scrive un titolo che espone la notizia in modo fattuale — chi ha fatto cosa — senza linguaggio promozionale ne' anticipazioni vaghe
2. Apre il corpo con un paragrafo di apertura che consegna le informazioni essenziali (chi, cosa, quando, dove) in 40-60 parole, poi si espande con la descrizione del progetto, le citazioni del talento e il contesto di fondo in ordine decrescente di valore notizia
3. Chiude con una sezione standard Note per i Redattori che copre i precedenti della casa di produzione, il segnaposto dei contatti e qualsiasi dettaglio tecnico rilevante (durata, canale, finestra di lancio)
4. Dopo il corpo del comunicato, fornisce una nota "Prossimo passo" che elenca le tre azioni immediate: completare le citazioni e i contatti mancanti, identificare i destinatari della stampa specializzata da contattare per primi, e fissare la data di distribuzione o l'embargo

## Formato di output
Titolo + corpo + Note per i Redattori. Corpo: 350-500 parole. Formato standard delle agenzie stampa italiane: paragrafi ben separati, citazioni nei propri paragrafi, boilerplate alla fine. Professionale e fattuale ovunque — nessun linguaggio di marketing, nessun punto esclamativo, nessuna affermazione che il giornalista non possa verificare. Tutte le citazioni chiaramente attribuite. Riga di embargo in cima se applicabile. L'output termina con una nota "Prossimo passo" che specifica le azioni immediate prima della distribuzione: sostituire i segnaposto, confermare che le citazioni siano approvate e identificare quali testate specializzate contattare per prime.

## Criteri di qualita'
- [ ] Il titolo espone la notizia in meno di 12 parole, senza superlativi
- [ ] Il paragrafo di apertura risponde a chi, cosa, quando e dove senza che il lettore debba proseguire
- [ ] Almeno una citazione del talento inclusa e chiaramente attribuita
- [ ] La descrizione del progetto e' fattuale, non promozionale
- [ ] Sezione Note per i Redattori presente con precedenti della casa di produzione e segnaposto dei contatti
- [ ] Nessun linguaggio di marketing ("rivoluzionario", "imperdibile", "storico") in alcun punto del testo
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (sostituire i segnaposto di citazioni e contatti, ottenere l'approvazione del talento nominato, identificare le prime testate obiettivo)

## Esempio

### Input
Annuncio: Commissione — una serie documentaria in 3 parti e' stata commissionata da un importante canale televisivo pubblico italiano
Titolo: Il Peso del Silenzio
Formato: Serie documentaria 3 x 52 minuti
Casa di produzione: Nord Film
Regista: Elena Ferrante (nome fittizio)
Produttore esecutivo (lato canale): [nome da inserire]
Canale: Canale pubblico nazionale (Italia)
Tema: La serie segue tre musicisti sordi in tutta Italia mentre navigano le loro carriere in un'industria che non e' stata costruita per loro
Finestra di messa in onda: Autunno 2026
Citazione della regista: "Volevo fare questa serie da otto anni. Questi musicisti hanno cambiato il mio modo di pensare al suono."
Citazione del dirigente del canale: DA CONFERMARE — la inseriro' manualmente

### Output

**PER DIFFUSIONE IMMEDIATA**

---

**IL CANALE PUBBLICO NAZIONALE COMMISSIONA LA SERIE DOCUMENTARIA IN TRE PARTI IL PESO DEL SILENZIO A NORD FILM**

*La serie andra' in onda nell'Autunno 2026; segue tre musicisti sordi che navigano l'industria musicale italiana*

---

Il Canale Pubblico Nazionale ha commissionato IL PESO DEL SILENZIO, una serie documentaria in tre parti prodotta da Nord Film. La serie andra' in onda sul Canale nell'Autunno 2026.

Diretta da Elena Ferrante, IL PESO DEL SILENZIO segue tre musicisti sordi — un percussionista classico, un produttore di musica elettronica e una vocalist jazz — lungo tre anni delle loro carriere in un'industria costruita attorno all'udito. La serie osserva il loro lavoro, le loro relazioni con collaboratori e pubblico, e gli adattamenti, i rifiuti e le invenzioni che hanno realizzato per esercitarsi e esibirsi.

Elena Ferrante ha dichiarato: "Volevo fare questa serie da otto anni. Questi musicisti hanno cambiato il mio modo di pensare al suono."

[Citazione del Produttore Esecutivo del Canale da inserire.]

La serie e' prodotta da Nord Film e il produttore esecutivo sul lato produttivo e' [nome del PE]. Le riprese principali iniziano nella Primavera 2025. Ogni episodio dura 52 minuti.

---

**Note per i Redattori**

**IL PESO DEL SILENZIO**
IL PESO DEL SILENZIO e' una serie documentaria osservativa in 3 parti. 3 x 52 minuti. Commissionata dal Canale Pubblico Nazionale. Prodotta da Nord Film. Messa in onda prevista: Autunno 2026.

**Nord Film**
[Precedenti dell'azienda — due frasi sullo storico dell'azienda e le produzioni precedenti.]

**Contatto stampa**
[Nome]
[E-mail]
[Telefono]

**Immagini**
Le fotografie di produzione in alta risoluzione sono disponibili su richiesta.

## Limitazioni note
- Le citazioni del talento devono essere fornite dall'utente — la skill generera' citazioni segnaposto se non fornite, ma devono essere sostituite con citazioni reali approvate prima della distribuzione. Non inviare mai un comunicato stampa con citazioni inventate.
- La skill formatta secondo le convenzioni della stampa specializzata italiana. La stampa specializzata americana (Deadline, Variety) ha convenzioni di stile leggermente diverse che potrebbero richiedere aggiustamenti manuali minori.
- I comunicati stampa per piattaforme di streaming potrebbero dover seguire i requisiti di template PR propri della piattaforma, che variano da distributore a distributore.

## Skill correlate
- [festival-strategy-brief](festival-strategy-brief.md)
- [distributor-outreach-email](distributor-outreach-email.md)
- [streaming-platform-pitch](streaming-platform-pitch.md)
