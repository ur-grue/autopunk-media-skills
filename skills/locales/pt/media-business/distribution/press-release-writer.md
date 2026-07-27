---
name: press-release-writer
status: stable
category: media-business
subcategory: distribution
version: 1.0
eval_score: 4.4
language: pt
tags: [media-business, distribution, press-release, pr, publicity]
---

# Redator de Comunicado de Imprensa

## O que esta habilidade faz
Escreve um comunicado de imprensa profissional anunciando uma estreia, encomenda, prémio ou marco de produção de um projeto mediático, formatado para distribuição a jornalistas do setor do entretenimento e imprensa especializada.

## Quando usar esta habilidade
- Um projeto foi encomendado, aprovado ou adquirido e precisa de um anúncio formal
- Um filme ou série tem estreia num festival e precisas de materiais de imprensa prontos no dia do anúncio
- Um projeto ganhou um prémio ou foi selecionado para um programa importante
- Uma produtora anuncia uma nova parceria importante, coprodução ou acordo de distribuição
- Um podcast ou canal de YouTube lança uma nova temporada ou atinge um marco

## O que precisas de fornecer
**Obrigatório:** O anúncio a ser feito (o que aconteceu exatamente), título e formato do projeto, nome da produtora, talento-chave envolvido (realizador, apresentador, produtor executivo), e o canal ou distribuidor envolvido se aplicável.

**Opcional:** Data de transmissão ou lançamento, citações do talento ou executivos-chave, breve descrição ou sinopse do projeto, qualquer outro contexto (historial de prémios, séries anteriores, antecedentes de produção), data de embargo se aplicável.

## Como o Claude aborda esta tarefa
1. Escreve um título que expõe a notícia factualmente — quem fez o quê — sem linguagem promocional nem antecipações vagas
2. Abre o corpo com um parágrafo de entrada que entrega a informação essencial (quem, o quê, quando, onde) em 40 a 60 palavras, depois expande com descrição do projeto, citações do talento e contexto de fundo em ordem decrescente de valor noticioso
3. Fecha com uma secção padrão de Notas para Editores que cobre os antecedentes da produtora, o marcador de posição de dados de contacto e quaisquer detalhes técnicos relevantes (duração, canal, janela de lançamento)
4. Após o corpo do comunicado, fornece uma nota "Próximo passo" enumerando as três ações imediatas: completar as citações e contactos em falta, identificar os destinatários de imprensa especializada a contactar primeiro, e estabelecer a data de distribuição ou o embargo

## Formato de saída
Título + corpo + Notas para Editores. Corpo: 350 a 500 palavras. Formato padrão de agências de comunicação lusófonas: parágrafos bem separados, citações nos seus próprios parágrafos, boilerplate no final. Profissional e factual em todo o momento — sem linguagem de marketing, sem pontos de exclamação, sem afirmações que o jornalista não possa verificar. Todas as citações claramente atribuídas. Linha de embargo no topo se aplicável. A saída termina com uma nota "Próximo passo" que especifica as ações imediatas antes da distribuição: substituir marcadores de posição, confirmar que as citações estão aprovadas e identificar quais meios especializados contactar primeiro.

## Critérios de qualidade
- [ ] O título expõe a notícia em menos de 12 palavras, sem superlativos
- [ ] O parágrafo de entrada responde quem, o quê, quando e onde sem que o leitor precise de continuar
- [ ] Pelo menos uma citação do talento incluída e claramente atribuída
- [ ] A descrição do projeto é factual, não promocional
- [ ] Secção de Notas para Editores presente com antecedentes da produtora e marcador de posição de contacto
- [ ] Sem linguagem de marketing ("revolucionário", "imperdível", "histórico") em nenhum ponto do texto
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (substituir os marcadores de posição de citações e contactos, obter aprovação do talento nomeado, identificar os primeiros meios-alvo)

## Exemplo

### Entrada
Anúncio: Encomenda — uma série documental de 3 partes foi encomendada por um importante canal de televisão pública lusófono
Título: O Peso do Silêncio
Formato: Série documental 3 x 52 minutos
Produtora: Norte Filmes
Realizadora: Helena Vasconcelos
Produtor Executivo (lado do canal): [nome a inserir]
Canal: Canal público regional (lusófono)
Tema: A série acompanha três músicos surdos em diferentes regiões lusófonas enquanto navegam carreiras numa indústria que não foi construída para eles
Janela de transmissão: Outono 2026
Citação da realizadora: "Há oito anos que quero fazer esta série. Estes músicos mudaram a forma como penso sobre o som."
Citação do executivo do canal: A CONFIRMAR — acrescento manualmente

### Saída

**PARA DIVULGAÇÃO IMEDIATA**

---

**CANAL PÚBLICO REGIONAL ENCOMENDA A SÉRIE DOCUMENTAL EM TRÊS PARTES O PESO DO SILÊNCIO À NORTE FILMES**

*A série terá a sua estreia no Outono de 2026; acompanha três músicos surdos a navegar a indústria musical lusófona*

---

O Canal Público Regional encomendou O PESO DO SILÊNCIO, uma série documental em três partes produzida pela Norte Filmes. A série estrear-se-á no Canal no Outono de 2026.

Realizada por Helena Vasconcelos, O PESO DO SILÊNCIO acompanha três músicos surdos — um percussionista clássico, um produtor de música eletrónica e uma vocalista de jazz — ao longo de três anos das suas carreiras numa indústria construída em torno da audição. A série observa o seu trabalho, as suas relações com colaboradores e audiências, e as adaptações, recusas e invenções que fizeram para praticar e atuar.

Helena Vasconcelos declarou: "Há oito anos que quero fazer esta série. Estes músicos mudaram a forma como penso sobre o som."

[Citação do Produtor Executivo do Canal a inserir.]

A série é produzida pela Norte Filmes e produzida executivamente no lado da produção por [nome do PE]. As filmagens principais começam na Primavera de 2025. Cada episódio tem 52 minutos de duração.

---

**Notas para Editores**

**Sobre O PESO DO SILÊNCIO**
O PESO DO SILÊNCIO é uma série documental observacional de 3 partes. 3 x 52 minutos. Encomendada pelo Canal Público Regional. Produzida pela Norte Filmes. Transmissão prevista: Outono 2026.

**Sobre a Norte Filmes**
[Antecedentes da empresa — duas frases sobre o historial da empresa e as suas produções anteriores.]

**Contacto de imprensa**
[Nome]
[Email]
[Telefone]

**Imagens**
As fotografias de produção em alta resolução estão disponíveis a pedido.

## Limitações conhecidas
- As citações do talento devem ser fornecidas pelo utilizador — a habilidade gerará citações de marcador de posição se não forem fornecidas, mas devem ser substituídas por citações reais aprovadas antes da distribuição. Nunca envies um comunicado de imprensa com citações fabricadas.
- A habilidade formata de acordo com as convenções da imprensa especializada lusófona. A imprensa especializada norte-americana (Deadline, Variety) tem convenções de estilo ligeiramente diferentes que podem requerer ajustes manuais menores.
- Os comunicados de imprensa para plataformas de streaming podem precisar de seguir os próprios requisitos de modelo de PR da plataforma, que variam segundo o distribuidor.

## Habilidades relacionadas
- [festival-strategy-brief](festival-strategy-brief.md)
- [distributor-outreach-email](distributor-outreach-email.md)
- [streaming-platform-pitch](streaming-platform-pitch.md)
