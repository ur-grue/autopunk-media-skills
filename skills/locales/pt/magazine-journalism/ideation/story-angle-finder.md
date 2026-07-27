---
name: story-angle-finder
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: pt
tags: [journalism, ideation, angles, pitching, story-development]
---

# Explorador de Ângulo Editorial

## O que esta habilidade faz
Gera 6 a 8 ângulos editoriais distintos a partir de um tema amplo ou evento de atualidade, cada um com uma perspetiva única, público-alvo e abordagem jornalística.

## Quando usar esta habilidade
- Tens um tema mas ainda não uma história — conheces o assunto mas não o ângulo específico que o torna publicável
- Estás a preparar um pitch e precisas de ver o leque completo de ângulos antes de decidir qual desenvolver
- Um editor atribuiu-te uma secção ou tema amplo e precisas de identificar o ponto de entrada mais convincente
- Queres ver como o mesmo evento poderia ser coberto de forma diferente segundo os tipos de publicação (notícia, reportagem, opinião, perfil)

## O que precisas de fornecer
**Obrigatório:** O tema amplo, área temática ou evento de atualidade com que estás a trabalhar; tipo de publicação ou meio-alvo (ou descreve a tua audiência se não houver um meio específico)
**Opcional:** Ângulos que já consideraste e queres evitar; fontes específicas ou dados a que já tens acesso; âmbito geográfico (local, nacional, internacional); enquadramento temporal (de última hora, atemporal, aniversário); se precisas de uma frase de pitch pronta a usar para cada ângulo

## Como o Claude aborda esta tarefa
1. Identifica pelo menos seis lentes editoriais distintas através das quais o tema pode ser abordado: a história pessoal/humana, a análise sistémica/estrutural, a história de dados, a perspetiva histórica, a abordagem contraintuitiva ou provocadora, o perfil, e o explicador processo/como-funciona — selecionando os mais apropriados para o tema
2. Para cada ângulo, especifica a pergunta central que a história responderia, o tipo principal de jornalismo requerido (documentos, fontes, dados, observação) e o meio mais provável para publicá-lo
3. Marca quais ângulos são urgentes versus atemporais, e quais requerem acesso significativo versus investigação documental
4. Nota onde os ângulos se sobrepõem à cobertura comum para que o jornalista possa diferenciar o seu pitch
5. Termina com uma recomendação "Próximo passo": quais um ou dois ângulos desenvolver primeiro dado o acesso do utilizador e o objetivo de publicação, e se executar research-brief-creator ou headline-generator como a próxima habilidade imediata

## Formato de saída
6 a 8 briefs de ângulo numerados. Cada brief inclui: Nome do ângulo (3 a 5 palavras), Pergunta central, Abordagem jornalística (2 frases), Tipo de publicação ideal, e uma Frase de pitch (uma frase, pronta a incluir num email de proposta). Extensão total: 500 a 700 palavras. Sem jargão para além do vocabulário editorial padrão. A saída termina com uma nota "Próximo passo": qual ângulo desenvolver primeiro (baseado no acesso e na adequação à publicação), e qual habilidade executar depois — research-brief-creator para construir o plano de reportagem ou headline-generator para refinar a frase de pitch.

## Critérios de qualidade
- [ ] Cada ângulo tem uma perspetiva editorial genuinamente distinta — não apenas um enquadramento diferente da mesma história
- [ ] Cada ângulo inclui uma abordagem jornalística concreta (não apenas "entrevistar especialistas")
- [ ] Pelo menos um ângulo é contraintuitivo ou desafia o enquadramento convencional do tema
- [ ] Pelo menos um ângulo é adequado para um tratamento de formato longo
- [ ] As frases de pitch estão prontas a enviar — suficientemente específicas para se sustentarem sozinhas num email
- [ ] A distinção urgente versus atemporal é feita para cada ângulo
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (qual ângulo desenvolver primeiro e qual habilidade executar depois: research-brief-creator ou headline-generator)

## Exemplo

### Entrada
Tema: O número crescente de pessoas que abandonam as grandes cidades lusófonas para se mudarem para cidades de média dimensão desde 2020
Tipo de publicação: Revista de interesse geral nacional
Evitar: Qualquer ângulo que em essência diga "o trabalho remoto fez com que isto acontecesse" (o editor diz que já foi feito demasiadas vezes)

### Saída

**1. O município que obteve o que desejava**
*Pergunta central: O que acontece à cultura, aos preços e ao tecido social de uma cidade de média dimensão quando chegam grandes quantidades de migrantes urbanos?*
*Abordagem jornalística: Reportagem imersa numa cidade específica que teve um crescimento populacional significativo. Entrevistar residentes de longa data, donos de negócios locais e os recém-chegados.*
*Publicação ideal:* Revista nacional, formato longo
*Frase de pitch:* "Numa cidade de média dimensão de [região], a população cresceu 20% em três anos. Esta é uma história sobre o que pensam os antigos residentes."
*Enquadramento temporal:* Atemporal

---

**2. O choque das infraestruturas**
*Pergunta central: Podem as infraestruturas das cidades de média dimensão — água, escolas, estradas, serviços médicos — absorver o crescimento demográfico urbano sem apoio estatal?*
*Abordagem jornalística: Documentos públicos sobre orçamentos municipais, dados de matrícula escolar e entrevistas com administradores municipais e planeadores regionais.*
*Publicação ideal:* Reportagem de investigação, secção de política
*Frase de pitch:* "As cidades de média dimensão estão a ganhar residentes mais depressa do que podem dar-se ao luxo de os servir — e nenhum governo central tem um plano."
*Enquadramento temporal:* Atemporal com ganchos de atualidade disponíveis

---

**3. As pessoas que voltaram**
*Pergunta central: Entre os que abandonaram as grandes cidades por cidades de média dimensão, quem regressou — e porquê?*
*Abordagem jornalística: Inquérito de auto-seleção de regressados urbanos mais 4 a 5 perfis em profundidade. Contraria a narrativa triunfalista da migração.*
*Publicação ideal:* Reportagem de cultura/estilo de vida
*Frase de pitch:* "As histórias de pessoas que se mudaram para uma cidade de média dimensão e a odiaram não se escrevem. Aqui estão cinco delas."
*Enquadramento temporal:* Atemporal; ângulo contraintuitivo

---

**4. O problema da exportação de habitação**
*Pergunta central: As pressões do mercado imobiliário urbano estão a ser exportadas para as cidades de média dimensão, deslocando os residentes de classe trabalhadora que já lá viviam?*
*Abordagem jornalística: Dados de preços imobiliários, entrevistas com residentes de longa data excluídos do seu mercado de arrendamento, associações locais de habitação.*
*Publicação ideal:* Reportagem económica/política social ou secção de investigação
*Frase de pitch:* "Em cidades onde os preços imobiliários foram estáveis durante décadas, a vaga de migração urbana criou uma nova crise de acessibilidade — para as pessoas que já lá estavam."
*Enquadramento temporal:* Atemporal com fortes oportunidades de ângulo local

---

**5. O perfil: o planeador urbano**
*Pergunta central: Quem está realmente a gerir esta transição — e o que pensa a respeito?*
*Abordagem jornalística: Perfil de sujeito único de um presidente de câmara, planeador ou diretor de desenvolvimento económico de uma cidade de média dimensão que lida com o surto migratório.*
*Publicação ideal:* Perfil de revista, suplemento dominical
*Frase de pitch:* "Viveu neste município toda a vida. Em três anos, tornou-se irreconhecível — e é ela quem todos chamam."
*Enquadramento temporal:* Atemporal; forte ângulo de interesse humano

---

**6. O mito da vida mais simples**
*Pergunta central: Mudar-se para uma cidade de média dimensão entrega realmente a melhoria de qualidade de vida que as pessoas esperam?*
*Abordagem jornalística: Dados de inquéritos longitudinais se disponíveis; entrevistas com migrantes urbanos na marca de 1 ano e 3 anos; enfoque em saúde mental e satisfação de vida.*
*Publicação ideal:* Secção de saúde/estilo de vida ou revista cultural
*Frase de pitch:* "Os estudos mostram que a satisfação de vida não melhora de forma fiável após uma mudança significativa. Então, porque é que as pessoas continuam a abandonar as grandes cidades — e são mais felizes?"
*Enquadramento temporal:* Atemporal; desafia a narrativa migratória sem a descartar

---

*Nota: Os ângulos 1, 3 e 5 são os mais sólidos para uma revista de formato longo generalista. Os ângulos 2 e 4 adaptam-se a uma secção de investigação ou política. O ângulo 6 é um pitch sólido para uma publicação de saúde ou estilo de vida. Nenhum destes requer o enfoque do trabalho remoto que queres evitar.*

## Limitações conhecidas
- Os ângulos são gerados apenas a partir da descrição do tema; o Claude não tem acesso a bases de dados de notícias atuais nem ao que foi publicado recentemente sobre este tema — verifica sempre que um ângulo não foi coberto recentemente antes de fazer um pitch
- A solidez de qualquer ângulo depende da disponibilidade de fontes e do acesso; um ângulo que requeira reportagem imersa pode ser inutilizável para um jornalista baseado noutro local
- Para notícias de última hora, a avaliação de sensibilidade temporal pode ser inexata sem contexto de eventos atuais; fornece a data e os desenvolvimentos recentes para uma classificação mais precisa de atemporal versus urgente

## Habilidades relacionadas
- [headline-generator](headline-generator.md)
- [research-brief-creator](research-brief-creator.md)
- [reportage-structure](../writing/reportage-structure.md)
