---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
language: it
tags: [documentary, scripting, interview, questions, subject-research]
---

# Generatore di Domande per Intervista

## Cosa fa questa skill
Genera un set di domande per intervista mirato e strutturato per un soggetto documentaristico specifico — organizzato per funzione narrativa, dalle domande iniziali per costruire fiducia fino alle domande piu' difficili o rivelatrici.

## Quando usare questa skill
- Stai preparando un'intervista documentaristica e vuoi domande che vadano oltre cio' che la sola ricerca puo' generare
- Hai informazioni su un soggetto ma ti serve una sequenza completa di domande organizzata per il flusso in camera
- Vuoi domande che producano risposte utilizzabili, emotive e specifiche invece di dichiarazioni preparate
- Ti servono domande strutturate in modo che il soggetto racconti la sua storia, invece di rispondere a un questionario

## Cosa devi fornire
**Obbligatorio:** Chi e' il soggetto e il suo ruolo nel documentario; l'angolo editoriale (cosa cerca di capire il film attraverso questa intervista); 3-5 fatti chiave sul soggetto gia' noti
**Facoltativo:** Su quali argomenti il soggetto sara' probabilmente sulla difensiva; scene o sequenze specifiche che l'intervista deve supportare (es.: "abbiamo bisogno che descriva il momento in cui ha preso la decisione"); tono del film; se e' un film osservativo dove l'intervista e' il dispositivo narrativo principale, oppure un documentario con girato separato

## Come Claude affronta questo compito
1. Identifica il lavoro narrativo che questa specifica intervista deve svolgere nel film — cio' che solo il soggetto puo' fornire e che nessun altro elemento del documentario puo' dare
2. Apre il set di domande con 3-4 domande per costruire la fiducia: domande biografiche aperte che lasciano al soggetto il tempo di trovare la propria voce davanti alla camera, e che possono generare contesto inatteso
3. Sviluppa la sezione sostanziale centrale: 10-15 domande che progrediscono dal fattuale al riflessivo al personalmente rivelatore, ciascuna costruita sulla risposta naturale che la domanda precedente invita
4. Chiude con le domande difficili o ad alto rischio — sequenziate in modo che arrivino dopo che la fiducia e' stata stabilita, non all'inizio
5. Aggiunge note di produzione: quali domande hanno piu' probabilita' di produrre soundbite utilizzabili, quali possono necessitare di un silenzio di follow-up, e quali possono essere eliminate se il tempo e' scarso
6. Dopo il set di domande, fornisce una nota "Prossimo passo": quali tre domande sono le piu' critiche se il tempo e' limitato, cosa preparare prima delle riprese (autorizzazioni, ricerca aggiuntiva), e se eseguire scene-breakdown-writer per pianificare il contesto visivo attorno all'intervista

## Formato di output
Lista di domande numerata, organizzata in tre sezioni etichettate: Apertura (3-4 domande), Sostanziale (10-15 domande) e Alto Rischio (3-5 domande). Ogni sezione preceduta da un paragrafo di note del regista che spiega lo scopo della sezione. Note di produzione su 3-4 domande lungo il percorso. Totale: 20-25 domande. 500-700 parole. L'output termina con una nota "Prossimo passo": le tre domande da dare la priorita' se il tempo e' limitato, cosa avere pronto prima delle riprese, e se eseguire scene-breakdown-writer per pianificare la copertura visiva attorno all'intervista.

## Criteri di qualita'
- [ ] Nessuna domanda puo' ricevere risposta con "si'" o "no" — tutte le domande sono aperte
- [ ] Le domande sono in linguaggio conversazionale ordinario — non il linguaggio di un'intervista formale o di un questionario
- [ ] Almeno due domande chiedono al soggetto di descrivere un momento o una scena specifica, non un'esperienza generale
- [ ] La sequenza va dal sicuro al sensibile — le domande ad alto rischio non compaiono nella prima sezione
- [ ] Le note di produzione segnalano quali domande sono piu' critiche per le esigenze editoriali del film
- [ ] Nessuna domanda incorpora un presupposto con cui il soggetto deve concordare per poter rispondere
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (identificare le tre domande imprescindibili, preparare le autorizzazioni, o eseguire scene-breakdown-writer per la pianificazione visiva)

## Esempio

### Input
Soggetto: Il direttore di un ospedale regionale che ha preso la decisione di annullare gli interventi chirurgici programmati durante una crisi di capacita', una decisione che e' stata pubblicamente criticata
Ruolo nel documentario: Soggetto istituzionale principale — la persona che ha preso la decisione che il film sta esaminando
Angolo editoriale: Il film esplora come gli amministratori sanitari prendono decisioni sotto vincoli di risorse, e il costo personale dell'autorita' istituzionale
Fatti noti: Lavora nell'amministrazione ospedaliera da 22 anni; e' stato pubblicamente criticato sui media locali; non ha mai rilasciato un'intervista filmata sulla decisione specifica; e' noto per essere metodico e attento nel modo in cui si esprime
Sulla difensiva riguardo a: Le discussioni interne specifiche che hanno preceduto la decisione; se crede di aver preso la decisione giusta

### Output

**APERTURA — Stabilire voce e mondo** *(Obiettivo: lasciare che il soggetto si ambienti nell'intervista e trovi il suo registro prima di affrontare il materiale centrale.)*

1. Lavori nell'amministrazione ospedaliera da piu' di vent'anni. Cosa comporta realmente questo lavoro nel quotidiano — non la versione di una descrizione del ruolo, ma la versione che vivi?
2. Riportami a quando sei arrivato a questo incarico. Cosa pensavi che sarebbe stato, e cosa si e' rivelato diverso?
3. Quando spieghi quello che fai a qualcuno che non ha idea di come funziona un ospedale — in una conversazione a una cena — come lo spieghi?
4. Cosa credi che la maggior parte delle persone fraintenda su come si prendono le decisioni all'interno di un ospedale?

*(Nota di produzione: La domanda 4 spesso genera le risposte piu' franche. I soggetti che hanno sentito di essere stati rappresentati male pubblicamente tendono a rispondere a questa con ampiezza. Lasciala correre.)*

---

**SOSTANZIALE — La decisione e il suo contesto** *(Obiettivo: costruire verso l'evento specifico attraverso il contesto, in modo che il soggetto stia narrando invece di difendersi.)*

5. Riportami a quel periodo — le settimane che hanno preceduto la decisione. Qual era la situazione operativa all'interno dell'ospedale?
6. Chi altro era nella stanza quando se ne discuteva? Quali ruoli avevano?
7. In quale momento hai capito che si sarebbe dovuta prendere una decisione — non in astratto, ma che sarebbe toccata a te specificamente?
8. Descrivimi le informazioni che avevi davanti nel momento in cui hai preso la decisione. Cosa stavi valutando?
9. C'erano opzioni che hai considerato e scartato? Quali erano?
10. Quanto tempo ha richiesto realmente la decisione — dal punto in cui era concreta al punto in cui hai detto: questo e' quello che faremo?
11. A chi l'hai detto per primo, e come l'hai spiegato?
12. Qual era la tua aspettativa su come sarebbe stata accolta?
13. Quando e' arrivata la critica pubblica — come l'hai scoperta per la prima volta? Dove ti trovavi?
14. C'e' qualcosa nella copertura di quel periodo che pensi fosse corretto?

*(Nota di produzione: La domanda 14 e' un ammorbidente prima della versione piu' dura. Li invita a riconoscere qualcosa di vero prima che venga chiesto loro cosa era sbagliato.)*

15. Cosa vorresti che qualcuno a cui e' stato annullato un intervento durante quel periodo capisse su come e' stata presa quella decisione?

---

**ALTO RISCHIO — Riflessione e bilancio** *(Obiettivo: creare spazio affinche' il soggetto esprima dubbio, rimpianto o convinzione. Queste sono le domande piu' importanti dell'intervista. Non affrettarle.)*

16. Se avessi avuto piu' informazioni — risorse, tempo, un'opzione che non avevi — avresti preso una decisione diversa?
17. Credi di aver preso la decisione giusta?

*(Nota di produzione: Dopo la domanda 17, resta in silenzio. Non parafrasare ne' soccorrere il soggetto dalla domanda. La risposta che arriva dopo una pausa e' spesso quella di cui il film ha bisogno.)*

18. Quale costo ha avuto quella decisione per te, personalmente? Non professionalmente — personalmente.
19. Ventidue anni da ora, quando qualcun altro occupera' un ruolo come il tuo e si trovera' di fronte a qualcosa di simile — cosa vuoi che sappia?
20. C'e' qualcosa su tutto questo che non ti e' mai stato chiesto, e che vuoi che resti agli atti?

*(Nota di produzione: La domanda 20 produce frequentemente la risposta piu' inattesa dell'intervista. Tienila per la fine. Dalle spazio.)*

---

## Limitazioni note
- Le domande sono generate a partire dalle informazioni che fornisci; piu' specifico e' il tuo brief sul soggetto, piu' mirate saranno le domande — un brief vago produce domande generiche
- La tecnica di intervista documentaristica varia significativamente a seconda dello stile del regista; alcuni registi preferiscono poche domande e massimo silenzio; adatta questo set di domande al tuo approccio invece di seguirlo meccanicamente
- Le domande ad alto rischio su questioni legali o normative devono essere riviste con il consulente legale del documentario prima delle riprese; alcune linee di interrogatorio possono creare esposizione a responsabilita'
- Questa skill non tiene conto se un soggetto ha un avvocato presente o e' stato preparato; adatta la tua sequenza in tempo reale a seconda di quanto il soggetto appaia sulla difensiva

## Skill correlate
- [scene-breakdown-writer](scene-breakdown-writer.md)
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)
