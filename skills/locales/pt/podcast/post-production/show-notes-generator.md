---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
language: pt
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Gerador de Notas de Episódio

## O que esta habilidade faz
Gera notas de episódio completas e otimizadas para SEO a partir de uma transcrição ou resumo de episódio — incluindo descrição do episódio, pontos-chave, marcas de tempo, biografia do convidado e secção de links — prontas a colar numa plataforma de alojamento de podcasts.

## Quando usar esta habilidade
- O teu episódio está pronto para publicar e precisas de notas escritas antes de ir para o ar
- Queres uma estrutura consistente de notas em todos os episódios em vez de escrever do zero cada vez
- Estás a pôr em dia um atraso de episódios que foram publicados sem notas adequadas
- Queres notas que funcionem tanto como referência útil para o ouvinte como texto detetável por SEO

## O que precisas de fornecer
**Obrigatório:** Título do episódio; uma transcrição (completa ou parcial) ou um resumo de 6 a 10 frases que cubra os temas principais discutidos
**Opcional:** Nome e biografia do convidado (ou biografia a incluir); links mencionados no episódio; informação do patrocinador; contas sociais do programa; links para plataformas de podcast (Apple Podcasts, Spotify, etc.) para a secção padrão; se são necessárias marcas de tempo; palavra-chave alvo para SEO

## Como o Claude aborda esta tarefa
1. Escreve o parágrafo de descrição inicial (100 a 150 palavras): o que cobre o episódio, quem é o convidado e o que o ouvinte vai obter — com a palavra-chave principal a aparecer naturalmente na primeira frase
2. Extrai 4 a 6 pontos-chave como tópicos — os insights ou argumentos específicos do episódio, não etiquetas genéricas de temas
3. Gera marcas de tempo para as transições de tema principais se for fornecida uma transcrição com temporização, ou anota as secções se não houver marcas de tempo disponíveis
4. Formata a biografia do convidado (se fornecida) num parágrafo limpo, acrescentando o seguimento social recomendado e os links do website
5. Estrutura a secção de links: recursos mencionados, links do convidado, perfis sociais do programa, notas de patrocinadores
6. Termina com uma linha "Próximo passo" recomendando o que fazer com a saída: em que plataforma colar, se executar episode-summary-writer primeiro se o conteúdo for escasso, ou se transcript-cleanup melhoraria o material de origem

## Formato de saída
Notas de episódio completas estruturadas com secções etiquetadas: Descrição do episódio, Pontos-chave, Momentos em destaque (com marcas de tempo se disponíveis), Biografia do convidado, Links e recursos. Extensão total: 350 a 550 palavras mais secção de links. Escrito para leitores que percorrem rapidamente: valor no início, pontos-chave em tópicos, formato de links limpo. Texto simples que se cola sem problemas em qualquer plataforma. A saída termina com uma breve nota "Próximo passo" que especifica a ação imediata: colar na plataforma de alojamento do podcast, acrescentar URLs reais aos marcadores de posição dos links, ou usar episode-summary-writer se o material de origem era um resumo em vez de uma transcrição completa.

## Critérios de qualidade
- [ ] A descrição do episódio contém a palavra-chave principal de forma natural dentro da primeira frase
- [ ] Os pontos-chave são específicos para este episódio — não descrições genéricas de temas
- [ ] A secção de biografia do convidado é distinta da descrição principal e inclui pelo menos um marcador de posição para link social
- [ ] A secção de links está formatada de forma limpa e inclui divulgação do patrocinador se aplicável
- [ ] O texto total das notas tem menos de 600 palavras (ótimo para visualização em plataforma e leitura rápida do ouvinte)
- [ ] Sem citações fabricadas ou afirmações do episódio que não estejam presentes no resumo ou transcrição fornecida
- [ ] A saída inclui pelo menos uma ação concreta que o utilizador pode tomar imediatamente (ex.: colar na plataforma, completar os marcadores de posição dos links, executar transcript-cleanup para melhor material de origem)

## Exemplo

### Entrada
Título do episódio: A ciência do sono que está a mudar a forma como os médicos tratam a insónia
Convidada: Dra. Valentina Reis, investigadora de medicina do sono e autora
Resumo do episódio: A conversa cobre: por que a TCC-I (terapia cognitivo-comportamental para a insónia) supera os comprimidos para dormir em resultados a longo prazo mas raramente é prescrita; como o cérebro consolida a memória durante o sono REM e o que a privação de sono faz a esse processo; mitos de higiene do sono versus o que a evidência realmente sustenta; por que as perturbações do sono estão dramaticamente sub-diagnosticadas nas mulheres; e a investigação atual da convidada sobre sono e risco de Alzheimer.
Biografia da convidada: A Dra. Valentina Reis é investigadora de medicina do sono e autora de "O Cérebro Descansado". Dirige o laboratório de sono e cognição numa importante universidade de investigação e assessora hospitais sobre protocolos de tratamento da insónia. Instagram: @valentinareisdoc (fictício). Website: valentinareis.com (fictício).
Links: O seu livro "O Cérebro Descansado", o website do seu laboratório
Palavra-chave: TCC-I tratamento insónia
Marcas de tempo disponíveis: Não

### Saída

**Descrição do episódio**

A TCC-I — terapia cognitivo-comportamental para a insónia — supera consistentemente os comprimidos para dormir em ensaios clínicos, mas a maioria dos pacientes com insónia nunca ouve falar dela. Neste episódio, a investigadora de medicina do sono Dra. Valentina Reis explica porquê, e o que a evidência realmente diz sobre como dormimos, por que temos dificuldades e o que genuinamente ajuda.

Falámos sobre a consolidação da memória durante o sono REM, por que as perturbações do sono estão dramaticamente sub-diagnosticadas nas mulheres, e o corpo crescente de investigação que liga a perturbação crónica do sono ao risco cognitivo a longo prazo. A Dra. Reis também analisa quais conselhos padrão de higiene do sono estão sustentados por evidência — e quais não.

---

**Pontos-chave**

- A TCC-I produz melhores resultados a longo prazo para a insónia do que os medicamentos, mas requer um prestador capacitado e demora mais a funcionar — por isso está sub-prescrita apesar da evidência
- A privação de sono interrompe a consolidação da memória a nível neurológico; uma única noite mal dormida afeta a capacidade do cérebro de processar e armazenar o que aprendeu nesse dia
- As mulheres são diagnosticadas com insónia a taxas mais baixas do que os homens apesar de reportarem sintomas a taxas mais altas — uma lacuna de diagnóstico que a Dra. Reis atribui em parte à forma como os estudos clínicos do sono têm sido historicamente desenhados
- A "higiene do sono" é real mas sobrevalorizada; fatores como a temperatura do quarto e a luz importam, mas são secundários aos padrões cognitivos e comportamentais que a TCC-I aborda
- A investigação emergente examina a ligação entre a perturbação crónica do sono e o risco de Alzheimer — uma área que a Dra. Reis chama "uma das questões mais importantes na ciência do sono neste momento"

---

**Momentos em destaque**

*(Marcas de tempo não disponíveis — consulta o episódio completo para localização dos segmentos)*
- Por que a TCC-I não é prescrita amplamente apesar da evidência
- O que o sono REM realmente faz pelo cérebro
- A lacuna de género no diagnóstico de perturbações do sono
- Higiene do sono: o que funciona e o que não funciona
- A fronteira de investigação sobre Alzheimer e sono

---

**Sobre a Dra. Valentina Reis**

A Dra. Valentina Reis é investigadora de medicina do sono e autora de *O Cérebro Descansado*. Dirige o laboratório de sono e cognição numa importante universidade de investigação e assessora hospitais sobre protocolos de tratamento da insónia.

Segue-a: Instagram @valentinareisdoc | valentinareis.com

---

**Links e recursos**

- *O Cérebro Descansado* da Dra. Valentina Reis — [link]
- Laboratório de investigação da Dra. Reis — [link]
- Subscreve o programa: [Apple Podcasts] [Spotify]
- Segue-nos: [conta social do programa]

---

## Limitações conhecidas
- Os pontos-chave são apenas tão específicos quanto a transcrição ou o resumo que forneceres; um resumo vago produz pontos-chave vagos — quanto mais detalhe deres, mais útil será a saída
- As marcas de tempo requerem uma transcrição com marcação temporal ou uma temporização aproximada dos segmentos para serem precisas; sem isto, a habilidade produz apenas etiquetas de secção
- O valor SEO das notas depende da plataforma; o Spotify e o Apple indexam as notas de episódio de formas diferentes, e a otimização para uma plataforma não garante desempenho na outra
- Esta habilidade não gera o título do episódio — fornece o título finalizado para um alinhamento preciso de palavras-chave na descrição

## Habilidades relacionadas
- [episode-summary-writer](episode-summary-writer.md)
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [transcript-cleanup](transcript-cleanup.md)
