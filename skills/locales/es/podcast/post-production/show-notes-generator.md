---
name: show-notes-generator
status: stable
category: podcast
subcategory: post-production
version: 1.0
eval_score: 4.4
language: es
tags: [podcast, post-production, show-notes, seo, metadata]
---

# Generador de Notas de Episodio

## Qué hace esta habilidad
Genera notas de episodio completas y optimizadas para SEO a partir de una transcripción o resumen de episodio — incluyendo descripción del episodio, puntos clave, marcas de tiempo, bio del invitado y sección de enlaces — listas para pegar en una plataforma de alojamiento de podcasts.

## Cuándo usar esta habilidad
- Tu episodio está listo para publicarse y necesitas notas escritas antes de que salga al aire
- Quieres una estructura consistente de notas en todos los episodios en lugar de escribir desde cero cada vez
- Estás al día con un retraso de episodios que se publicaron sin notas adecuadas
- Quieres notas que funcionen tanto como referencia útil para el oyente como texto descubrible por SEO

## Qué necesitas proporcionar
**Obligatorio:** Título del episodio; ya sea una transcripción (completa o parcial) o un resumen de 6 a 10 oraciones que cubra los temas principales discutidos
**Opcional:** Nombre y bio del invitado (o bio a incluir); enlaces mencionados en el episodio; información del patrocinador; cuentas sociales del programa; enlaces a plataformas de podcast (Apple Podcasts, Spotify, etc.) para la sección estándar; si se necesitan marcas de tiempo; palabra clave objetivo para SEO

## Cómo aborda Claude esta tarea
1. Escribe el párrafo de descripción inicial (100 a 150 palabras): qué cubre el episodio, quién es el invitado y qué obtendrá el oyente — con la palabra clave principal apareciendo naturalmente en la primera oración
2. Extrae 4 a 6 puntos clave como viñetas — los insights o argumentos específicos del episodio, no etiquetas genéricas de temas
3. Genera marcas de tiempo para los cambios de tema principales si se proporciona una transcripción con temporización, o anota las secciones si no hay marcas de tiempo disponibles
4. Formatea la bio del invitado (si se proporciona) en un párrafo limpio, agregando el seguimiento social recomendado y los enlaces de sitio web
5. Estructura la sección de enlaces: recursos mencionados, enlaces del invitado, perfiles sociales del programa, notas de patrocinadores
6. Cierra con una línea "Próximo paso" recomendando qué hacer con la salida: en qué plataforma pegar, si ejecutar episode-summary-writer primero si el contenido es escaso, o si transcript-cleanup mejoraría el material fuente

## Formato de salida
Notas de episodio completas estructuradas con secciones etiquetadas: Descripción del episodio, Puntos clave, Momentos destacados (con marcas de tiempo si están disponibles), Bio del invitado, Enlaces y recursos. Longitud total: 350 a 550 palabras más sección de enlaces. Escrito para lectores que hojean: valor al frente, puntos clave en viñetas, formato de enlaces limpio. Texto plano que se pega limpiamente en cualquier plataforma. La salida termina con una breve nota "Próximo paso" que especifica la acción inmediata: pegar en la plataforma de alojamiento del podcast, agregar URLs reales a los marcadores de posición de enlaces, o usar episode-summary-writer si el material fuente era un resumen en lugar de una transcripción completa.

## Criterios de calidad
- [ ] La descripción del episodio contiene la palabra clave principal de forma natural dentro de la primera oración
- [ ] Los puntos clave son específicos para este episodio — no descripciones genéricas de temas
- [ ] La sección de bio del invitado es distinta de la descripción principal e incluye al menos un marcador de posición para enlace social
- [ ] La sección de enlaces está formateada limpiamente e incluye divulgación del patrocinador si corresponde
- [ ] El texto total de las notas es inferior a 600 palabras (óptimo para visualización en plataforma y escaneo del oyente)
- [ ] Sin citas fabricadas o afirmaciones del episodio que no estén presentes en el resumen o transcripción proporcionada
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (ej.: pegar en la plataforma, completar los marcadores de posición de enlaces, ejecutar transcript-cleanup para mejor material fuente)

## Ejemplo

### Entrada
Título del episodio: La ciencia del sueño que está cambiando cómo los médicos tratan el insomnio
Invitado: Dra. Valentina Ruiz, investigadora de medicina del sueño y autora
Resumen del episodio: La conversación cubre: por qué la TCC-I (terapia cognitivo-conductual para el insomnio) supera a los somníferos en resultados a largo plazo pero rara vez se prescribe; cómo el cerebro consolida la memoria durante el sueño REM y qué le hace la privación de sueño a ese proceso; mitos de higiene del sueño versus lo que la evidencia realmente sustenta; por qué los trastornos del sueño están dramáticamente sub-diagnosticados en mujeres; y la investigación actual de la invitada sobre sueño y riesgo de Alzheimer.
Bio del invitado: La Dra. Valentina Ruiz es investigadora de medicina del sueño y autora de "El Cerebro Descansado". Dirige el laboratorio de sueño y cognición en una importante universidad de investigación y asesora a hospitales sobre protocolos de tratamiento del insomnio. Instagram: @valentinaruizdoc (ficticio). Sitio web: valentinaruiz.com (ficticio).
Enlaces: Su libro "El Cerebro Descansado", el sitio web de su laboratorio
Palabra clave: TCC-I tratamiento insomnio
Marcas de tiempo disponibles: No

### Salida

**Descripción del episodio**

La TCC-I — terapia cognitivo-conductual para el insomnio — supera consistentemente a los somníferos en ensayos clínicos, pero la mayoría de los pacientes con insomnio nunca escuchan hablar de ella. En este episodio, la investigadora de medicina del sueño Dra. Valentina Ruiz explica por qué, y qué dice realmente la evidencia sobre cómo dormimos, por qué tenemos dificultades y qué genuinamente ayuda.

Hablamos sobre la consolidación de la memoria durante el sueño REM, por qué los trastornos del sueño están dramáticamente sub-diagnosticados en mujeres, y el cuerpo creciente de investigación que vincula la alteración crónica del sueño con el riesgo cognitivo a largo plazo. La Dra. Ruiz también analiza qué consejos estándar de higiene del sueño están respaldados por evidencia — y cuáles no.

---

**Puntos clave**

- La TCC-I produce mejores resultados a largo plazo para el insomnio que los medicamentos, pero requiere un proveedor capacitado y tarda más en funcionar — por eso está sub-prescrita a pesar de la evidencia
- La privación de sueño interrumpe la consolidación de la memoria a nivel neurológico; una sola mala noche afecta la capacidad del cerebro para procesar y almacenar lo que aprendió ese día
- Las mujeres son diagnosticadas con insomnio a tasas más bajas que los hombres a pesar de reportar síntomas a tasas más altas — una brecha diagnóstica que la Dra. Ruiz atribuye en parte a cómo se han diseñado históricamente los estudios clínicos del sueño
- La "higiene del sueño" es real pero sobrevalorada; factores como la temperatura del ambiente y la luz importan, pero son secundarios a los patrones cognitivos y conductuales que aborda la TCC-I
- La investigación emergente examina la conexión entre la alteración crónica del sueño y el riesgo de Alzheimer — un área que la Dra. Ruiz llama "una de las preguntas más importantes en la ciencia del sueño ahora mismo"

---

**Momentos destacados**

*(Marcas de tiempo no disponibles — consulta el episodio completo para ubicaciones de segmentos)*
- Por qué la TCC-I no se prescribe ampliamente a pesar de la evidencia
- Qué hace realmente el sueño REM para el cerebro
- La brecha de género en el diagnóstico de trastornos del sueño
- Higiene del sueño: qué funciona y qué no
- La frontera de investigación sobre Alzheimer y sueño

---

**Sobre la Dra. Valentina Ruiz**

La Dra. Valentina Ruiz es investigadora de medicina del sueño y autora de *El Cerebro Descansado*. Dirige el laboratorio de sueño y cognición en una importante universidad de investigación y asesora a hospitales sobre protocolos de tratamiento del insomnio.

Síguela: Instagram @valentinaruizdoc | valentinaruiz.com

---

**Enlaces y recursos**

- *El Cerebro Descansado* de la Dra. Valentina Ruiz — [enlace]
- Laboratorio de investigación de la Dra. Ruiz — [enlace]
- Suscríbete al programa: [Apple Podcasts] [Spotify]
- Síguenos: [cuenta social del programa]

---

## Limitaciones conocidas
- Los puntos clave son solo tan específicos como la transcripción o el resumen que proporciones; un resumen vago produce puntos clave vagos — cuanto más detalle des, más útil es la salida
- Las marcas de tiempo requieren ya sea una transcripción marcada con tiempo o una temporización aproximada del segmento para ser precisas; sin esto, la habilidad produce solo etiquetas de sección
- El valor SEO de las notas depende de la plataforma; Spotify y Apple indexan las notas de episodio de manera diferente, y la optimización para una plataforma no garantiza rendimiento en la otra
- Esta habilidad no genera el título del episodio — proporciona el título terminado para una alineación precisa de palabras clave en la descripción

## Habilidades relacionadas
- [episode-summary-writer](episode-summary-writer.md)
- [guest-research-brief](../pre-production/guest-research-brief.md)
- [transcript-cleanup](transcript-cleanup.md)
