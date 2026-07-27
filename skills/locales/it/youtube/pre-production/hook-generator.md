---
name: hook-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.78
language: it
tags: [youtube, pre-production, hooks, retention, podcast, documentary]
---

# Generatore di Hook

## Cosa fa questa skill
Scrive tre opzioni di hook di apertura — una per stile — per un video YouTube, un'introduzione di podcast o un'apertura di documentario. Ogni hook e' composto da 1 a 3 frasi ed e' pronto per l'uso cosi' com'e'.

## Quando usare questa skill
- Hai un tema per un video, episodio o film e devi scrivere i primi 15-30 secondi
- Hai una bozza di hook ma vuoi alternative piu' solide prima di registrare
- Vuoi testare quale angolo genera piu' tensione o curiosita' prima di impegnarti in una ripresa

## Cosa devi fornire
**Obbligatorio:**
- Tema o premessa in una-tre frasi — di cosa tratta realmente il video, l'episodio o il film
- Formato: YouTube (formato lungo o Shorts), podcast o documentario

**Facoltativo:**
- Tono: giornalismo serio, divulgazione scientifica, intrattenimento (default: intrattenimento se non specificato)
- Pubblico di riferimento: a chi e' destinato questo contenuto in una frase (es.: "imprenditori in fase iniziale", "ascoltatori di true crime")
- Un dato concreto, statistica o scena dal tuo contenuto che potrebbe ancorare l'hook

## Come Claude affronta questo compito

1. **Identifica la tensione centrale.** Prima di scrivere, trova l'aspetto piu' attraente del tema — il dato controintuitivo, il risultato inatteso, la posta in gioco che rende questo contenuto degno di essere visto. Questo e' il materiale grezzo da cui nascono i tre hook.

2. **Scrive un hook per stile**, ciascuno che attacca la tensione da un angolo diverso:
   - **Domanda provocatoria** — apre un gap di conoscenza che lo spettatore sente il bisogno di colmare. Non fa domande retoriche che si rispondono da sole. La domanda deve far sentire allo spettatore un interesse personale.
   - **Statistica o dato sorprendente** — apre con un numero o un dettaglio specifico e controintuitivo. La specificita' e' cio' che crea credibilita' e curiosita'. Evita i superlativi vaghi.
   - **Affermazione diretta e audace** — fa una dichiarazione sicura, leggermente controversa, che riformula il modo in cui lo spettatore pensa al tema. Si guadagna la fiducia; non si vanta.

3. **Adatta il registro al tono.** Gli hook di giornalismo serio sono misurati e autorevoli — guadagnano credibilita' senza sensazionalismo. Gli hook di divulgazione scientifica puntano sulla meraviglia e l'accessibilita'. Gli hook di intrattenimento si concentrano sulla personalita', l'energia o una provocazione visiva. Se il tono dell'input e' ambiguo, Claude adatta il registro piu' comune per il formato.

4. **Rispetta il formato.** Gli hook YouTube privilegiano la provocazione visiva e i pattern di interruzione. Gli hook podcast dipendono interamente dal linguaggio e spesso funzionano meglio quando sono conversazionali e sorprendenti. Le aperture documentaristiche possono sostenere una costruzione piu' lenta — una dichiarazione di luogo o tempo seguita da un ribaltamento.

5. **Consiglia il prossimo passo immediato.** Dopo aver consegnato gli hook, specifica quale registrare per primo, e quale skill correlata usare dopo (seo-title-optimizer per allineare il titolo, thumbnail-concept-brief per tradurre l'energia visiva dell'hook, o full-script-writer per espandere).

## Formato di output

Tre opzioni di hook etichettate. Ogni hook: da 1 a 3 frasi, non di piu'. Nessun preambolo, nessuna premessa, nessuna spiegazione — solo gli hook. Dopo le tre opzioni, una riga di orientamento pratico su quale stile tende a funzionare meglio per il formato e il tono dati. L'output termina con una riga "Prossimo passo" che specifica l'azione immediata: quale hook usare per primo e quale skill eseguire dopo.

```
**Opzione 1 — Domanda provocatoria**
[Testo dell'hook]

**Opzione 2 — Statistica sorprendente**
[Testo dell'hook]

**Opzione 3 — Affermazione audace**
[Testo dell'hook]

---
*Orientamento: [Una frase su quale opzione si adatta meglio a questo formato/tono e perche'.]*
```

## Criteri di qualita'
- [ ] Ogni hook apre un gap di conoscenza — lo spettatore sente genuinamente il bisogno di continuare a guardare per colmarlo
- [ ] L'opzione statistica sorprendente usa una cifra o un dettaglio specifico, non un'affermazione vaga
- [ ] Nessun hook usa la frase "in questo video" ne' annuncia cosa coprira' il contenuto
- [ ] Il tono corrisponde al registro specificato (giornalismo / divulgazione scientifica / intrattenimento)
- [ ] Ogni opzione e' genuinamente distinta — non una riformulazione delle altre
- [ ] L'output si adatta al formato: incisivita' di YouTube, trascinamento conversazionale del podcast, o deliberazione del documentario
- [ ] La nota di orientamento e' specifica e azionabile, non generica
- [ ] L'output include almeno un'azione concreta che l'utente puo' intraprendere subito (quale hook usare e cosa fare dopo: registrarlo, eseguire seo-title-optimizer o aprire full-script-writer)

## Esempio

### Input
**Tema:** Un video di analisi approfondita su YouTube sul perche' la maggior parte dei consigli di finanza personale sono pensati per un profilo lavorativo che non esiste piu' — il dipendente pubblico con posto fisso e pensione garantita.

**Formato:** YouTube formato lungo (20-25 minuti)

**Tono:** Giornalismo serio

**Pubblico:** Persone tra i 30 e i 45 anni che si sentono economicamente in ritardo nonostante abbiano seguito tutti i consigli ricevuti

### Output

**Opzione 1 — Domanda provocatoria**
E se il motivo per cui ti senti economicamente in ritardo non fosse che stai facendo qualcosa di sbagliato, ma che stai seguendo consigli scritti per una versione del mercato del lavoro che e' scomparsa alla fine degli anni '90?

**Opzione 2 — Statistica sorprendente**
Il modello di finanza personale piu' citato nei media italiani e' stato progettato in un'epoca in cui il 65% dei lavoratori aveva un contratto a tempo indeterminato, la pensione garantita e un unico datore di lavoro per tutta la carriera. Quell'epoca e' finita prima che la maggior parte di voi entrasse nel mercato del lavoro.

**Opzione 3 — Affermazione audace**
I consigli di finanza personale non sono sbagliati. Sono ottimizzati per qualcuno che non esiste piu' — e applicarli senza capire quel presupposto vi costera' anni.

---
*Orientamento: Per il giornalismo serio rivolto a questo pubblico, l'Opzione 2 lavora di piu': la statistica specifica segnala ricerca e costruisce fiducia prima di presentare l'argomento piu' ampio. L'Opzione 1 e' la piu' forte se il tono si inclina verso l'editoriale o l'opinione.*

## Limitazioni note
- Questa skill non puo' verificare le statistiche. Se fornisci una cifra specifica nel tuo input, la usera'. Se non lo fai, l'opzione statistica sorprendente potrebbe costruirne una che suona plausibile ma richiede verifica prima della registrazione.
- Per temi in cui la tensione centrale e' genuinamente oscura o molto tecnica, gli hook possono essere precisi ma astratti — fornisci un dettaglio concreto dalla tua ricerca per dare a Claude qualcosa di specifico su cui ancorarsi.
- Gli hook documentaristici traggono grande beneficio dal conoscere la scena o l'immagine di apertura. Senza questo, questa skill genera hook basati solo sul linguaggio che potrebbero necessitare di adattamento visivo.

## Skill correlate
- [seo-title-optimizer](seo-title-optimizer.md) — scrivere il titolo dopo aver fissato l'angolo dell'hook
- [thumbnail-concept-brief](thumbnail-concept-brief.md) — tradurre l'energia visiva dell'hook in un brief per la miniatura
- [full-script-writer](../scripting/full-script-writer.md) — scrivere lo script completo una volta confermati hook e titolo
- [intro-outro-writer](../../podcast/scripting/intro-outro-writer.md) — scrittura intro/outro specifica per podcast
