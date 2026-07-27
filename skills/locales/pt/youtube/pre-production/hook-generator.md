---
name: hook-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.78
language: pt
tags: [youtube, pre-production, hooks, retention, podcast, documentary]
---

# Gerador de Gancho

## O que esta habilidade faz
Escreve três opções de gancho de abertura — uma por estilo — para um vídeo de YouTube, introdução de podcast ou abertura de documentário. Cada gancho tem entre 1 e 3 frases e está pronto a usar tal como está.

## Quando usar esta habilidade
- Tens um tema de vídeo, episódio ou filme e precisas de escrever os primeiros 15 a 30 segundos
- Tens um rascunho de gancho mas queres alternativas mais fortes antes de gravar
- Queres testar que ângulo gera mais tensão ou curiosidade antes de te comprometeres com uma gravação

## O que precisas de fornecer
**Obrigatório:**
- Tema ou premissa em uma a três frases — sobre o que é realmente o vídeo, episódio ou filme
- Formato: YouTube (formato longo ou Shorts), podcast ou documentário

**Opcional:**
- Tom: jornalismo sério · ciência popular · entretenimento (por defeito: entretenimento se não especificado)
- Público-alvo: para quem é este conteúdo numa frase (ex.: "empreendedores em fase inicial", "ouvintes de true crime")
- Um dado concreto, estatística ou cena do teu conteúdo que possa ancorar o gancho

## Como o Claude aborda esta tarefa

1. **Identifica a tensão central.** Antes de escrever, encontra o elemento mais atrativo do tema — o dado contraintuitivo, o resultado inesperado, as apostas que fazem com que valha a pena ver isto. Este é o material em bruto de que se alimentam os três ganchos.

2. **Escreve um gancho por estilo**, cada um atacando a tensão de um ângulo diferente:
   - **Pergunta provocadora** — abre uma lacuna de conhecimento que o espetador precisa de fechar. Não faz perguntas retóricas que se respondem sozinhas. A pergunta deve fazer com que o público sinta um interesse pessoal.
   - **Estatística ou dado surpreendente** — começa com um número ou detalhe específico e contraintuitivo. A especificidade é o que cria credibilidade e curiosidade. Evita os superlativos vagos.
   - **Afirmação direta e audaz** — faz uma declaração segura, ligeiramente controversa, que reenquadra a forma como o espetador pensa sobre o tema. Ganha a sua confiança; não se vangloria.

3. **Adapta o registo ao tom.** Os ganchos de jornalismo sério são ponderados e autoritativos — ganham credibilidade sem sensacionalismo. Os ganchos de ciência popular apostam no deslumbramento e na acessibilidade. Os ganchos de entretenimento centram-se na personalidade, energia ou numa provocação visual. Se o tom da entrada é ambíguo, o Claude adapta o registo mais comum para o formato.

4. **Respeita o formato.** Os ganchos de YouTube priorizam a provocação visual e os padrões de interrupção. Os ganchos de podcast dependem completamente da linguagem e costumam funcionar melhor quando são conversacionais e surpreendentes. As aberturas de documentário podem sustentar uma construção mais lenta — uma declaração de lugar ou tempo seguida de uma reviravolta.

5. **Recomenda o próximo passo imediato.** Depois de entregar os ganchos, especifica qual gravar primeiro e que habilidade relacionada usar depois (seo-title-optimizer para alinhar o título, thumbnail-concept-brief para traduzir a energia visual do gancho, ou full-script-writer para expandir).

## Formato de saída

Três opções de gancho etiquetadas. Cada gancho: entre 1 e 3 frases, não mais. Sem preâmbulo, sem qualificação, sem explicação — apenas os ganchos. Depois das três opções, uma linha de orientação prática sobre que estilo tende a funcionar melhor para o formato e tom dados. A saída termina com uma linha "Próximo passo" que especifica a ação imediata: que gancho usar primeiro e que habilidade executar depois.

```
**Opção 1 — Pergunta provocadora**
[Texto do gancho]

**Opção 2 — Estatística surpreendente**
[Texto do gancho]

**Opção 3 — Afirmação audaz**
[Texto do gancho]

---
*Orientação: [Uma frase sobre que opção se adapta melhor a este formato/tom e porquê.]*
```

## Critérios de qualidade
- [ ] Cada gancho abre uma lacuna de conhecimento — o espetador genuinamente precisa de continuar a ver para a fechar
- [ ] A opção de estatística surpreendente usa uma cifra ou detalhe específico, não uma afirmação vaga
- [ ] Nenhum gancho usa a frase "neste vídeo" nem anuncia o que o conteúdo vai cobrir
- [ ] O tom coincide com o registo especificado (jornalismo / ciência popular / entretenimento)
- [ ] Cada opção é genuinamente distinta — não uma reformulação das outras
- [ ] A saída adapta-se ao formato: contundência de YouTube, arrasto conversacional de podcast, ou deliberação de documentário
- [ ] A nota de orientação é específica e acionável, não genérica
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (que gancho usar e o que fazer depois: gravá-lo, executar seo-title-optimizer ou abrir full-script-writer)

## Exemplo

### Entrada
**Tema:** Um vídeo de análise aprofundada no YouTube sobre por que a maioria dos conselhos de finanças pessoais está desenhada para um perfil laboral que já não existe — o funcionário público com emprego estável e reforma garantida.

**Formato:** YouTube formato longo (20 a 25 minutos)

**Tom:** Jornalismo sério

**Público:** Pessoas de 30 a 45 anos que se sentem economicamente atrasadas apesar de terem seguido todos os conselhos que lhes deram

### Saída

**Opção 1 — Pergunta provocadora**
E se a razão pela qual te sentes economicamente atrasado não é que estejas a fazer algo mal, mas que estejas a seguir conselhos escritos para uma versão do mercado de trabalho que desapareceu no final dos anos 90?

**Opção 2 — Estatística surpreendente**
O modelo de finanças pessoais mais citado nos meios lusófonos foi desenhado numa época em que 65% dos trabalhadores tinham emprego formal vitalício, reforma garantida e um único empregador durante toda a carreira. Essa época terminou antes de a maioria de vocês entrarem no mercado de trabalho.

**Opção 3 — Afirmação audaz**
Os conselhos de finanças pessoais não estão avariados. Estão otimizados para alguém que já não existe — e aplicá-los sem entender esse pressuposto vai custar-te anos.

---
*Orientação: Para jornalismo sério dirigido a este público, a Opção 2 trabalha mais: a estatística específica sinaliza investigação e constrói confiança antes de apresentar o argumento mais amplo. A Opção 1 é a mais forte se o tom se inclinar para editorial ou opinião.*

## Limitações conhecidas
- Esta habilidade não pode verificar estatísticas. Se forneceres uma cifra específica na tua entrada, ela será usada. Se não forneceres, a opção de estatística surpreendente pode construir uma que soe plausível mas requeira verificação antes de gravar.
- Para temas onde a tensão central é genuinamente obscura ou muito técnica, os ganchos podem ser precisos mas abstratos — fornece um detalhe concreto da tua investigação para dar ao Claude algo específico em que se ancorar.
- Os ganchos de documentário beneficiam significativamente de conhecer a cena ou imagem de abertura. Sem isso, esta habilidade gera ganchos apenas de linguagem que podem precisar de adaptação visual.

## Habilidades relacionadas
- [seo-title-optimizer](seo-title-optimizer.md) — escrever o título depois de fixar o ângulo do gancho
- [thumbnail-concept-brief](thumbnail-concept-brief.md) — traduzir a energia visual do gancho numa direção de miniatura
- [full-script-writer](../scripting/full-script-writer.md) — escrever o guião completo uma vez confirmados o gancho e o título
- [intro-outro-writer](../../podcast/scripting/intro-outro-writer.md) — escrita de intro/outro específica para podcast
