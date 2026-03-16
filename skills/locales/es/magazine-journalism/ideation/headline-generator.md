---
name: headline-generator
status: stable
category: magazine-journalism
subcategory: ideation
version: 1.0
eval_score: 4.5
language: es
tags: [journalism, ideation, headlines, print, digital, subheads]
---

# Generador de Titulares

## Qué hace esta habilidad
Genera una variedad de opciones de titulares y subtítulos en diferentes registros, longitudes y estilos de publicación para un artículo o reportaje determinado.

## Cuándo usar esta habilidad
- Tienes un artículo terminado o casi terminado y necesitas opciones de titulares antes de enviar al editor
- Estás atascado en un titular y quieres salir de un solo enfoque
- Necesitas titulares calibrados para la voz de una publicación específica (tabloide, revista literaria, prensa especializada, medio digital)
- Quieres un titular principal con opciones de subtítulo para reportajes largos

## Qué necesitas proporcionar
**Obligatorio:** Tema del artículo o resumen de 2 a 4 oraciones; tipo de publicación o público (ej.: diario nacional, publicación especializada, revista literaria, medio digital)
**Opcional:** Titular de trabajo existente a mejorar o usar como referencia; límite de caracteres; si se necesita un subtítulo (bajada); palabras o enfoques a evitar; directiva de tono (serio, provocador, irónico, neutral)

## Cómo aborda Claude esta tarea
1. Identifica el argumento central, la revelación o el conflicto del artículo — lo único que hace que valga la pena leer este texto — y lo usa como ancla para todas las opciones de titulares
2. Genera titulares a través de enfoques estructurales distintos: afirmación declarativa, pregunta, imperativo, giro irónico, construcción "X de Y", y el formato nominal limpio usado por publicaciones literarias y de formato largo
3. Calibra el registro según el tipo de publicación especificado — el vocabulario y la puntuación de un tabloide difieren fundamentalmente del estilo de una revista literaria; la prensa especializada sigue convenciones distintas a la prensa general
4. Para cada titular principal, escribe un subtítulo correspondiente que agrega el contexto periodístico que el titular omite
5. Señala qué opciones funcionan mejor en impreso versus digital (los titulares con SEO suelen sacrificar elegancia; los titulares impresos pueden permitirse más ingenio)
6. Cierra con una nota "Próximo paso" de una oración especificando qué titular tomar adelante, si ejecutar social-media-excerpt para adaptar el titular ganador a las plataformas, y si newsletter-teaser-writer es necesario para el texto de distribución

## Formato de salida
6 a 10 opciones de titulares organizadas en grupos por registro (ej.: "Directo/Informativo", "Analítico/Literario", "Provocador/Contundente"). Cada titular seguido de su bajada. Anotación de una línea sobre el registro y el mejor contexto de uso. Longitud total: 400 a 600 palabras. Sin markdown más allá de negritas para el texto de los titulares. La salida termina con una nota "Próximo paso" que identifica qué grupo de titulares es más sólido para la publicación especificada y qué hacer inmediatamente: enviarlo al editor, ejecutar newsletter-teaser-writer, o adaptar la mejor opción para redes sociales.

## Criterios de calidad
- [ ] Los titulares abarcan al menos 4 formatos estructurales diferentes
- [ ] Cada titular tiene una bajada que agrega contexto periodístico
- [ ] Al menos una opción tiene menos de 6 palabras (funciona en portada y redes sociales)
- [ ] Al menos una opción es consciente del SEO (frase nominal clara con palabra clave al frente)
- [ ] Ningún titular fabrica una afirmación más allá de lo que el resumen del artículo sustenta
- [ ] Las anotaciones de registro distinguen correctamente los contextos impreso versus digital
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (enviar el titular al editor, adaptarlo para redes con social-media-excerpt, o ejecutar newsletter-teaser-writer)

## Ejemplo

### Entrada
Resumen del artículo: Un reportaje largo sobre cómo ciudades pequeñas en distintos países de América Latina están cambiando silenciosamente sus normas de zonificación para permitir mayor densidad de vivienda — sin esperar reformas nacionales. El artículo presenta tres ciudades específicas, cita funcionarios de planeamiento urbano y muestra resultados tempranos: los alquileres se estabilizaron en una ciudad después de 18 meses.
Publicación: Revista de interés general nacional, seria pero accesible (registro tipo GQ Latinoamérica o Gatopardo)
Bajada necesaria: Sí
Sin límite de caracteres especificado

### Salida

**Registro Directo / Informativo**

1. **Las ciudades que están reparando silenciosamente la crisis de vivienda**
*Bajada: Mientras los gobiernos nacionales debaten, un puñado de ciudades latinoamericanas está reescribiendo sus normas de zonificación — y ya está funcionando.*
*(Recomendado para: portada digital; amigable con SEO; frase nominal clara)*

2. **La solución urbana que nadie estaba esperando**
*Bajada: En tres ciudades que se negaron a esperar una reforma nacional, un cambio discreto en el derecho urbanístico está logrando lo que años de debate político no pudieron.*
*(Recomendado para: redes sociales; contundente, funciona en versión corta)*

---

**Registro Analítico / Literario**

3. **Una ciudad cambia de opinión sobre el patio trasero**
*Bajada: En toda América Latina, un número pequeño pero creciente de comunidades apuesta a que viviendas más densas — no nuevas carreteras ni subsidios federales — son la respuesta a la asequibilidad.*
*(Recomendado para: reportaje impreso; evocador, recompensa al lector curioso)*

4. **Cómo construir una ciudad sin pelear por eso**
*Bajada: La crisis de vivienda ha sido un debate nacional durante décadas. Estas tres ciudades dejaron de esperar.*
*(Recomendado para: formato largo impreso o digital; ironía seca, registro intelectual)*

---

**Registro Provocador / Contundente**

5. **Cambiaron tres líneas del código de zonificación. Los alquileres dejaron de subir.**
*Bajada: No fue un gran avance político. No fue un programa federal. En una ciudad de tamaño mediano, tardó 18 meses.*
*(Recomendado para: newsletter o redes sociales; la especificidad genera clics; mejor para artículos centrados en datos)*

6. **La solución de vivienda que no necesita al gobierno nacional**
*Bajada: Olvida el debate legislativo. En ciudades donde los urbanistas reescribieron silenciosamente la normativa local, los primeros resultados están forzando una revisión de cómo se construye en la región.*
*(Recomendado para: sección de opinión/análisis digital)*

---

**Portada / Formato Corto**

7. **El arreglo del patio** *(Titular de portada; 3 palabras; requiere bajada para llevar el contexto)*
8. **Las ciudades que no esperaron** *(Funciona solo en portada o tarjeta de red social)*

---

*Notas: Las opciones 1 y 5 son las más sólidas para digital/SEO. Las opciones 3 y 4 se adaptan al registro literario de un reportaje impreso. Si este texto va en portada, la opción 7 con una bajada es la forma corta más elegante.*

## Limitaciones conocidas
- La efectividad de un titular en digital depende en parte del contexto de la miniatura/imagen que Claude no puede ver; algunas opciones pueden necesitar ajuste una vez que se conoce el visual
- Claude no puede verificar las afirmaciones o datos en el resumen del artículo; los titulares solo son tan precisos como lo que proporciones — cualquier cifra específica en un titular debe estar verificada en el reportaje
- Los titulares literarios e irónicos pueden tener bajo rendimiento algorítmico en plataformas que priorizan la concordancia clara de palabras clave; indica tu canal de distribución al solicitar

## Habilidades relacionadas
- [story-angle-finder](story-angle-finder.md)
- [newsletter-teaser-writer](../distribution/newsletter-teaser-writer.md)
- [social-media-excerpt](../distribution/social-media-excerpt.md)
