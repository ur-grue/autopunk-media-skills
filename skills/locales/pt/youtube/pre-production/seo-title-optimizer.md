---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
language: pt
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# Otimizador de Título SEO

## O que esta habilidade faz
Gera 8 a 10 opções de títulos de YouTube otimizados para pesquisa para um tema de vídeo determinado, classificados por potencial de cliques e descobribilidade.

## Quando usar esta habilidade
- Tens um vídeo terminado ou quase terminado e precisas de um título antes de publicar
- Estás a planear um vídeo e queres validar a procura de pesquisa através de testes de títulos
- O teu título atual tem baixo desempenho e queres testar alternativas em A/B
- Estás a construir um calendário de conteúdos e precisas de títulos de trabalho para os próximos vídeos

## O que precisas de fornecer
**Obrigatório:** Tema do vídeo ou título de trabalho; público-alvo (quem vê este canal); objetivo principal do vídeo (informar, entreter, tutorial, opinião, análise)
**Opcional:** Nicho e tom do canal (casual, educativo, jornalístico); os 2 a 3 títulos de concorrentes principais sobre o mesmo tema; duração ou formato de vídeo pretendido; palavras-chave em que já tens bom posicionamento

## Como o Claude aborda esta tarefa
1. Identifica a intenção de pesquisa central por detrás do tema — que pergunta ou desejo específico levaria alguém a procurar este vídeo
2. Extrai 3 a 5 palavras-chave e frases de alto valor que provavelmente coincidem com a forma como o público realmente pesquisa, incluindo variantes de cauda longa
3. Gera títulos através de múltiplas estruturas de YouTube comprovadas: lista, como fazer, pergunta, explicativo "porquê/o quê/como", lacuna de curiosidade, e formatos de promessa de valor
4. Filtra por contagem de caracteres (menos de 60 caracteres preferido para visualização completa na maioria dos dispositivos), coloca a palavra-chave mais forte no início, e evita o clickbait que aumentaria a taxa de rejeição
5. Classifica as opções por potencial estimado de cliques e anota cada uma com uma justificação de uma linha

## Formato de saída
Uma lista numerada de 8 a 10 títulos. Cada título é seguido por uma nota entre parênteses que explica a abordagem estrutural utilizada e a palavra-chave principal que está a ser visada. Os títulos estão ordenados do maior para o menor potencial estimado de cliques. Extensão total: menos de 400 palavras. Texto simples, sem cabeçalhos markdown na saída.

## Critérios de qualidade
- [ ] Cada título inclui pelo menos uma palavra-chave concreta, não apenas descritores abstratos
- [ ] Os títulos abrangem pelo menos 4 formatos estruturais diferentes (lista, como fazer, pergunta, afirmação)
- [ ] Nenhum título excede os 70 caracteres
- [ ] O título melhor classificado coloca a palavra-chave principal dentro das primeiras 4 palavras
- [ ] Pelo menos dois títulos visam consultas de pesquisa de cauda longa
- [ ] Nenhum dos títulos contém superlativos enganosos que não se podem sustentar

## Exemplo

### Entrada
Tema: Como construir uma rotina matinal que realmente se mantenha
Público-alvo: Adultos focados na produtividade, 25 a 40 anos, que já tentaram e abandonaram rotinas matinais antes
Objetivo: Tutorial/conselhos
Tom do canal: Direto, prático, sem rodeios
Títulos de concorrentes vistos: "A minha rotina matinal das 5h da manhã", "Como me tornei uma pessoa madrugadora"

### Saída
1. **Como construir uma rotina matinal que realmente se mantenha** (Tutorial direto; palavra-chave: "rotina matinal"; coincide exatamente com a intenção de pesquisa de quem já fracassou antes)
2. **Porque é que a tua rotina matinal continua a falhar (e como resolver)** (Problema-solução; visa o ângulo da frustração; forte lacuna de curiosidade)
3. **Rotina matinal que não vais abandonar em 3 dias** (Especificidade + ponto de dor; cauda longa para pesquisas "abandonar rotina matinal")
4. **A rotina matinal para quem odeia rotinas matinais** (Gancho contraintuitivo; aborda diretamente a identidade do público-alvo)
5. **O único sistema de rotina matinal que funciona a longo prazo** (Autoridade + promessa; visa pesquisas "rotina matinal que funciona")
6. **Para de fracassar com as rotinas matinais — faz isto em vez disso** (Imperativo; alta urgência; visa pesquisadores recorrentes)
7. **Como finalmente construí uma rotina matinal que se manteve** (Testemunho pessoal; "finalmente" visa pesquisadores de longo prazo)
8. **Hábitos de rotina matinal que duram (sem acordar às 5h da manhã)** (Eliminação de objeção; "sem 5h" diferencia-se dos títulos da concorrência)
9. **O que ninguém te diz sobre construir uma rotina matinal** (Lacuna de curiosidade; visa quem já leu os conselhos padrão)
10. **Rotina matinal consistente — O guia passo a passo** (Título âncora SEO; visa pesquisas de tutorial estruturado de cauda longa)

**Recomendado:** Opção 1 para publicação principal; Opção 2 como candidato para teste A/B.

## Limitações conhecidas
- A eficácia do título depende fortemente da miniatura — um título forte com uma miniatura fraca continuará a ter baixo desempenho; usa esta habilidade em conjunto com thumbnail-concept-brief
- O Claude não pode aceder a dados de volume de pesquisa do YouTube em tempo real; as sugestões de palavras-chave baseiam-se em padrões estruturais, não em análise em tempo real
- Canais de nicho com audiências muito específicas (ex.: subtemas profissionais) podem precisar de contexto de domínio adicional para uma seleção precisa de palavras-chave
- Títulos otimizados para pesquisa podem sacrificar a voz da marca; criadores com identidade tonal estabelecida devem filtrar em conformidade

## Habilidades relacionadas
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)
