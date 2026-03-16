---
name: caption-writer
status: stable
category: social-media
subcategory: content
version: 1.0
eval_score: 4.4
language: es
tags: [social-media, content, captions, copywriting, instagram, linkedin, tiktok]
---

# Redactor de Pies de Foto

## Qué hace esta habilidad
Escribe pies de foto para redes sociales optimizados por plataforma para Instagram, LinkedIn, TikTok o Twitter/X a partir de un brief, extracto de artículo o descripción de contenido — adaptados a las convenciones de la plataforma y a la voz de la cuenta.

## Cuándo usar esta habilidad
- Necesitas pies de foto para un lote de publicaciones y quieres texto consistente y apropiado para cada plataforma
- Tienes un contenido (artículo, video, episodio de podcast, fotografía) y necesitas adaptarlo para redes sociales
- Tus pies de foto actuales se sienten genéricos y quieres que reflejen una voz o tono específico
- Estás publicando en múltiples plataformas y necesitas versiones diferentes de la misma historia

## Qué necesitas proporcionar
**Obligatorio:** La(s) plataforma(s) para las que estás escribiendo (Instagram, LinkedIn, TikTok, Twitter/X), de qué trata la publicación o qué muestra/enlaza, el efecto buscado (informar, provocar discusión, generar clics a un enlace, construir comunidad, entretener).

**Opcional:** La voz o tono de tu cuenta (formal, conversacional, con opiniones, seco, cálido), cualquier estrategia de hashtags o tags específicos a incluir, el tipo de cuenta (marca personal, medio de comunicación, documental, revista, podcast), un límite de caracteres o palabras.

## Cómo aborda Claude esta tarea
1. Identifica las convenciones de la plataforma y qué funciona bien en ese contexto — Instagram recompensa la narrativa visual y la calidez, LinkedIn recompensa el insight y la credibilidad profesional, TikTok recompensa la inmediatez y el humor o la autenticidad cruda, Twitter/X recompensa la brevedad y la opinión
2. Toma el contenido central y encuentra el ángulo más atractivo para la plataforma — no la descripción más completa del contenido, sino la oración o idea que hace que alguien deje de desplazarse
3. Escribe según las longitudes y convenciones estructurales naturales de la plataforma: gancho, cuerpo (o impacto inmediato), cierre (pregunta, CTA o remate), luego sugiere hashtags o elementos específicos de la plataforma si se solicita
4. Después de los pies de foto, proporciona una nota "Próximo paso": en qué plataforma publicar primero según dónde la audiencia de la cuenta es más activa, si se debe ejecutar thread-writer o carousel-script-writer para desarrollar más el contenido, y la ventana de publicación recomendada para cada plataforma

## Formato de salida
Un pie de foto por plataforma solicitada. Instagram: 125 a 200 palabras + sugerencias de hashtags (5 a 10 tags relevantes). LinkedIn: 100 a 150 palabras, sin relleno de hashtags. TikTok: 50 a 80 palabras, conversacional, rápido. Twitter/X: 240 a 280 caracteres, con una continuación en hilo opcional. Cada pie de foto claramente etiquetado con la plataforma. Emojis usados si son apropiados para la voz y la plataforma; omitidos si la cuenta es formal o seria. La salida termina con una nota "Próximo paso": qué pie de foto publicar primero, si ejecutar thread-writer o carousel-script-writer para extender el contenido, y la acción de programación recomendada.

## Criterios de calidad
- [ ] Cada pie de foto usa las convenciones específicas de su plataforma — no el mismo texto reformateado
- [ ] La línea de apertura funciona como gancho incluso en una vista previa/truncada (el pliegue "más" de Instagram)
- [ ] El efecto buscado (informar / provocar / generar clics / entretener) es evidente en la estructura del pie de foto
- [ ] Sin frases genéricas de relleno ("miren esto", "tan emocionado de compartir", "esto realmente impacta diferente")
- [ ] Los hashtags (donde se usan) son relevantes y no son solo relleno de alcance con tags irrelevantes
- [ ] La voz es consistente — si la cuenta usa primera persona, todos los pies de foto usan primera persona
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (programar el pie de foto de mayor prioridad, ejecutar thread-writer o carousel-script-writer para extender el contenido)

## Ejemplo

### Entrada
Plataforma: Instagram y LinkedIn
Contenido: Acaba de salir un nuevo episodio de un podcast documental de investigación. El episodio 6 analiza cómo una disposición legal diseñada para proteger a los denunciantes ha sido utilizada repetidamente por corporaciones para suprimir a periodistas. Se entrevista a tres abogados y dos ex periodistas cuyas historias fueron bloqueadas.
Tipo de cuenta: Podcast documental
Voz: Serio, directo, un poco seco
Efecto buscado: Generar escuchas, provocar discusión

### Salida

---

**INSTAGRAM**

La ley que supuestamente protege a los denunciantes.

El episodio 6 de [NOMBRE DEL PODCAST] examina cómo una disposición legal diseñada para proteger a quienes hablan se ha convertido silenciosamente en una de las herramientas más efectivas que las corporaciones utilizan para matar periodismo en su lugar.

Tres abogados. Dos periodistas cuyas historias nunca se publicaron. Y los documentos que explican por qué.

Enlace en bio.

*#periodismodeinvestigacion #podcastdocumental #libertaddeprensa #denunciantes #medios #periodismo #podcast #derechodemedia*

---

**LINKEDIN**

El episodio 6 de [NOMBRE DEL PODCAST] examina algo que no recibe suficiente atención: cómo los estatutos de protección de denunciantes — diseñados para fomentar la transparencia — se han convertido en instrumentos de litigación que silencian el periodismo de investigación.

Entrevistamos a tres profesionales del derecho y dos periodistas cuyas investigaciones fueron suprimidas usando estos mecanismos. Lo que describen es un patrón, no una serie de incidentes aislados.

Para cualquier persona que trabaje en derecho de medios, periodismo de investigación o libertad de prensa — este episodio vale tu tiempo.

Escucha en [enlace].

## Limitaciones conocidas
- La calidad de los pies de foto depende en gran medida de la calidad y especificidad de la entrada. Los briefs vagos ("escribe un pie de foto sobre nuestro documental") producen resultados genéricos — cuanto más específico sea el contenido y el efecto buscado, mejor será el pie de foto.
- Esta habilidad no tiene acceso a análisis de la plataforma. Las recomendaciones sobre qué "funciona bien" se basan en las convenciones generales de la plataforma, no en los datos de tu cuenta específica. El rendimiento histórico de tu propia cuenta es la guía más confiable.
- Las sugerencias de hashtags se basan en la relevancia con el tema, no en el rendimiento algorítmico actual. La efectividad de los hashtags cambia frecuentemente en Instagram y TikTok; trata las sugerencias como punto de partida y complementa con tu propia investigación.

## Habilidades relacionadas
- [thread-writer](thread-writer.md)
- [carousel-script-writer](carousel-script-writer.md)
- [short-form-video-brief](short-form-video-brief.md)
- [platform-strategy-brief](../strategy/platform-strategy-brief.md)
