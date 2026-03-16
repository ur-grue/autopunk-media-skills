---
name: story-angle-finder
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: es
tags: [journalism, ideation, angles, pitching, story-development]
---

# Buscador de Ángulo Editorial

## Qué hace esta habilidad
Genera 6 a 8 ángulos editoriales distintos a partir de un tema amplio o evento de actualidad, cada uno con una perspectiva única, público objetivo y enfoque periodístico.

## Cuándo usar esta habilidad
- Tienes un tema pero todavía no una historia — conoces el asunto pero no el ángulo específico que lo hace publicable
- Estás preparando un pitch y necesitas ver el rango completo de ángulos antes de decidir cuál desarrollar
- Un editor te asignó una sección o tema amplio y necesitas identificar el punto de entrada más convincente
- Quieres ver cómo el mismo evento podría cubrirse de manera diferente según los tipos de publicación (noticia, reportaje, opinión, perfil)

## Qué necesitas proporcionar
**Obligatorio:** El tema amplio, área temática o evento de actualidad con el que estás trabajando; tipo de publicación o medio objetivo (o describe tu audiencia si no hay un medio específico)
**Opcional:** Ángulos que ya has considerado y quieres evitar; fuentes específicas o datos a los que ya tienes acceso; alcance geográfico (local, nacional, internacional); marco temporal (de última hora, atemporal, aniversario); si necesitas una frase de pitch lista para usar para cada ángulo

## Cómo aborda Claude esta tarea
1. Identifica al menos seis lentes editoriales distintos a través de los cuales se puede abordar el tema: la historia personal/humana, el análisis sistémico/estructural, la historia de datos, la perspectiva histórica, el enfoque contraintuitivo o provocador, el perfil, y el explicador proceso/cómo-funciona — seleccionando los más apropiados para el tema
2. Para cada ángulo, especifica la pregunta central que respondería la historia, el tipo principal de periodismo requerido (documentos, fuentes, datos, observación) y el medio más probable para publicarlo
3. Marca qué ángulos son urgentes versus atemporales, y cuáles requieren acceso significativo versus investigación documental
4. Nota dónde los ángulos se superponen con la cobertura común para que el periodista pueda diferenciar su pitch
5. Cierra con una recomendación "Próximo paso": qué uno o dos ángulos desarrollar primero dado el acceso del usuario y el objetivo de publicación, y si ejecutar research-brief-creator o headline-generator como la próxima habilidad inmediata

## Formato de salida
6 a 8 briefs de ángulo numerados. Cada brief incluye: Nombre del ángulo (3 a 5 palabras), Pregunta central, Enfoque periodístico (2 oraciones), Tipo de publicación ideal, y una Frase de pitch (una oración, lista para incluir en un email de propuesta). Longitud total: 500 a 700 palabras. Sin jerga más allá del vocabulario editorial estándar. La salida termina con una nota "Próximo paso": qué ángulo desarrollar primero (basado en acceso y adecuación de publicación), y qué habilidad ejecutar después — research-brief-creator para construir el plan de reportaje o headline-generator para refinar la frase de pitch.

## Criterios de calidad
- [ ] Cada ángulo tiene una perspectiva editorial genuinamente distinta — no solo un encuadre diferente de la misma historia
- [ ] Cada ángulo incluye un enfoque periodístico concreto (no solo "entrevistar expertos")
- [ ] Al menos un ángulo es contraintuitivo o desafía el encuadre convencional del tema
- [ ] Al menos un ángulo es adecuado para un tratamiento de largo formato
- [ ] Las frases de pitch están listas para enviar — suficientemente específicas para mantenerse solas en un email
- [ ] La distinción urgente versus atemporal se hace para cada ángulo
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (qué ángulo desarrollar primero, y qué habilidad ejecutar después: research-brief-creator o headline-generator)

## Ejemplo

### Entrada
Tema: El número creciente de personas que abandonan las grandes ciudades latinoamericanas para mudarse a ciudades intermedias desde 2020
Tipo de publicación: Revista de interés general nacional
Evitar: Cualquier ángulo que en esencia diga "el trabajo remoto hizo que esto sucediera" (el editor dice que ya se ha hecho demasiado)

### Salida

**1. El municipio que obtuvo lo que deseaba**
*Pregunta central: ¿Qué le pasa a la cultura, los precios y el tejido social de una ciudad intermedia cuando llegan grandes cantidades de migrantes urbanos?*
*Enfoque periodístico: Reportaje inmerso en una ciudad específica que ha tenido un crecimiento poblacional significativo. Entrevistar residentes de largo plazo, dueños de negocios locales y los recién llegados.*
*Publicación ideal:* Revista nacional, largo formato
*Frase de pitch:* "En una ciudad intermedia de [región], la población creció un 20% en tres años. Esta es una historia sobre lo que piensan los antiguos residentes."
*Marco temporal:* Atemporal

---

**2. El choque de las infraestructuras**
*Pregunta central: ¿Pueden las infraestructuras de las ciudades intermedias — agua, escuelas, vías, servicios médicos — absorber el crecimiento demográfico urbano sin apoyo estatal?*
*Enfoque periodístico: Documentos públicos sobre presupuestos municipales, datos de matrícula escolar, y entrevistas con administradores municipales y planificadores regionales.*
*Publicación ideal:* Reportaje de investigación, sección de política
*Frase de pitch:* "Las ciudades intermedias están ganando residentes más rápido de lo que pueden permitirse atenderlos — y ningún gobierno estatal tiene un plan."
*Marco temporal:* Atemporal con ganchos de actualidad disponibles

---

**3. La gente que volvió**
*Pregunta central: Entre los que abandonaron las grandes ciudades por ciudades intermedias, ¿quién regresó — y por qué?*
*Enfoque periodístico: Encuesta de autoselección de retornantes urbanos más 4 a 5 perfiles en profundidad. Contrarresta la narrativa triunfalista de la migración.*
*Publicación ideal:* Reportaje de cultura/estilo de vida
*Frase de pitch:* "Las historias de personas que se mudaron a una ciudad intermedia y la odiaron no se escriben. Aquí hay cinco de ellas."
*Marco temporal:* Atemporal; ángulo contraintuitivo

---

**4. El problema de la exportación de vivienda**
*Pregunta central: ¿Las presiones del mercado inmobiliario urbano se están exportando a las ciudades intermedias, desplazando a los residentes de clase trabajadora que vivían allí de antemano?*
*Enfoque periodístico: Datos de precios inmobiliarios, entrevistas con residentes de largo plazo desplazados de su mercado de alquiler, asociaciones locales de vivienda.*
*Publicación ideal:* Reportaje económico/política social o sección de investigación
*Frase de pitch:* "En ciudades donde los precios inmobiliarios fueron estables durante décadas, la ola de migración urbana ha creado una nueva crisis de asequibilidad — para las personas que ya estaban allí."
*Marco temporal:* Atemporal con fuertes oportunidades de ángulo local

---

**5. El perfil: el planificador urbano**
*Pregunta central: ¿Quién está gestionando realmente esta transición — y qué piensa al respecto?*
*Enfoque periodístico: Perfil de sujeto único de un alcalde de ciudad intermedia, planificador o director de desarrollo económico que lidia con el auge migratorio.*
*Publicación ideal:* Perfil de revista, suplemento dominical
*Frase de pitch:* "Ha vivido en este municipio toda su vida. En tres años, se volvió irreconocible — y ella es a quien todos llaman."
*Marco temporal:* Atemporal; fuerte ángulo de interés humano

---

**6. El mito de la vida más sencilla**
*Pregunta central: ¿Mudarse a una ciudad intermedia realmente entrega la mejora de calidad de vida que la gente espera?*
*Enfoque periodístico: Datos de encuestas longitudinales si están disponibles; entrevistas con migrantes urbanos en la marca de 1 año y 3 años; enfoque de salud mental y satisfacción de vida.*
*Publicación ideal:* Sección de salud/estilo de vida o revista cultural
*Frase de pitch:* "Los estudios muestran que la satisfacción de vida no mejora de manera confiable después de una mudanza importante. Entonces, ¿por qué la gente sigue abandonando las grandes ciudades — y son más felices?"
*Marco temporal:* Atemporal; desafía la narrativa migratoria sin descartarla

---

*Nota: Los ángulos 1, 3 y 5 son los más sólidos para una revista de largo formato general. Los ángulos 2 y 4 se adaptan a una sección de investigación o política. El ángulo 6 es un pitch sólido para una publicación de salud o estilo de vida. Ninguno de estos requiere el enfoque del trabajo remoto que quieres evitar.*

## Limitaciones conocidas
- Los ángulos se generan solo a partir de la descripción del tema; Claude no tiene acceso a bases de datos de noticias actuales ni a lo que se ha publicado recientemente sobre este tema — siempre verifica que un ángulo no haya sido cubierto recientemente antes de hacer un pitch
- La solidez de cualquier ángulo depende de la disponibilidad de fuentes y el acceso; un ángulo que requiera reportaje inmerso puede ser inutilizable para un periodista basado en otro lugar
- Para noticias de última hora, la evaluación de sensibilidad temporal puede ser inexacta sin contexto de eventos actuales; proporciona la fecha y los desarrollos recientes para una clasificación más precisa de atemporal versus urgente

## Habilidades relacionadas
- [headline-generator](headline-generator.md)
- [research-brief-creator](research-brief-creator.md)
- [reportage-structure](../writing/reportage-structure.md)
