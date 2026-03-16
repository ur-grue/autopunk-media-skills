---
name: social-media-excerpt
status: stable
category: magazine-journalism
subcategory: distribution
version: 1.0
eval_score: 4.4
language: es
tags: [journalism, distribution, social-media, twitter, instagram, linkedin]
---

# Extracto para Redes Sociales

## Qué hace esta habilidad
Extrae y reformatea el pasaje o argumento más compartible de un artículo publicado en publicaciones específicas para cada plataforma — sin reescribir el periodismo.

## Cuándo usar esta habilidad
- Tu artículo está publicado y necesitas contenido social listo para publicar que genere tráfico o construya audiencia
- Quieres anticipar un artículo de pago en redes sociales sin revelar sus conclusiones principales
- Estás reutilizando un largo formato en un calendario de redes sociales y necesitas múltiples publicaciones distintas de una sola pieza
- Quieres que el extracto suene como el artículo — no como texto de marketing

## Qué necesitas proporcionar
**Obligatorio:** Texto completo del artículo o un extracto sustancial (al menos 400 palabras); qué plataformas formatear (X/Twitter, Instagram, LinkedIn, o las tres)
**Opcional:** Handle/nombre de usuario de la publicación para atribución; pasaje específico que crees que es el más compartible; directiva de tono (estilo hilo/comentario vs. estilo tarjeta de cita vs. extracto directo); si incluir un enlace y llamado a la lectura; estado de pago

## Cómo aborda Claude esta tarea
1. Lee el artículo completo e identifica 2 a 3 candidatos de extracto: la oración o estadística más impactante, la cita más sólida de una fuente, y la afirmación más contraintuitiva o sorprendente del artículo
2. Para cada plataforma, formatea el extracto para adaptarse al registro natural y las convenciones de caracteres de la plataforma — no solo truncación, sino adaptación estructural
3. Para X/Twitter: una publicación inicial de 240 caracteres que funcione de forma autónoma, opcionalmente seguida de una continuación en hilo de 2 a 3 tweets
4. Para LinkedIn: un encuadre de contexto ligeramente más largo antes del extracto, cerrando con una conclusión profesional
5. Para Instagram: un formato de tarjeta de cita con un pie de foto que extiende el pensamiento
6. Preserva la voz del artículo — estas publicaciones deben leer como periodismo, no como publicidad promocional de él
7. Cierra con una nota "Próximo paso": qué publicación hacer primero, si programar el hilo o publicar todas las plataformas simultáneamente, y si se debe ejecutar thumbnail-concept-brief para crear un activo visual correspondiente para la tarjeta de cita de Instagram

## Formato de salida
Bloques plataforma por plataforma, claramente etiquetados. Cada bloque contiene el texto de la publicación, una nota sobre el conteo de caracteres y orientación de uso de una línea. El texto de la tarjeta de cita (para Instagram) está claramente separado del pie de foto. Longitud total: 350 a 500 palabras según las plataformas solicitadas. Texto plano a lo largo — sin HTML. La salida termina con una nota "Próximo paso": en qué plataforma publicar primero, si publicar simultáneamente o escalonar, y si usar thumbnail-concept-brief para crear el visual de Instagram.

## Criterios de calidad
- [ ] Cada extracto está extraído del artículo real — sin paráfrasis o adición editorial que no esté en el texto
- [ ] La publicación de X/Twitter funciona como una oración autónoma — no requiere hacer clic en el enlace para tener sentido
- [ ] La publicación de LinkedIn incluye una línea de encuadre que da contexto profesional antes del extracto
- [ ] El texto de la tarjeta de cita de Instagram tiene menos de 200 caracteres (legible a tamaño miniatura)
- [ ] Ninguna publicación sobrevalora ni exagera las afirmaciones del artículo más allá de lo que el texto sustenta
- [ ] El formato de atribución es consistente con las convenciones de la plataforma
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (publicar en la primera plataforma, programar el hilo, o ejecutar thumbnail-concept-brief para el visual de Instagram)

## Ejemplo

### Entrada
Extracto del artículo (de un reportaje sobre la ciencia del sueño):

*"El consejo dominante sobre el sueño ha repetido el mismo número — ocho horas — durante décadas, pero la investigación detrás de ese número es más frágil de lo que la mayoría de las personas se dan cuenta. Una serie de grandes estudios en la década de 2010 encontró que los adultos que reportaban dormir exactamente ocho horas no vivían, en promedio, más tiempo ni tenían mejor rendimiento en pruebas cognitivas que quienes dormían seis y medio o siete. Lo que la investigación muestra consistentemente no es un número óptimo, sino un rango — y el extremo inferior de ese rango, para la mayoría de los adultos sanos, está más cerca de seis horas que de ocho.*

*'Le hemos estado vendiendo a la gente un número en lugar de un principio', dice la Dra. Camila Morales, investigadora del sueño en una universidad latinoamericana que no estuvo involucrada en ninguno de los estudios comerciales. 'El principio es: duerme hasta sentirte restaurado. El número es una conveniencia de mercadotecnia.'"*

Plataformas: X/Twitter, LinkedIn, Instagram
Handle de la publicación: @revistalatam (ficticio)
Pago: Sí

### Salida

---

**X / Twitter**

Publicación: *"'Le hemos estado vendiendo a la gente un número en lugar de un principio. El principio es: duerme hasta sentirte restaurado. El número es una conveniencia de mercadotecnia.'"* — investigadora del sueño sobre por qué la regla de las 8 horas es más frágil de lo que crees. [@revistalatam, enlace en bio — suscriptores]

*(239 caracteres con atribución. Funciona como cita autónoma. Estado de pago divulgado con indicación "suscriptores".)*

**Continuación de hilo opcional:**
2/ La investigación es más compleja que el consejo. Grandes estudios en la década de 2010 no encontraron ventajas de mortalidad ni rendimiento cognitivo para personas que durmieron exactamente 8 horas versus quienes durmieron 6.5 a 7. Lo que muestra la ciencia es un rango — no un número.
3/ Artículo completo en el enlace — vale la pena si alguna vez te has sentido culpable por no llegar a las ocho horas.

---

**LinkedIn**

Los consejos sobre el sueño han repetido el mismo número — ocho horas — durante décadas. La investigación detrás de ese número está más en disputa de lo que la mayoría sabe.

*"Le hemos estado vendiendo a la gente un número en lugar de un principio. El principio es: duerme hasta sentirte restaurado. El número es una conveniencia de mercadotecnia."*

Eso es una investigadora del sueño citada en un nuevo reportaje sobre lo que la ciencia realmente dice — y por qué el consenso es más complejo que el titular. Relevante para cualquiera que gestione su propio horario, el bienestar de su equipo, o las normas de productividad laboral.

[Enlace] (Artículo de suscripción — @revistalatam)

*(~175 palabras. Encuadre con contexto. Ángulo de relevancia profesional. Atribución y nota de pago incluidas.)*

---

**Instagram**

*Texto de tarjeta de cita (menos de 200 caracteres):*
"Le hemos estado vendiendo a la gente un número en lugar de un principio. El principio es: duerme hasta sentirte restaurado."
— Investigadora del sueño, @revistalatam

*Pie de foto:*
Ocho horas. Ese es el número que todos conocen. ¿Pero de dónde viene — y la investigación realmente lo respalda? Un nuevo reportaje analiza la ciencia. Enlace en bio (artículo de suscripción).

---

## Limitaciones conocidas
- Esta habilidad extrae y formatea; no genera nuevas afirmaciones editoriales — si el artículo no contiene una cita sólida autónoma o una estadística impactante, las publicaciones sociales tendrán impacto limitado
- El rendimiento de artículos de pago en redes sociales varía significativamente según la plataforma y la audiencia; LinkedIn suele superar a X para contenido de pago porque el encuadre puede establecer valor profesional antes del clic
- Para Instagram, el contexto visual (la imagen o gráfico emparejado con la tarjeta de cita) no se aborda aquí — usa la habilidad thumbnail-concept-brief o las habilidades de dirección de arte para los recursos visuales
- La selección del pasaje es subjetiva; si tienes una línea específica en mente, proporcíonala — la selección de Claude puede no coincidir con el criterio editorial sobre qué es más representativo del texto

## Habilidades relacionadas
- [newsletter-teaser-writer](newsletter-teaser-writer.md)
- [headline-generator](../ideation/headline-generator.md)
- [thumbnail-concept-brief](../../../youtube/pre-production/thumbnail-concept-brief.md)
