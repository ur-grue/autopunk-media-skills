---
name: caption-writer
status: stable
category: social-media
subcategory: content
version: 1.0
eval_score: 4.4
language: pt
tags: [social-media, content, captions, copywriting, instagram, linkedin, tiktok]
---

# Redator de Legendas

## O que esta habilidade faz
Escreve legendas para redes sociais otimizadas por plataforma para Instagram, LinkedIn, TikTok ou Twitter/X a partir de um brief, excerto de artigo ou descrição de conteúdo — adaptadas às convenções da plataforma e à voz da conta.

## Quando usar esta habilidade
- Precisas de legendas para um lote de publicações e queres texto consistente e apropriado para cada plataforma
- Tens um conteúdo (artigo, vídeo, episódio de podcast, fotografia) e precisas de o adaptar para redes sociais
- As tuas legendas atuais soam genéricas e queres que reflitam uma voz ou tom específico
- Estás a publicar em múltiplas plataformas e precisas de versões diferentes da mesma história

## O que precisas de fornecer
**Obrigatório:** A(s) plataforma(s) para as quais estás a escrever (Instagram, LinkedIn, TikTok, Twitter/X), sobre o que é a publicação ou o que mostra/liga, o efeito pretendido (informar, provocar discussão, gerar cliques para um link, construir comunidade, entreter).

**Opcional:** A voz ou tom da tua conta (formal, conversacional, com opiniões, seco, caloroso), qualquer estratégia de hashtags ou tags específicos a incluir, o tipo de conta (marca pessoal, meio de comunicação, documentário, revista, podcast), um limite de caracteres ou palavras.

## Como o Claude aborda esta tarefa
1. Identifica as convenções da plataforma e o que funciona bem nesse contexto — o Instagram recompensa a narrativa visual e a calidez, o LinkedIn recompensa o insight e a credibilidade profissional, o TikTok recompensa a imediatez e o humor ou a autenticidade crua, o Twitter/X recompensa a brevidade e a opinião
2. Toma o conteúdo central e encontra o ângulo mais atrativo para a plataforma — não a descrição mais completa do conteúdo, mas a frase ou ideia que faz alguém parar de percorrer o feed
3. Escreve segundo as extensões e convenções estruturais naturais da plataforma: gancho, corpo (ou impacto imediato), fecho (pergunta, CTA ou remate), depois sugere hashtags ou elementos específicos da plataforma se solicitado
4. Após as legendas, fornece uma nota "Próximo passo": em que plataforma publicar primeiro segundo onde a audiência da conta é mais ativa, se se deve executar thread-writer ou carousel-script-writer para desenvolver mais o conteúdo, e a janela de publicação recomendada para cada plataforma

## Formato de saída
Uma legenda por plataforma solicitada. Instagram: 125 a 200 palavras + sugestões de hashtags (5 a 10 tags relevantes). LinkedIn: 100 a 150 palavras, sem preenchimento de hashtags. TikTok: 50 a 80 palavras, conversacional, rápido. Twitter/X: 240 a 280 caracteres, com uma continuação em thread opcional. Cada legenda claramente etiquetada com a plataforma. Emojis usados se forem apropriados para a voz e a plataforma; omitidos se a conta for formal ou séria. A saída termina com uma nota "Próximo passo": qual legenda publicar primeiro, se executar thread-writer ou carousel-script-writer para estender o conteúdo, e a ação de agendamento recomendada.

## Critérios de qualidade
- [ ] Cada legenda usa as convenções específicas da sua plataforma — não o mesmo texto reformatado
- [ ] A linha de abertura funciona como gancho mesmo numa pré-visualização/truncagem (a dobra "mais" do Instagram)
- [ ] O efeito pretendido (informar / provocar / gerar cliques / entreter) é evidente na estrutura da legenda
- [ ] Sem frases genéricas de preenchimento ("vejam isto", "tão entusiasmado por partilhar", "isto realmente atinge diferente")
- [ ] As hashtags (onde usadas) são relevantes e não são apenas preenchimento de alcance com tags irrelevantes
- [ ] A voz é consistente — se a conta usa primeira pessoa, todas as legendas usam primeira pessoa
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (agendar a legenda de maior prioridade, executar thread-writer ou carousel-script-writer para estender o conteúdo)

## Exemplo

### Entrada
Plataforma: Instagram e LinkedIn
Conteúdo: Acabou de sair um novo episódio de um podcast documental de investigação. O episódio 6 analisa como uma disposição legal desenhada para proteger denunciantes tem sido usada repetidamente por corporações para suprimir jornalistas. Entrevistam-se três advogados e dois ex-jornalistas cujas histórias foram bloqueadas.
Tipo de conta: Podcast documental
Voz: Sério, direto, um pouco seco
Efeito pretendido: Gerar escutas, provocar discussão

### Saída

---

**INSTAGRAM**

A lei que supostamente protege os denunciantes.

O episódio 6 de [NOME DO PODCAST] examina como uma disposição legal desenhada para proteger quem fala se tornou silenciosamente uma das ferramentas mais eficazes que as corporações utilizam para matar jornalismo.

Três advogados. Dois jornalistas cujas histórias nunca foram publicadas. E os documentos que explicam porquê.

Link na bio.

*#jornalismodeinvestigacao #podcastdocumental #liberdadedeimprensa #denunciantes #media #jornalismo #podcast #direitodosmedia*

---

**LINKEDIN**

O episódio 6 de [NOME DO PODCAST] examina algo que não recebe atenção suficiente: como os estatutos de proteção de denunciantes — desenhados para fomentar a transparência — se tornaram instrumentos de litigação que silenciam o jornalismo de investigação.

Entrevistámos três profissionais do direito e dois jornalistas cujas investigações foram suprimidas usando estes mecanismos. O que descrevem é um padrão, não uma série de incidentes isolados.

Para qualquer pessoa que trabalhe em direito dos media, jornalismo de investigação ou liberdade de imprensa — este episódio vale o teu tempo.

Ouve em [link].

## Limitações conhecidas
- A qualidade das legendas depende fortemente da qualidade e especificidade da entrada. Briefs vagos ("escreve uma legenda sobre o nosso documentário") produzem resultados genéricos — quanto mais específico for o conteúdo e o efeito pretendido, melhor será a legenda.
- Esta habilidade não tem acesso a analíticas da plataforma. As recomendações sobre o que "funciona bem" baseiam-se nas convenções gerais da plataforma, não nos dados da tua conta específica. O desempenho histórico da tua própria conta é o guia mais fiável.
- As sugestões de hashtags baseiam-se na relevância com o tema, não no desempenho algorítmico atual. A eficácia das hashtags muda frequentemente no Instagram e no TikTok; trata as sugestões como ponto de partida e complementa com a tua própria pesquisa.

## Habilidades relacionadas
- [thread-writer](thread-writer.md)
- [carousel-script-writer](carousel-script-writer.md)
- [short-form-video-brief](short-form-video-brief.md)
- [platform-strategy-brief](../strategy/platform-strategy-brief.md)
