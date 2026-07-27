---
name: logline-creator
status: stable
category: tv-documentary
subcategory: development
version: 1.0
eval_score: 4.5
language: pt
tags: [documentary, development, logline, pitching, synopsis]
---

# Criador de Logline

## O que esta habilidade faz
Elabora 4 a 6 opções de logline precisas e convincentes para qualquer projeto documental, que vão desde uma única frase até uma forma de duas frases, cada uma com uma ênfase diferente.

## Quando usar esta habilidade
- Estás a preparar um pitch e precisas de um logline antes de poder escrever um tratamento completo
- O teu logline é demasiado longo, demasiado vago ou não está a chegar aos comissários ou financiadores
- Precisas de versões diferentes para contextos diferentes: submissão a festival, pitch a difusor, comunicado de imprensa ou biografia em redes sociais
- Tens um documentário complexo com múltiplos sujeitos e precisas de encontrar a frase única que o sustenta

## O que precisas de fornecer
**Obrigatório:** Uma descrição do teu projeto documental — o sujeito, a história central ou o argumento, e os personagens ou eventos-chave no centro
**Opcional:** Difusor ou contexto de festival alvo; tom do filme (observacional, polémico, íntimo, cinéma-vérité); o que torna este filme diferente de outros sobre o mesmo tema; qualquer logline ou sinopse existente que queiras melhorar

## Como o Claude aborda esta tarefa
1. Identifica a espinha dorsal dramática do documentário — não o tema, mas o conflito, pergunta ou transformação específica que o filme seguirá desde a abertura até à resolução
2. Localiza o sujeito (quem ou o quê), a aposta (o que está em risco ou em questão) e o ângulo específico (o que este filme vê que outros não viram) — os três componentes estruturais de um logline funcional
3. Gera variações através de diferentes estruturas de logline: a forma impulsionada pelo personagem ("Um [sujeito] que [situação] tem de [objetivo] antes que [apostas]"), a forma de declaração temática, a forma interrogativa, e a forma comprimida de duas cláusulas usada em pitches a difusores
4. Calibra a extensão ao contexto: um logline de festival tem 25 a 40 palavras; uma linha de pitch a difusor pode ter até duas frases; uma linha de imprensa/redes sociais deve funcionar em menos de 20 palavras

## Formato de saída
4 a 6 opções de logline numeradas. Cada uma está etiquetada com a sua forma estrutural e contexto pretendido (festival, difusor, imprensa, redes sociais). Uma anotação de uma linha segue cada uma, explicando a ênfase ou compromisso específico realizado. Extensão total: 250 a 350 palavras.

## Critérios de qualidade
- [ ] Cada logline identifica o sujeito, a tensão central e as apostas
- [ ] Nenhum logline descreve o tema sem o ângulo específico ("um filme sobre as alterações climáticas" falha; "um filme sobre os cientistas que previram a crise e foram ignorados durante vinte anos" funciona)
- [ ] A opção mais curta tem menos de 25 palavras e funciona como linha de pitch autónoma
- [ ] Pelo menos uma opção está calibrada para um pitch a difusor (pode ser duas frases)
- [ ] Nenhum logline contém jargão, detalhes de produção ou linguagem técnica
- [ ] Nenhuma das opções é intercambiável — cada uma enfatiza um aspeto diferente do filme

## Exemplo

### Entrada
Descrição do projeto: Um documentário que acompanha uma ex-perita contabilista de organismos públicos que, aos setenta anos, começou a investigar fraudes financeiras em empresas municipais de abastecimento de água em três distritos. Em cinco anos, identificou 14 casos de desvio de fundos que afetaram pequenos municípios. Vários casos levaram a acusações. Não tem autoridade formal e trabalha completamente sozinha. O filme é observacional, acompanhando as suas investigações atuais.
Contexto do difusor: Canal documental de um difusor público importante, sério mas acessível
Também necessária linha de imprensa/redes sociais

### Saída

1. **A forma impulsionada pelo personagem** *(pitch a difusor)*
"Trabalhando sozinha e sem autoridade legal, uma ex-perita contabilista de setenta anos leva cinco anos a investigar fraudes financeiras nas empresas municipais de água de pequenos municípios — e os procuradores continuam a chamá-la de volta."
*(Ênfase: a sua agência e o paradoxo da validação institucional. Forte para contexto de difusor.)*

2. **A forma interrogativa** *(submissão a festival)*
"Quem vigia os que gerem a água que bebes? Em três distritos, a resposta tem sido uma contabilista reformada com uma folha de cálculo e a convicção de que a fraude pode sempre ser encontrada."
*(Ênfase: a questão sistémica por detrás da história pessoal.)*

3. **A forma temática** *(comunicado de imprensa)*
"Um retrato da convicção de uma mulher de que os recursos públicos pertencem ao público — e a investigação de cinco anos que lhe deu razão catorze vezes."
*(Ênfase: o argumento moral. Funciona bem em contextos editoriais.)*

4. **A forma comprimida de duas cláusulas** *(linha única para difusor)*
"Uma ex-perita contabilista investiga desvios de fundos em empresas municipais de água — a partir do seu próprio automóvel, sem autoridade legal, e com uma taxa de acusação de 100%."
*(Ênfase: o absurdo produtivo da situação. A "taxa de acusação de 100%" é o gancho.)*

5. **A linha de imprensa/redes sociais** *(menos de 20 palavras)*
"Uma mulher. Sem autoridade. Catorze acusados. Um documentário sobre o que uma ex-contabilista encontrou nas faturas da água dos pequenos municípios."
*(Ênfase: contundente; funciona como legenda de cartão em redes sociais ou frase de abertura de um comunicado de imprensa.)*

6. **A forma longa para festivais** *(duas frases, menos de 50 palavras)*
"Depois de uma carreira em contabilidade forense do setor público, Margarida decidiu que a fraude que continuava a ler nos escândalos das pequenas empresas de água era detetável. Cinco anos, três distritos e catorze casos depois, ninguém conseguiu provar que ela estava errada."
*(Ênfase: arco pessoal e trajetória. Forte para festivais de documentários.)*

## Limitações conhecidas
- Os loglines são apenas tão específicos quanto a descrição do projeto que forneceres — se o conceito documental ainda estiver pouco desenvolvido, os loglines vão expor isso em vez de o resolver
- Um logline não pode substituir um tratamento completo; os comissários e financiadores vão precisar de contexto de apoio; usa esta habilidade em conjunto com pitch-treatment-writer
- Para projetos que são genuinamente multi-hilo ou multi-sujeito (três protagonistas separados sem narrativa partilhada), um único logline pode ser impossível; neste caso, o Claude assinalará o problema estrutural e sugerirá abordagens alternativas

## Habilidades relacionadas
- [pitch-treatment-writer](pitch-treatment-writer.md)
- [festival-synopsis-writer](../localization/festival-synopsis-writer.md)
- [series-bible-generator](series-bible-generator.md)
