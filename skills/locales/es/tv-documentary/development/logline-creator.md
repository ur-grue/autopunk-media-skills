---
name: logline-creator
status: stable
category: tv-documentary
subcategory: development
version: 1.0
eval_score: 4.5
language: es
tags: [documentary, development, logline, pitching, synopsis]
---

# Creador de Logline

## Qué hace esta habilidad
Elabora 4 a 6 opciones de logline precisas y convincentes para cualquier proyecto documental, que van desde una sola oración hasta una forma de dos oraciones, cada una con un énfasis diferente.

## Cuándo usar esta habilidad
- Estás preparando un pitch y necesitas un logline antes de poder escribir un tratamiento completo
- Tu logline es demasiado larga, demasiado vaga o no está llegando a los comisionistas o financiadores
- Necesitas versiones diferentes para diferentes contextos: sumisión a festival, pitch a difusor, comunicado de prensa o bio en redes sociales
- Tienes un documental complejo de múltiples sujetos y necesitas encontrar la oración única que lo sostiene

## Qué necesitas proporcionar
**Obligatorio:** Una descripción de tu proyecto documental — el sujeto, la historia central o el argumento, y los personajes o eventos clave en el centro
**Opcional:** Difusor o contexto de festival objetivo; tono del film (observacional, polémico, íntimo, cinéma-vérité); qué hace diferente a esta película de otras sobre el mismo tema; cualquier logline o sinopsis existente que quieras mejorar

## Cómo aborda Claude esta tarea
1. Identifica la columna vertebral dramática del documental — no el tema, sino el conflicto, pregunta o transformación específica que el film seguirá desde la apertura hasta la resolución
2. Localiza el sujeto (quién o qué), el stake (qué está en riesgo o en cuestión) y el ángulo específico (qué ve esta película que otras no han visto) — los tres componentes estructurales de un logline funcional
3. Genera variaciones a través de diferentes estructuras de logline: la forma impulsada por el personaje ("Un [sujeto] que [situación] debe [objetivo] antes de que [stakes]"), la forma de declaración temática, la forma interrogativa, y la forma comprimida de dos cláusulas usada en pitches a difusores
4. Calibra la longitud al contexto: un logline de festival tiene 25 a 40 palabras; una línea de pitch a difusor puede tener hasta dos oraciones; una línea de prensa/redes sociales debe funcionar en menos de 20 palabras

## Formato de salida
4 a 6 opciones de logline numeradas. Cada una está etiquetada con su forma estructural y contexto previsto (festival, difusor, prensa, redes sociales). Una anotación de una línea sigue a cada una, explicando el énfasis o compromiso específico realizado. Longitud total: 250 a 350 palabras.

## Criterios de calidad
- [ ] Cada logline identifica el sujeto, la tensión central y los stakes
- [ ] Ningún logline describe el tema sin el ángulo específico ("una película sobre el cambio climático" falla; "una película sobre los científicos que predijeron la crisis y fueron ignorados durante veinte años" funciona)
- [ ] La opción más corta tiene menos de 25 palabras y funciona como línea de pitch autónoma
- [ ] Al menos una opción está calibrada para un pitch a difusor (puede ser dos oraciones)
- [ ] Ningún logline contiene jerga, detalles de producción o lenguaje técnico
- [ ] Ninguna de las opciones es intercambiable — cada una enfatiza un aspecto diferente del film

## Ejemplo

### Entrada
Descripción del proyecto: Un documental que sigue a una ex contadora forense de organismos públicos que, a sus setenta años, comenzó a investigar fraudes financieros en empresas municipales de agua potable en tres provincias. En cinco años, identificó 14 casos de malversación que afectaron a pequeños municipios. Varios casos llevaron a procesamientos. No tiene autoridad formal y trabaja completamente sola. El film es observacional, siguiendo sus investigaciones actuales.
Contexto del difusor: Canal documental de un difusor público importante, serio pero accesible
También se necesita línea de prensa/redes sociales

### Salida

1. **La forma impulsada por el personaje** *(pitch a difusor)*
"Trabajando sola y sin autoridad legal, una ex contadora forense de setenta años lleva cinco años investigando fraudes financieros en las empresas municipales de agua de pequeños municipios — y los fiscales siguen llamándola de vuelta."
*(Énfasis: su agencia y la paradoja de la validación institucional. Fuerte para contexto de difusor.)*

2. **La forma interrogativa** *(sumisión a festival)*
"¿Quién vigila a quienes gestionan el agua que bebes? En tres provincias, la respuesta ha sido una contadora retirada con una planilla de cálculo y la convicción de que el fraude siempre se puede encontrar."
*(Énfasis: la pregunta sistémica detrás de la historia personal.)*

3. **La forma temática** *(comunicado de prensa)*
"Un retrato de la convicción de una mujer de que los recursos públicos pertenecen al público — y la investigación de cinco años que le dio la razón catorce veces."
*(Énfasis: el argumento moral. Funciona bien en contextos editoriales.)*

4. **La forma comprimida de dos cláusulas** *(línea única para difusor)*
"Una ex contadora forense investiga malversaciones en empresas municipales de agua — desde el interior de su propio automóvil, sin autoridad legal, y con una tasa de procesamiento del 100%."
*(Énfasis: el absurdo productivo de la situación. La "tasa de procesamiento del 100%" es el gancho.)*

5. **La línea de prensa/redes sociales** *(menos de 20 palabras)*
"Una mujer. Sin autoridad. Catorce procesados. Un documental sobre lo que una ex contadora encontró en las facturas de agua de los pequeños municipios."
*(Énfasis: contundente; funciona como leyenda de tarjeta en redes sociales o oración de apertura de un comunicado de prensa.)*

6. **La forma larga para festivales** *(dos oraciones, menos de 50 palabras)*
"Después de una carrera en contabilidad forense del sector público, Margarita decidió que el fraude que seguía leyendo en los escándalos de las pequeñas empresas de agua era detectable. Cinco años, tres provincias y catorce casos después, nadie ha podido demostrar que estaba equivocada."
*(Énfasis: arco personal y trayectoria. Fuerte para festivales de documentales.)*

## Limitaciones conocidas
- Los loglines son solo tan específicos como la descripción del proyecto que proporciones — si el concepto documental todavía está poco desarrollado, los loglines expondrán eso en lugar de resolverlo
- Un logline no puede sustituir a un tratamiento completo; los comisionistas y financiadores necesitarán contexto de apoyo; usa esta habilidad junto a pitch-treatment-writer
- Para proyectos que son genuinamente multi-hilo o multi-sujeto (tres protagonistas separados sin narrativa compartida), un solo logline puede ser imposible; en este caso, Claude señalará el problema estructural y sugerirá enfoques alternativos

## Habilidades relacionadas
- [pitch-treatment-writer](pitch-treatment-writer.md)
- [festival-synopsis-writer](../localization/festival-synopsis-writer.md)
- [series-bible-generator](series-bible-generator.md)
