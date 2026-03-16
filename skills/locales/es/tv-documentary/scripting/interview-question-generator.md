---
name: interview-question-generator
status: stable
category: tv-documentary
subcategory: scripting
version: 1.0
eval_score: 4.5
language: es
tags: [documentary, scripting, interview, questions, subject-research]
---

# Generador de Preguntas de Entrevista

## Qué hace esta habilidad
Genera un conjunto de preguntas de entrevista orientado y estructurado para un sujeto documental específico — organizado por función narrativa, desde preguntas iniciales para crear confianza hasta las preguntas más desafiantes o reveladoras.

## Cuándo usar esta habilidad
- Estás preparando una entrevista documental y quieres preguntas que vayan más allá de lo que la investigación sola puede generar
- Tienes antecedentes sobre un sujeto pero necesitas una secuencia completa de preguntas organizada para el flujo en cámara
- Quieres preguntas que produzcan respuestas usables, emotivas y específicas en lugar de declaraciones preparadas
- Necesitas preguntas estructuradas de manera que el sujeto cuente su historia, en lugar de responder un cuestionario

## Qué necesitas proporcionar
**Obligatorio:** Quién es el sujeto y su rol en el documental; el ángulo editorial (qué intenta entender el film a través de esta entrevista); 3 a 5 hechos clave sobre el sujeto que ya se conocen
**Opcional:** Sobre qué temas el sujeto probablemente estará a la defensiva; escenas o secuencias específicas que la entrevista necesita apoyar (ej.: "necesitamos que describa el momento en que tomó la decisión"); tono del film; si es un film observacional donde la entrevista es el dispositivo narrativo principal, o un documental con imágenes de rodaje separadas

## Cómo aborda Claude esta tarea
1. Identifica el trabajo narrativo que esta entrevista particular necesita hacer en el film — lo que el sujeto solo puede proveer y que ningún otro elemento del documental puede
2. Abre el conjunto de preguntas con 3 a 4 preguntas de construcción de confianza: preguntas biográficas abiertas que dejan que el sujeto encuentre su voz ante la cámara, y que pueden generar contexto inesperado
3. Desarrolla la sección sustantiva del medio: 10 a 15 preguntas que progresan de factual a reflexivo a personalmente revelador, cada una construyendo sobre la respuesta natural que invita la pregunta anterior
4. Cierra con las preguntas difíciles o de alto riesgo — secuenciadas para que lleguen después de que se establezca la confianza, no al principio
5. Agrega notas de producción: qué preguntas tienen más probabilidad de producir fragmentos sonoros usables, cuáles pueden necesitar un silencio de seguimiento, y cuáles se pueden eliminar si el tiempo es escaso
6. Después del conjunto de preguntas, proporciona una nota "Próximo paso": cuáles tres preguntas son las más críticas si el tiempo es limitado, qué preparar antes del rodaje (permisos, investigación adicional), y si se debe ejecutar scene-breakdown-writer para planificar el contexto visual alrededor de la entrevista

## Formato de salida
Lista de preguntas numerada, organizada en tres secciones etiquetadas: Apertura (3 a 4 preguntas), Sustantiva (10 a 15 preguntas) y Alto Riesgo (3 a 5 preguntas). Cada sección precedida por un párrafo de notas del director explicando el propósito de la sección. Notas de producción en 3 a 4 preguntas a lo largo. Total: 20 a 25 preguntas. 500 a 700 palabras. La salida termina con una nota "Próximo paso": las tres preguntas a priorizar si el tiempo es limitado, qué tener preparado antes del rodaje, y si ejecutar scene-breakdown-writer para planificar la cobertura visual alrededor de la entrevista.

## Criterios de calidad
- [ ] Ninguna pregunta puede responderse con "sí" o "no" — todas las preguntas son abiertas
- [ ] Las preguntas están en lenguaje conversacional ordinario — no el lenguaje de una entrevista formal o cuestionario
- [ ] Al menos dos preguntas piden al sujeto que describa un momento o escena específica, no una experiencia general
- [ ] La secuencia va de segura a sensible — las preguntas de alto riesgo no aparecen en la primera sección
- [ ] Las notas de producción señalan qué preguntas son más críticas para las necesidades editoriales del film
- [ ] Ninguna pregunta incorpora un supuesto con el que el sujeto debe estar de acuerdo para responder
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (identificar las tres preguntas imprescindibles, preparar autorizaciones, o ejecutar scene-breakdown-writer para planificación visual)

## Ejemplo

### Entrada
Sujeto: El director de un hospital regional que tomó la decisión de cancelar cirugías programadas durante una crisis de capacidad, una decisión que fue públicamente criticada
Rol en el documental: Sujeto institucional principal — la persona que tomó la decisión que el film está examinando
Ángulo editorial: El film explora cómo los administradores de salud toman decisiones bajo restricciones de recursos, y el costo personal de la autoridad institucional
Hechos conocidos: Ha trabajado en administración hospitalaria durante 22 años; fue públicamente criticado en medios locales; nunca ha dado una entrevista filmada sobre la decisión específica; es conocido por ser metódico y cuidadoso en cómo habla
A la defensiva sobre: Las discusiones internas específicas que precedieron la decisión; si cree que tomó la decisión correcta

### Salida

**APERTURA — Establecer voz y mundo** *(Objetivo: dejar que el sujeto se establezca en la entrevista y encuentre su registro antes de abordar el material central.)*

1. Llevas más de veinte años en administración hospitalaria. ¿Qué implica realmente este trabajo en el día a día — no la versión de una descripción de puesto, sino la versión que vives?
2. Llévame de vuelta a cuando llegaste a este cargo. ¿Qué pensabas que sería, y qué resultó ser diferente?
3. Cuando le explicas lo que haces a alguien que no tiene idea de cómo funciona un hospital — en una conversación en una reunión social — ¿cómo lo explicas?
4. ¿Qué crees que la mayoría de la gente malentiende sobre cómo se toman las decisiones dentro de un hospital?

*(Nota de producción: La pregunta 4 a menudo genera las respuestas más francas. Los sujetos que han sentido que fueron malrepresentados públicamente tienden a responder esta con extensión. Déjala correr.)*

---

**SUSTANTIVA — La decisión y su contexto** *(Objetivo: construir hacia el evento específico a través del contexto, de manera que el sujeto esté narrando en lugar de defendiéndose.)*

5. Llévame a ese período — las semanas previas a la decisión. ¿Cuál era la situación operativa dentro del hospital?
6. ¿Quién más estaba en la sala cuando se estaba discutiendo esto? ¿Qué roles tenían?
7. ¿En qué momento entendiste que se iba a tener que tomar una decisión — no en abstracto, sino que iba a caer sobre ti específicamente?
8. Descríbeme la información que tenías delante en el momento en que tomaste la decisión. ¿Qué estabas evaluando?
9. ¿Hubo opciones que consideraste y dejaste de lado? ¿Cuáles eran?
10. ¿Cuánto tiempo tardó realmente la decisión — desde el punto en que era real hasta el punto en que dijiste: esto es lo que vamos a hacer?
11. ¿A quién le dijiste primero, y cómo lo explicaste?
12. ¿Cuál era tu expectativa de cómo iba a ser recibido?
13. Cuando llegó la crítica pública — ¿cómo la encontraste por primera vez? ¿Dónde estabas?
14. ¿Hay algo sobre la cobertura de aquella época que pienses que estuvo bien?

*(Nota de producción: La pregunta 14 es un suavizante antes de la versión más difícil. Los invita a reconocer algo verdadero antes de ser preguntados sobre lo que estuvo mal.)*

15. ¿Qué querrías que alguien que pasó por una cirugía cancelada durante ese período entendiera sobre cómo se tomó esa decisión?

---

**ALTO RIESGO — Reflexión y balance** *(Objetivo: crear espacio para que el sujeto exprese duda, arrepentimiento o convicción. Estas son las preguntas más importantes de la entrevista. No las apresures.)*

16. Si hubieras tenido más información — recursos, tiempo, una opción que no tenías — ¿habrías tomado una decisión diferente?
17. ¿Crees que tomaste la decisión correcta?

*(Nota de producción: Después de la pregunta 17, permanece en silencio. No parafrasees ni los rescates de la pregunta. La respuesta que llega después de una pausa es a menudo la que el film necesita.)*

18. ¿Qué costo tiene esa decisión para ti, personalmente? No profesionalmente — personalmente.
19. Veintidós años a partir de ahora, cuando alguien más ocupe un cargo como el tuyo y se enfrente a algo así — ¿qué quieres que sepa?
20. ¿Hay algo sobre esto que nunca te hayan preguntado, y que quieres que quede registrado?

*(Nota de producción: La pregunta 20 frecuentemente produce la respuesta más inesperada de la entrevista. Guárdala para el final. Dale espacio.)*

---

## Limitaciones conocidas
- Las preguntas se generan a partir de la información que proporcionas; cuanto más específico sea tu brief sobre el sujeto, más orientadas serán las preguntas — un brief vago produce preguntas genéricas
- La técnica de entrevista documental varía significativamente según el estilo del director; algunos directores prefieren pocas preguntas y máximo silencio; adapta este conjunto de preguntas a tu enfoque en lugar de seguirlo mecánicamente
- Las preguntas de alto riesgo sobre asuntos legales o regulatorios deben ser revisadas con el asesor legal del documental antes del rodaje; algunas líneas de interrogación pueden crear exposición a responsabilidad
- Esta habilidad no tiene en cuenta si un sujeto tiene asesoría legal presente o ha sido entrenado; ajusta tu secuenciación en tiempo real según qué tan a la defensiva parezca el sujeto

## Habilidades relacionadas
- [scene-breakdown-writer](scene-breakdown-writer.md)
- [interview-question-builder](../../podcast/pre-production/interview-question-builder.md)
- [pitch-treatment-writer](../development/pitch-treatment-writer.md)
