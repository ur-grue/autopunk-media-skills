---
name: seo-title-optimizer
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.5
language: es
tags: [youtube, pre-production, seo, titles, search-optimization]
---

# Optimizador de Título SEO

## Qué hace esta habilidad
Genera 8 a 10 opciones de títulos de YouTube optimizados para búsqueda para un tema de video determinado, clasificadas por potencial de clics y descubribilidad.

## Cuándo usar esta habilidad
- Tienes un video terminado o casi terminado y necesitas un título antes de publicar
- Estás planificando un video y quieres validar la demanda de búsqueda a través de pruebas de títulos
- Tu título actual tiene bajo rendimiento y quieres probar alternativas en A/B
- Estás construyendo un calendario de contenidos y necesitas títulos de trabajo para los próximos videos

## Qué necesitas proporcionar
**Obligatorio:** Tema del video o título de trabajo; público objetivo (quién ve este canal); objetivo principal del video (informar, entretener, tutorial, opinión, reseña)
**Opcional:** Nicho y tono del canal (casual, educativo, periodístico); los 2 a 3 títulos de competidores principales sobre el mismo tema; duración o formato de video deseado; palabras clave en las que ya tienes buen posicionamiento

## Cómo aborda Claude esta tarea
1. Identifica la intención de búsqueda central detrás del tema — qué pregunta o deseo específico llevaría a alguien a buscar este video
2. Extrae 3 a 5 palabras clave y frases de alto valor que probablemente coincidan con cómo el público realmente busca, incluyendo variantes de cola larga
3. Genera títulos a través de múltiples estructuras de YouTube probadas: lista, cómo hacer, pregunta, explicativo "por qué/qué/cómo", brecha de curiosidad, y formatos de promesa de valor
4. Filtra por conteo de caracteres (menos de 60 caracteres preferido para visualización completa en la mayoría de dispositivos), coloca la palabra clave más fuerte al frente, y evita el clickbait que aumentaría la tasa de rebote
5. Clasifica las opciones por potencial estimado de clics y anota cada una con una justificación de una línea

## Formato de salida
Una lista numerada de 8 a 10 títulos. Cada título está seguido por una nota entre paréntesis que explica el enfoque estructural utilizado y la palabra clave principal que se está apuntando. Los títulos están ordenados de mayor a menor potencial estimado de clics. Longitud total: menos de 400 palabras. Texto plano, sin encabezados markdown en la salida.

## Criterios de calidad
- [ ] Cada título incluye al menos una palabra clave concreta, no solo descriptores abstractos
- [ ] Los títulos abarcan al menos 4 formatos estructurales diferentes (lista, cómo hacer, pregunta, afirmación)
- [ ] Ningún título excede los 70 caracteres
- [ ] El título mejor clasificado coloca la palabra clave principal dentro de las primeras 4 palabras
- [ ] Al menos dos títulos apuntan a consultas de búsqueda de cola larga
- [ ] Ninguno de los títulos contiene superlativos engañosos que no se pueden sustentar

## Ejemplo

### Entrada
Tema: Cómo construir una rutina matutina que realmente se mantenga
Público objetivo: Adultos enfocados en la productividad, 25 a 40 años, que han intentado y abandonado rutinas matutinas antes
Objetivo: Tutorial/consejos
Tono del canal: Directo, práctico, sin rodeos
Títulos de competidores vistos: "Mi rutina matutina de las 5am", "Cómo me convertí en persona de mañana"

### Salida
1. **Cómo construir una rutina matutina que realmente se mantenga** (Tutorial directo; palabra clave: "rutina matutina"; coincide exactamente con la intención de búsqueda de quienes han fracasado antes)
2. **Por qué tu rutina matutina sigue fallando (y cómo arreglarlo)** (Problema-solución; apunta al ángulo de la frustración; fuerte brecha de curiosidad)
3. **Rutina matutina que no abandonarás en 3 días** (Especificidad + punto de dolor; cola larga para búsquedas "abandonar rutina matutina")
4. **La rutina matutina para gente que odia las rutinas matutinas** (Gancho contraintuitivo; aborda directamente la identidad del público objetivo)
5. **El único sistema de rutina matutina que funciona a largo plazo** (Autoridad + promesa; apunta a búsquedas "rutina matutina que funciona")
6. **Deja de fracasar con las rutinas matutinas — haz esto en su lugar** (Imperativo; alta urgencia; apunta a buscadores recurrentes)
7. **Cómo finalmente construí una rutina matutina que se mantuvo** (Testimonio personal; "finalmente" apunta a buscadores de largo plazo)
8. **Hábitos de rutina matutina que duran (sin despertar a las 5am)** (Eliminación de objeción; "sin 5am" se diferencia de los títulos de la competencia)
9. **Lo que nadie te dice sobre construir una rutina matutina** (Brecha de curiosidad; apunta a quienes han leído los consejos estándar)
10. **Rutina matutina consistente — La guía paso a paso** (Título ancla SEO; apunta a búsquedas de tutorial estructurado de cola larga)

**Recomendado:** Opción 1 para publicación principal; Opción 2 como candidato para prueba A/B.

## Limitaciones conocidas
- La efectividad del título depende en gran medida de la miniatura — un título fuerte con una miniatura débil seguirá teniendo bajo rendimiento; usa esta habilidad junto a thumbnail-concept-brief
- Claude no puede acceder a datos de volumen de búsqueda de YouTube en tiempo real; las sugerencias de palabras clave se basan en patrones estructurales, no en análisis en tiempo real
- Los canales de nicho con audiencias muy específicas (ej.: subtemas profesionales) pueden necesitar contexto de dominio adicional para una selección precisa de palabras clave
- Los títulos optimizados para búsqueda pueden sacrificar la voz de la marca; los creadores con identidad tonal establecida deben filtrar en consecuencia

## Habilidades relacionadas
- [thumbnail-concept-brief](thumbnail-concept-brief.md)
- [hook-generator](hook-generator.md)
- [description-seo-writer](../post-production/description-seo-writer.md)
