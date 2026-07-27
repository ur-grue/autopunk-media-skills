---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
language: pt
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Excerto para Redes Sociais

## O que esta habilidade faz
Extrai e reformata a passagem ou argumento mais partilhável de um artigo publicado em publicações específicas para cada plataforma — sem reescrever o jornalismo.

## Quando usar esta habilidade
- O teu artigo está publicado e precisas de conteúdo social pronto a publicar que gere tráfego ou construa audiência
- Queres antecipar um artigo pago nas redes sociais sem revelar as suas conclusões principais
- Estás a reutilizar um formato longo num calendário de redes sociais e precisas de múltiplas publicações distintas de uma única peça
- Queres que o excerto soe como o artigo — não como texto de marketing

## O que precisas de fornecer
**Obrigatório:** Texto completo do artigo ou um excerto substancial (pelo menos 400 palavras); quais plataformas formatar (X/Twitter, Instagram, LinkedIn, ou as três)
**Opcional:** Handle/nome de utilizador da publicação para atribuição; passagem específica que acreditas ser a mais partilhável; diretiva de tom (estilo thread/comentário vs. estilo cartão de citação vs. excerto direto); se incluir um link e chamada à leitura; estado de paywall

## Como o Claude aborda esta tarefa
1. Lê o artigo completo e identifica 2 a 3 candidatos a excerto: a frase ou estatística mais impactante, a citação mais forte de uma fonte, e a afirmação mais contraintuitiva ou surpreendente do artigo
2. Para cada plataforma, formata o excerto para se adaptar ao registo natural e às convenções de caracteres da plataforma — não apenas truncagem, mas adaptação estrutural
3. Para X/Twitter: uma publicação inicial de 240 caracteres que funcione de forma autónoma, opcionalmente seguida de uma continuação em thread de 2 a 3 tweets
4. Para LinkedIn: um enquadramento de contexto ligeiramente mais longo antes do excerto, fechando com uma conclusão profissional
5. Para Instagram: um formato de cartão de citação com uma legenda que estende o pensamento
6. Preserva a voz do artigo — estas publicações devem ler-se como jornalismo, não como publicidade promocional
7. Termina com uma nota "Próximo passo": qual publicação fazer primeiro, se agendar a thread ou publicar em todas as plataformas simultaneamente, e se se deve executar thumbnail-concept-brief para criar um ativo visual correspondente para o cartão de citação do Instagram

## Formato de saída
Blocos plataforma por plataforma, claramente etiquetados. Cada bloco contém o texto da publicação, uma nota sobre a contagem de caracteres e orientação de uso de uma linha. O texto do cartão de citação (para Instagram) está claramente separado da legenda. Extensão total: 350 a 500 palavras segundo as plataformas solicitadas. Texto simples ao longo — sem HTML. A saída termina com uma nota "Próximo passo": em que plataforma publicar primeiro, se publicar simultaneamente ou escalonar, e se usar thumbnail-concept-brief para criar o visual do Instagram.

## Critérios de qualidade
- [ ] Cada excerto está extraído do artigo real — sem paráfrases ou adição editorial que não esteja no texto
- [ ] A publicação de X/Twitter funciona como uma frase autónoma — não requer clicar no link para fazer sentido
- [ ] A publicação de LinkedIn inclui uma linha de enquadramento que dá contexto profissional antes do excerto
- [ ] O texto do cartão de citação do Instagram tem menos de 200 caracteres (legível em tamanho miniatura)
- [ ] Nenhuma publicação sobrevaloriza nem exagera as afirmações do artigo para além do que o texto sustenta
- [ ] O formato de atribuição é consistente com as convenções da plataforma
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (publicar na primeira plataforma, agendar a thread, ou executar thumbnail-concept-brief para o visual do Instagram)

## Exemplo

### Entrada
Excerto do artigo (de uma reportagem sobre a ciência do sono):

*"O conselho dominante sobre o sono tem repetido o mesmo número — oito horas — durante décadas, mas a investigação por detrás desse número é mais frágil do que a maioria das pessoas imagina. Uma série de grandes estudos na década de 2010 concluiu que os adultos que reportavam dormir exatamente oito horas não viviam, em média, mais tempo nem tinham melhor desempenho em testes cognitivos do que os que dormiam seis horas e meia ou sete. O que a investigação mostra consistentemente não é um número ótimo, mas um intervalo — e o limite inferior desse intervalo, para a maioria dos adultos saudáveis, está mais próximo das seis horas do que das oito.*

*'Temos andado a vender às pessoas um número em vez de um princípio', diz a Dra. Camila Morais, investigadora do sono numa universidade portuguesa que não esteve envolvida em nenhum dos estudos comerciais. 'O princípio é: dorme até te sentires restaurado. O número é uma conveniência de marketing.'"*

Plataformas: X/Twitter, LinkedIn, Instagram
Handle da publicação: @revistalusofona (fictício)
Paywall: Sim

### Saída

---

**X / Twitter**

Publicação: *"'Temos andado a vender às pessoas um número em vez de um princípio. O princípio é: dorme até te sentires restaurado. O número é uma conveniência de marketing.'"* — investigadora do sono sobre por que a regra das 8 horas é mais frágil do que pensas. [@revistalusofona, link na bio — assinantes]

*(239 caracteres com atribuição. Funciona como citação autónoma. Estado de paywall divulgado com indicação "assinantes".)*

**Continuação de thread opcional:**
2/ A investigação é mais complexa do que o conselho. Grandes estudos na década de 2010 não encontraram vantagens de mortalidade nem desempenho cognitivo para pessoas que dormiram exatamente 8 horas versus quem dormiu 6,5 a 7. O que a ciência mostra é um intervalo — não um número.
3/ Artigo completo no link — vale a pena se alguma vez te sentiste culpado por não chegar às oito horas.

---

**LinkedIn**

Os conselhos sobre o sono têm repetido o mesmo número — oito horas — durante décadas. A investigação por detrás desse número está mais em disputa do que a maioria sabe.

*"Temos andado a vender às pessoas um número em vez de um princípio. O princípio é: dorme até te sentires restaurado. O número é uma conveniência de marketing."*

Isto é uma investigadora do sono citada numa nova reportagem sobre o que a ciência realmente diz — e por que o consenso é mais complexo do que o título. Relevante para quem gere o seu próprio horário, o bem-estar da sua equipa, ou as normas de produtividade laboral.

[Link] (Artigo por assinatura — @revistalusofona)

*(~175 palavras. Enquadramento com contexto. Ângulo de relevância profissional. Atribuição e nota de paywall incluídas.)*

---

**Instagram**

*Texto do cartão de citação (menos de 200 caracteres):*
"Temos andado a vender às pessoas um número em vez de um princípio. O princípio é: dorme até te sentires restaurado."
— Investigadora do sono, @revistalusofona

*Legenda:*
Oito horas. Esse é o número que todos conhecem. Mas de onde vem — e a investigação realmente sustenta-o? Uma nova reportagem analisa a ciência. Link na bio (artigo por assinatura).

---

## Limitações conhecidas
- Esta habilidade extrai e formata; não gera novas afirmações editoriais — se o artigo não contém uma citação forte autónoma ou uma estatística impactante, as publicações sociais terão impacto limitado
- O desempenho de artigos pagos nas redes sociais varia significativamente segundo a plataforma e a audiência; o LinkedIn costuma superar o X para conteúdo pago porque o enquadramento pode estabelecer valor profissional antes do clique
- Para Instagram, o contexto visual (a imagem ou gráfico emparelhado com o cartão de citação) não é abordado aqui — usa a habilidade thumbnail-concept-brief ou as habilidades de direção de arte para os recursos visuais
- A seleção da passagem é subjetiva; se tens uma linha específica em mente, fornece-a — a seleção do Claude pode não coincidir com o critério editorial sobre o que é mais representativo do texto

## Habilidades relacionadas
- [newsletter-teaser-writer](newsletter-teaser-writer.md)
- [headline-generator](../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)
