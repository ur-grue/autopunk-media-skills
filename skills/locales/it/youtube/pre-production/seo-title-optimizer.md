---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
language: it
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# Ottimizzatore di Titoli SEO

## Cosa fa questa skill
Genera da 8 a 10 opzioni di titoli YouTube ottimizzati per la ricerca per un dato tema video, classificati per potenziale di clic e scopribilita'.

## Quando usare questa skill
- Hai un video finito o quasi finito e ti serve un titolo prima di pubblicare
- Stai pianificando un video e vuoi validare la domanda di ricerca tramite test sui titoli
- Il tuo titolo attuale ha un rendimento basso e vuoi testare alternative in A/B
- Stai costruendo un calendario dei contenuti e ti servono titoli di lavoro per i prossimi video

## Cosa devi fornire
**Obbligatorio:** Tema del video o titolo di lavoro; pubblico di riferimento (chi guarda questo canale); obiettivo principale del video (informare, intrattenere, tutorial, opinione, recensione)
**Facoltativo:** Nicchia e tono del canale (casual, educativo, giornalistico); i 2-3 titoli principali dei concorrenti sullo stesso tema; durata o formato video desiderato; parole chiave su cui hai gia' un buon posizionamento

## Come Claude affronta questo compito
1. Identifica l'intento di ricerca centrale dietro il tema — quale domanda o desiderio specifico porterebbe qualcuno a cercare questo video
2. Estrae 3-5 parole chiave e frasi di alto valore che probabilmente corrispondono a come il pubblico cerca effettivamente, incluse le varianti a coda lunga
3. Genera titoli attraverso molteplici strutture YouTube collaudate: lista, come fare, domanda, esplicativo "perche'/cosa/come", gap di curiosita', e formati di promessa di valore
4. Filtra per conteggio caratteri (meno di 60 caratteri preferito per la visualizzazione completa sulla maggior parte dei dispositivi), posiziona la parola chiave piu' forte all'inizio, ed evita il clickbait che aumenterebbe la frequenza di rimbalzo
5. Classifica le opzioni per potenziale stimato di clic e annota ciascuna con una giustificazione di una riga

## Formato di output
Una lista numerata di 8-10 titoli. Ogni titolo e' seguito da una nota tra parentesi che spiega l'approccio strutturale utilizzato e la parola chiave principale che viene mirata. I titoli sono ordinati dal potenziale stimato di clic piu' alto al piu' basso. Lunghezza totale: meno di 400 parole. Testo semplice, nessuna intestazione markdown nell'output.

## Criteri di qualita'
- [ ] Ogni titolo include almeno una parola chiave concreta, non solo descrittori astratti
- [ ] I titoli coprono almeno 4 formati strutturali diversi (lista, come fare, domanda, affermazione)
- [ ] Nessun titolo supera i 70 caratteri
- [ ] Il titolo classificato per primo posiziona la parola chiave principale nelle prime 4 parole
- [ ] Almeno due titoli mirano a query di ricerca a coda lunga
- [ ] Nessun titolo contiene superlativi fuorvianti che non possono essere sostenuti

## Esempio

### Input
Tema: Come costruire una routine mattutina che duri davvero
Pubblico di riferimento: Adulti orientati alla produttivita', 25-40 anni, che hanno provato e abbandonato routine mattutine in passato
Obiettivo: Tutorial/consigli
Tono del canale: Diretto, pratico, senza fronzoli
Titoli concorrenti visti: "La mia routine mattutina delle 5", "Come sono diventato una persona mattiniera"

### Output
1. **Come costruire una routine mattutina che duri davvero** (Tutorial diretto; parola chiave: "routine mattutina"; corrisponde esattamente all'intento di ricerca di chi ha fallito in passato)
2. **Perche' la tua routine mattutina continua a fallire (e come risolvere)** (Problema-soluzione; mira all'angolo della frustrazione; forte gap di curiosita')
3. **Routine mattutina che non abbandonerai in 3 giorni** (Specificita' + punto dolente; coda lunga per ricerche "abbandonare routine mattutina")
4. **La routine mattutina per chi odia le routine mattutine** (Hook controintuitivo; si rivolge direttamente all'identita' del pubblico)
5. **L'unico sistema di routine mattutina che funziona a lungo termine** (Autorita' + promessa; mira a ricerche "routine mattutina che funziona")
6. **Smetti di fallire con le routine mattutine — fai questo invece** (Imperativo; alta urgenza; mira a chi cerca ripetutamente)
7. **Come ho finalmente costruito una routine mattutina che e' durata** (Testimonianza personale; "finalmente" mira a chi cerca da tempo)
8. **Abitudini mattutine che durano (senza svegliarsi alle 5)** (Eliminazione obiezione; "senza le 5" differenzia dai titoli concorrenti)
9. **Quello che nessuno ti dice sul costruire una routine mattutina** (Gap di curiosita'; mira a chi ha gia' letto i consigli standard)
10. **Routine mattutina costante — La guida passo dopo passo** (Titolo ancora SEO; mira a ricerche di tutorial strutturato a coda lunga)

**Consigliato:** Opzione 1 per la pubblicazione principale; Opzione 2 come candidato per test A/B.

## Limitazioni note
- L'efficacia del titolo dipende in larga misura dalla miniatura — un titolo forte con una miniatura debole avra' comunque un basso rendimento; usa questa skill insieme a thumbnail-concept-brief
- Claude non puo' accedere ai dati di volume di ricerca di YouTube in tempo reale; i suggerimenti sulle parole chiave si basano su pattern strutturali, non su analisi in tempo reale
- I canali di nicchia con pubblici molto specifici (es.: sottotemi professionali) potrebbero aver bisogno di contesto di dominio aggiuntivo per una selezione precisa delle parole chiave
- I titoli ottimizzati per la ricerca possono sacrificare la voce del brand; i creator con un'identita' tonale consolidata dovrebbero filtrare di conseguenza

## Skill correlate
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)
