---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
language: pt
tags: [documentary, scripting, interview, questions, subject-research]
---

# Gerador de Perguntas de Entrevista

## O que esta habilidade faz
Gera um conjunto de perguntas de entrevista orientado e estruturado para um sujeito documental específico — organizado por função narrativa, desde perguntas iniciais para criar confiança até às perguntas mais desafiantes ou reveladoras.

## Quando usar esta habilidade
- Estás a preparar uma entrevista documental e queres perguntas que vão além do que a pesquisa sozinha pode gerar
- Tens antecedentes sobre um sujeito mas precisas de uma sequência completa de perguntas organizada para o fluxo em câmara
- Queres perguntas que produzam respostas utilizáveis, emotivas e específicas em vez de declarações preparadas
- Precisas de perguntas estruturadas de forma que o sujeito conte a sua história, em vez de responder a um questionário

## O que precisas de fornecer
**Obrigatório:** Quem é o sujeito e o seu papel no documentário; o ângulo editorial (o que o filme pretende compreender através desta entrevista); 3 a 5 factos-chave sobre o sujeito que já são conhecidos
**Opcional:** Sobre que temas o sujeito provavelmente estará na defensiva; cenas ou sequências específicas que a entrevista precisa de apoiar (ex.: "precisamos que descreva o momento em que tomou a decisão"); tom do filme; se é um filme observacional onde a entrevista é o dispositivo narrativo principal, ou um documentário com imagens de rodagem separadas

## Como o Claude aborda esta tarefa
1. Identifica o trabalho narrativo que esta entrevista particular precisa de fazer no filme — o que o sujeito pode fornecer que nenhum outro elemento do documentário consegue
2. Abre o conjunto de perguntas com 3 a 4 perguntas de construção de confiança: perguntas biográficas abertas que deixam o sujeito encontrar a sua voz perante a câmara, e que podem gerar contexto inesperado
3. Desenvolve a secção substantiva do meio: 10 a 15 perguntas que progridem de factual a reflexivo a pessoalmente revelador, cada uma construindo sobre a resposta natural que a pergunta anterior convida
4. Fecha com as perguntas difíceis ou de alto risco — sequenciadas para chegarem depois de estabelecida a confiança, não no início
5. Acrescenta notas de produção: que perguntas têm maior probabilidade de produzir sound bites utilizáveis, quais podem precisar de um silêncio de seguimento, e quais se podem eliminar se o tempo for escasso
6. Após o conjunto de perguntas, fornece uma nota "Próximo passo": quais três perguntas são as mais críticas se o tempo for limitado, o que preparar antes da rodagem (autorizações, investigação adicional), e se se deve executar scene-breakdown-writer para planear o contexto visual em torno da entrevista

## Formato de saída
Lista de perguntas numerada, organizada em três secções etiquetadas: Abertura (3 a 4 perguntas), Substantiva (10 a 15 perguntas) e Alto Risco (3 a 5 perguntas). Cada secção precedida por um parágrafo de notas do realizador explicando o propósito da secção. Notas de produção em 3 a 4 perguntas ao longo. Total: 20 a 25 perguntas. 500 a 700 palavras. A saída termina com uma nota "Próximo passo": as três perguntas a priorizar se o tempo for limitado, o que ter preparado antes da rodagem, e se executar scene-breakdown-writer para planear a cobertura visual em torno da entrevista.

## Critérios de qualidade
- [ ] Nenhuma pergunta pode ser respondida com "sim" ou "não" — todas as perguntas são abertas
- [ ] As perguntas estão em linguagem conversacional corrente — não a linguagem de uma entrevista formal ou questionário
- [ ] Pelo menos duas perguntas pedem ao sujeito que descreva um momento ou cena específica, não uma experiência geral
- [ ] A sequência vai de segura a sensível — as perguntas de alto risco não aparecem na primeira secção
- [ ] As notas de produção assinalam que perguntas são mais críticas para as necessidades editoriais do filme
- [ ] Nenhuma pergunta incorpora um pressuposto com o qual o sujeito tem de concordar para responder
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (identificar as três perguntas imprescindíveis, preparar autorizações, ou executar scene-breakdown-writer para planeamento visual)

## Exemplo

### Entrada
Sujeito: O diretor de um hospital regional que tomou a decisão de cancelar cirurgias programadas durante uma crise de capacidade, uma decisão que foi publicamente criticada
Papel no documentário: Sujeito institucional principal — a pessoa que tomou a decisão que o filme está a examinar
Ângulo editorial: O filme explora como os administradores de saúde tomam decisões sob restrições de recursos, e o custo pessoal da autoridade institucional
Factos conhecidos: Trabalha em administração hospitalar há 22 anos; foi publicamente criticado nos meios de comunicação locais; nunca deu uma entrevista filmada sobre a decisão específica; é conhecido por ser metódico e cuidadoso na forma como fala
Na defensiva sobre: As discussões internas específicas que precederam a decisão; se acredita que tomou a decisão correta

### Saída

**ABERTURA — Estabelecer voz e mundo** *(Objetivo: deixar o sujeito estabelecer-se na entrevista e encontrar o seu registo antes de abordar o material central.)*

1. Estás há mais de vinte anos em administração hospitalar. O que implica realmente este trabalho no dia a dia — não a versão de uma descrição de cargo, mas a versão que vives?
2. Leva-me de volta a quando chegaste a este cargo. O que pensavas que seria, e o que acabou por ser diferente?
3. Quando explicas o que fazes a alguém que não faz ideia de como funciona um hospital — numa conversa num jantar — como é que o explicas?
4. O que achas que a maioria das pessoas não compreende sobre como as decisões são tomadas dentro de um hospital?

*(Nota de produção: A pergunta 4 frequentemente gera as respostas mais francas. Os sujeitos que sentiram que foram mal representados publicamente tendem a responder a esta com extensão. Deixa-a correr.)*

---

**SUBSTANTIVA — A decisão e o seu contexto** *(Objetivo: construir em direção ao evento específico através do contexto, de forma que o sujeito esteja a narrar em vez de a defender-se.)*

5. Leva-me àquele período — as semanas anteriores à decisão. Qual era a situação operacional dentro do hospital?
6. Quem mais estava na sala quando isto estava a ser discutido? Que funções tinham?
7. Em que momento percebeste que se ia ter de tomar uma decisão — não em abstrato, mas que ia cair sobre ti especificamente?
8. Descreve-me a informação que tinhas à frente no momento em que tomaste a decisão. O que estavas a avaliar?
9. Houve opções que consideraste e puseste de lado? Quais eram?
10. Quanto tempo demorou realmente a decisão — desde o ponto em que era real até ao ponto em que disseste: isto é o que vamos fazer?
11. A quem disseste primeiro, e como o explicaste?
12. Qual era a tua expectativa de como ia ser recebido?
13. Quando chegou a crítica pública — como a encontraste pela primeira vez? Onde estavas?
14. Há algo sobre a cobertura daquela altura que aches que esteve certo?

*(Nota de produção: A pergunta 14 é um amolecedor antes da versão mais difícil. Convida-os a reconhecer algo verdadeiro antes de serem questionados sobre o que esteve errado.)*

15. O que gostarias que alguém que passou por uma cirurgia cancelada durante aquele período compreendesse sobre como essa decisão foi tomada?

---

**ALTO RISCO — Reflexão e balanço** *(Objetivo: criar espaço para que o sujeito expresse dúvida, arrependimento ou convicção. Estas são as perguntas mais importantes da entrevista. Não as apresses.)*

16. Se tivesses tido mais informação — recursos, tempo, uma opção que não tinhas — terias tomado uma decisão diferente?
17. Achas que tomaste a decisão correta?

*(Nota de produção: Depois da pergunta 17, permanece em silêncio. Não parafraseies nem os resgatem da pergunta. A resposta que vem depois de uma pausa é frequentemente a que o filme precisa.)*

18. Que custo tem essa decisão para ti, pessoalmente? Não profissionalmente — pessoalmente.
19. Daqui a vinte e dois anos, quando alguém ocupar um cargo como o teu e enfrentar algo assim — o que queres que saiba?
20. Há algo sobre isto que nunca te tenham perguntado, e que queres que fique registado?

*(Nota de produção: A pergunta 20 frequentemente produz a resposta mais inesperada da entrevista. Guarda-a para o final. Dá-lhe espaço.)*

---

## Limitações conhecidas
- As perguntas são geradas a partir da informação que forneceres; quanto mais específico for o teu brief sobre o sujeito, mais orientadas serão as perguntas — um brief vago produz perguntas genéricas
- A técnica de entrevista documental varia significativamente segundo o estilo do realizador; alguns realizadores preferem poucas perguntas e máximo silêncio; adapta este conjunto de perguntas à tua abordagem em vez de o seguir mecanicamente
- As perguntas de alto risco sobre assuntos legais ou regulatórios devem ser revistas com o assessor jurídico do documentário antes da rodagem; algumas linhas de interrogação podem criar exposição a responsabilidade
- Esta habilidade não tem em conta se um sujeito tem assessoria jurídica presente ou foi preparado; ajusta a tua sequenciação em tempo real segundo o quão defensivo o sujeito parecer

## Habilidades relacionadas
- [scene-breakdown-writer](scene-breakdown-writer.md)
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)
