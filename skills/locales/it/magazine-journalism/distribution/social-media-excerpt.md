---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
language: it
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Estratto per Social Media

## Cosa fa questa skill
Estrae e riformatta il passaggio o l'argomento piu' condivisibile di un articolo pubblicato in post specifici per ciascuna piattaforma — senza riscrivere il giornalismo.

## Quando usare questa skill
- Il tuo articolo e' pubblicato e ti serve contenuto social pronto per la pubblicazione che generi traffico o costruisca pubblico
- Vuoi anticipare un articolo a pagamento sui social senza rivelare le conclusioni principali
- Stai riutilizzando un lungo formato in un calendario social e ti servono piu' post distinti da un unico pezzo
- Vuoi che l'estratto suoni come l'articolo — non come testo di marketing

## Cosa devi fornire
**Obbligatorio:** Testo completo dell'articolo o un estratto consistente (almeno 400 parole); per quali piattaforme formattare (X/Twitter, Instagram, LinkedIn, o tutte e tre)
**Facoltativo:** Handle/nome utente della testata per l'attribuzione; passaggio specifico che ritieni piu' condivisibile; indicazione di tono (stile thread/commento vs. stile card con citazione vs. estratto diretto); se includere un link e un invito alla lettura; stato di paywall

## Come Claude affronta questo compito
1. Legge l'articolo completo e identifica 2-3 candidati per l'estratto: la frase o la statistica piu' d'impatto, la citazione piu' forte di una fonte, e l'affermazione piu' controintuitiva o sorprendente dell'articolo
2. Per ogni piattaforma, formatta l'estratto per adattarsi al registro naturale e alle convenzioni di caratteri della piattaforma — non semplice troncamento, ma adattamento strutturale
3. Per X/Twitter: un post iniziale di 240 caratteri che funziona da solo, facoltativamente seguito da un thread di 2-3 tweet
4. Per LinkedIn: un inquadramento di contesto leggermente piu' lungo prima dell'estratto, con chiusura su un'osservazione professionale
5. Per Instagram: un formato card con citazione piu' una didascalia che sviluppa il pensiero
6. Preserva la voce dell'articolo — questi post devono leggere come giornalismo, non come promozione pubblicitaria
7. Chiude con una nota "Prossimo passo": quale post pubblicare per primo, se programmare il thread o pubblicare su tutte le piattaforme simultaneamente, e se eseguire thumbnail-concept-brief per creare un asset visivo corrispondente per la card citazione di Instagram

## Formato di output
Blocchi piattaforma per piattaforma, chiaramente etichettati. Ogni blocco contiene il testo del post, una nota sul conteggio dei caratteri e indicazioni d'uso di una riga. Il testo della card citazione (per Instagram) e' chiaramente separato dalla didascalia. Lunghezza totale: 350-500 parole a seconda delle piattaforme richieste. Testo semplice ovunque — niente HTML. L'output termina con una nota "Prossimo passo": su quale piattaforma pubblicare per primo, se pubblicare simultaneamente o scaglionare, e se usare thumbnail-concept-brief per creare il visual di Instagram.

## Criteri di qualita'
- [ ] Ogni estratto e' tratto dall'articolo reale — nessuna parafrasi o aggiunta editoriale non presente nel testo
- [ ] Il post X/Twitter funziona come frase autonoma — non richiede di cliccare sul link per avere senso
- [ ] Il post LinkedIn include una riga di inquadramento che da' contesto professionale prima dell'estratto
- [ ] Il testo della card citazione Instagram ha meno di 200 caratteri (leggibile a dimensione miniatura)
- [ ] Nessun post sopravvaluta o esagera le affermazioni dell'articolo rispetto a quanto il testo supporta
- [ ] Il formato di attribuzione e' coerente con le convenzioni della piattaforma
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (pubblicare sulla prima piattaforma, programmare il thread, o eseguire thumbnail-concept-brief per il visual di Instagram)

## Esempio

### Input
Estratto dell'articolo (da un reportage sulla scienza del sonno):

*"Il consiglio dominante sul sonno ha ripetuto lo stesso numero — otto ore — per decenni, ma la ricerca dietro quel numero e' piu' fragile di quanto la maggior parte delle persone si renda conto. Una serie di grandi studi negli anni 2010 ha rilevato che gli adulti che dichiaravano di dormire esattamente otto ore non vivevano, in media, piu' a lungo ne' ottenevano risultati migliori nei test cognitivi rispetto a chi dormiva sei ore e mezza o sette. Cio' che la ricerca mostra con costanza non e' un numero ottimale, ma un intervallo — e l'estremo inferiore di quell'intervallo, per la maggior parte degli adulti sani, e' piu' vicino alle sei ore che alle otto.*

*'Abbiamo venduto alla gente un numero al posto di un principio', dice la dott.ssa Camilla Moretti, ricercatrice del sonno in un'universita' italiana non coinvolta in nessuno degli studi commerciali. 'Il principio e': dormi fino a sentirti riposato. Il numero e' una comodita' di marketing.'"*

Piattaforme: X/Twitter, LinkedIn, Instagram
Handle della testata: @rivistanazionale (fittizio)
Paywall: Si'

### Output

---

**X / Twitter**

Post: *"'Abbiamo venduto alla gente un numero al posto di un principio. Il principio e': dormi fino a sentirti riposato. Il numero e' una comodita' di marketing.'"* — ricercatrice del sonno sul perche' la regola delle 8 ore e' piu' fragile di quanto pensi. [@rivistanazionale, link in bio — abbonati]

*(239 caratteri con attribuzione. Funziona come citazione autonoma. Stato paywall indicato con "abbonati".)*

**Continuazione thread facoltativa:**
2/ La ricerca e' piu' complessa del consiglio. Grandi studi negli anni 2010 non hanno trovato vantaggi di mortalita' ne' di rendimento cognitivo per chi dormiva esattamente 8 ore rispetto a chi dormiva 6,5-7. Cio' che la scienza mostra e' un intervallo — non un numero.
3/ Articolo completo al link — vale la pena se ti sei mai sentito in colpa per non arrivare a otto ore.

---

**LinkedIn**

I consigli sul sonno hanno ripetuto lo stesso numero — otto ore — per decenni. La ricerca dietro quel numero e' piu' contestata di quanto la maggior parte delle persone sappia.

*"Abbiamo venduto alla gente un numero al posto di un principio. Il principio e': dormi fino a sentirti riposato. Il numero e' una comodita' di marketing."*

Questa e' una ricercatrice del sonno citata in un nuovo reportage su cosa dice davvero la scienza — e perche' il consenso e' piu' complesso del titolo. Rilevante per chiunque gestisca i propri orari, il benessere del proprio team o le norme di produttivita' aziendale.

[Link] (Articolo in abbonamento — @rivistanazionale)

*(~175 parole. Inquadramento con contesto. Angolo di rilevanza professionale. Attribuzione e nota paywall incluse.)*

---

**Instagram**

*Testo card citazione (meno di 200 caratteri):*
"Abbiamo venduto alla gente un numero al posto di un principio. Il principio e': dormi fino a sentirti riposato."
— Ricercatrice del sonno, @rivistanazionale

*Didascalia:*
Otto ore. E' il numero che tutti conoscono. Ma da dove viene — e la ricerca lo supporta davvero? Un nuovo reportage analizza la scienza. Link in bio (articolo in abbonamento).

---

## Limitazioni note
- Questa skill estrae e formatta; non genera nuove affermazioni editoriali — se l'articolo non contiene una citazione forte autonoma o una statistica d'impatto, i post social avranno un impatto limitato
- Il rendimento degli articoli a pagamento sui social varia significativamente per piattaforma e pubblico; LinkedIn tende a superare X per i contenuti a pagamento perche' l'inquadramento puo' stabilire un valore professionale prima del clic
- Per Instagram, il contesto visivo (l'immagine o la grafica abbinata alla card citazione) non e' affrontato qui — usa la skill thumbnail-concept-brief o le skill di art direction per gli asset visivi
- La selezione del passaggio e' soggettiva; se hai una riga specifica in mente, forniscila — la selezione di Claude potrebbe non coincidere con il giudizio editoriale su cosa sia piu' rappresentativo del testo

## Skill correlate
- [newsletter-teaser-writer](newsletter-teaser-writer.md)
- [headline-generator](../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)
