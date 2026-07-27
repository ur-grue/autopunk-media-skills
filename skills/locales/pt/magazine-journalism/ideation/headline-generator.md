---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: pt
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Gerador de Títulos

## O que esta habilidade faz
Gera uma variedade de opções de títulos e subtítulos em diferentes registos, extensões e estilos de publicação para um artigo ou reportagem específica.

## Quando usar esta habilidade
- Tens um artigo terminado ou quase terminado e precisas de opções de títulos antes de enviar ao editor
- Estás preso a um título e queres sair de uma abordagem única
- Precisas de títulos calibrados para a voz de uma publicação específica (tablóide, revista literária, imprensa especializada, meio digital)
- Queres um título principal com opções de subtítulo para reportagens longas

## O que precisas de fornecer
**Obrigatório:** Tema do artigo ou resumo de 2 a 4 frases; tipo de publicação ou público (ex.: diário nacional, publicação especializada, revista literária, meio digital)
**Opcional:** Título de trabalho existente para melhorar ou usar como referência; limite de caracteres; se é necessário um subtítulo (antetítulo ou linha de apoio); palavras ou abordagens a evitar; diretiva de tom (sério, provocador, irónico, neutro)

## Como o Claude aborda esta tarefa
1. Identifica o argumento central, a revelação ou o conflito do artigo — o elemento único que faz este texto valer a pena ler — e usa-o como âncora para todas as opções de título
2. Gera títulos através de abordagens estruturais distintas: afirmação declarativa, pergunta, imperativo, reviravolta irónica, construção "X de Y" e o formato nominal limpo usado por publicações literárias e de formato longo
3. Calibra o registo segundo o tipo de publicação especificado — o vocabulário e a pontuação de um tablóide diferem fundamentalmente do estilo de uma revista literária; a imprensa especializada segue convenções distintas da imprensa generalista
4. Para cada título principal, escreve um subtítulo correspondente que acrescenta o contexto jornalístico que o título omite
5. Assinala quais opções funcionam melhor em impresso versus digital (títulos com SEO costumam sacrificar elegância; títulos impressos podem permitir-se mais engenho)
6. Termina com uma nota "Próximo passo" de uma frase especificando qual título avançar, se executar social-media-excerpt para adaptar o título vencedor às plataformas, e se newsletter-teaser-writer é necessário para o texto de distribuição

## Formato de saída
6 a 10 opções de títulos organizadas em grupos por registo (ex.: "Direto/Informativo", "Analítico/Literário", "Provocador/Contundente"). Cada título seguido do seu subtítulo. Anotação de uma linha sobre o registo e o melhor contexto de uso. Extensão total: 400 a 600 palavras. Sem markdown para além de negritos para o texto dos títulos. A saída termina com uma nota "Próximo passo" que identifica qual grupo de títulos é mais sólido para a publicação especificada e o que fazer imediatamente: enviá-lo ao editor, executar newsletter-teaser-writer, ou adaptar a melhor opção para redes sociais.

## Critérios de qualidade
- [ ] Os títulos abrangem pelo menos 4 formatos estruturais diferentes
- [ ] Cada título tem um subtítulo que acrescenta contexto jornalístico
- [ ] Pelo menos uma opção tem menos de 6 palavras (funciona em capa e redes sociais)
- [ ] Pelo menos uma opção é consciente do SEO (frase nominal clara com palavra-chave no início)
- [ ] Nenhum título fabrica uma afirmação para além do que o resumo do artigo sustenta
- [ ] As anotações de registo distinguem corretamente os contextos impresso versus digital
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (enviar o título ao editor, adaptá-lo para redes com social-media-excerpt, ou executar newsletter-teaser-writer)

## Exemplo

### Entrada
Resumo do artigo: Uma reportagem longa sobre como pequenas cidades em diferentes países lusófonos estão a alterar silenciosamente as suas normas de zonamento para permitir maior densidade habitacional — sem esperar por reformas nacionais. O artigo apresenta três cidades específicas, cita responsáveis de planeamento urbano e mostra resultados iniciais: as rendas estabilizaram numa cidade após 18 meses.
Publicação: Revista de interesse geral nacional, séria mas acessível (registo tipo Visão ou Piauí)
Subtítulo necessário: Sim
Sem limite de caracteres especificado

### Saída

**Registo Direto / Informativo**

1. **As cidades que estão a reparar silenciosamente a crise habitacional**
*Subtítulo: Enquanto os governos nacionais debatem, um punhado de cidades lusófonas está a reescrever as suas normas de zonamento — e já está a funcionar.*
*(Recomendado para: capa digital; amigável com SEO; frase nominal clara)*

2. **A solução urbana que ninguém estava à espera**
*Subtítulo: Em três cidades que se recusaram a esperar por uma reforma nacional, uma alteração discreta no direito urbanístico está a conseguir o que anos de debate político não conseguiram.*
*(Recomendado para: redes sociais; contundente, funciona em versão curta)*

---

**Registo Analítico / Literário**

3. **Uma cidade muda de opinião sobre o quintal**
*Subtítulo: Um número pequeno mas crescente de comunidades aposta que habitações mais densas — não novas estradas nem subsídios federais — são a resposta à acessibilidade.*
*(Recomendado para: reportagem impressa; evocador, recompensa o leitor curioso)*

4. **Como construir uma cidade sem lutar por isso**
*Subtítulo: A crise habitacional tem sido um debate nacional durante décadas. Estas três cidades deixaram de esperar.*
*(Recomendado para: formato longo impresso ou digital; ironia seca, registo intelectual)*

---

**Registo Provocador / Contundente**

5. **Alteraram três linhas do código de zonamento. As rendas pararam de subir.**
*Subtítulo: Não foi uma grande conquista política. Não foi um programa federal. Numa cidade de média dimensão, levou 18 meses.*
*(Recomendado para: newsletter ou redes sociais; a especificidade gera cliques; melhor para artigos centrados em dados)*

6. **A solução habitacional que não precisa do governo nacional**
*Subtítulo: Esqueça o debate legislativo. Em cidades onde os urbanistas reescreveram silenciosamente a normativa local, os primeiros resultados estão a forçar uma revisão de como se constrói na região.*
*(Recomendado para: secção de opinião/análise digital)*

---

**Capa / Formato Curto**

7. **O arranjo do quintal** *(Título de capa; 3 palavras; requer subtítulo para transmitir o contexto)*
8. **As cidades que não esperaram** *(Funciona sozinho em capa ou cartão de rede social)*

---

*Notas: As opções 1 e 5 são as mais sólidas para digital/SEO. As opções 3 e 4 adaptam-se ao registo literário de uma reportagem impressa. Se este texto vai em capa, a opção 7 com subtítulo é a forma curta mais elegante.*

## Limitações conhecidas
- A eficácia de um título em digital depende em parte do contexto da miniatura/imagem que o Claude não pode ver; algumas opções podem precisar de ajuste quando se conhecer o visual
- O Claude não pode verificar as afirmações ou dados no resumo do artigo; os títulos são apenas tão precisos quanto o que forneceres — qualquer cifra específica num título deve estar verificada na reportagem
- Títulos literários e irónicos podem ter baixo desempenho algorítmico em plataformas que priorizam a correspondência clara de palavras-chave; indica o teu canal de distribuição ao solicitar

## Habilidades relacionadas
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../distribution/social-media-excerpt.md)
