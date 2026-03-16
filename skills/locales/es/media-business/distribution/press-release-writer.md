---
name: press-release-writer
status: stable
category: media-business
subcategory: distribution
version: 1.0
eval_score: 4.4
language: es
tags: [media-business, distribution, press-release, pr, publicity]
---

# Redactor de Comunicado de Prensa

## Qué hace esta habilidad
Escribe un comunicado de prensa profesional anunciando un estreno, encargo, premio o hito de producción de un proyecto mediático, formateado para distribución a periodistas del sector del entretenimiento y prensa especializada.

## Cuándo usar esta habilidad
- Un proyecto ha sido encargado, aprobado o adquirido y necesita un anuncio formal
- Una película o serie tiene estreno en un festival y necesitas materiales de prensa listos el día del anuncio
- Un proyecto ha ganado un premio o ha sido seleccionado para un programa importante
- Una productora anuncia una nueva asociación importante, coproducción o acuerdo de distribución
- Un podcast o canal de YouTube lanza una nueva temporada o alcanza un hito

## Qué necesitas proporcionar
**Obligatorio:** El anuncio que se va a hacer (qué ocurrió exactamente), título y formato del proyecto, nombre de la productora, talento clave involucrado (director, presentador, productor ejecutivo), y el canal o distribuidor involucrado si corresponde.

**Opcional:** Fecha de transmisión o lanzamiento, citas del talento o ejecutivos clave, breve descripción o sinopsis del proyecto, cualquier otro contexto (historial de premios, series anteriores, antecedentes de producción), fecha de embargo si corresponde.

## Cómo aborda Claude esta tarea
1. Escribe un titular que expone la noticia factualmente — quién hizo qué — sin lenguaje promocional ni anticipos vagos
2. Abre el cuerpo con un párrafo de entrada que entrega la información esencial (quién, qué, cuándo, dónde) en 40 a 60 palabras, luego se expande con descripción del proyecto, citas del talento y contexto de fondo en orden descendente de valor noticioso
3. Cierra con una sección estándar de Notas para Editores que cubre los antecedentes de la productora, el marcador de posición de datos de contacto y cualquier detalle técnico relevante (duración, canal, ventana de lanzamiento)
4. Después del cuerpo del comunicado, proporciona una nota "Próximo paso" enumerando las tres acciones inmediatas: completar las citas y contactos faltantes, identificar los destinatarios de prensa especializada a contactar primero, y establecer la fecha de distribución o el embargo

## Formato de salida
Titular + cuerpo + Notas para Editores. Cuerpo: 350 a 500 palabras. Formato estándar de agencias de prensa latinoamericanas: párrafos bien separados, citas en sus propios párrafos, boilerplate al final. Profesional y factual en todo momento — sin lenguaje de marketing, sin signos de exclamación, sin afirmaciones que el periodista no pueda verificar. Todas las citas claramente atribuidas. Línea de embargo en la parte superior si corresponde. La salida termina con una nota "Próximo paso" que especifica las acciones inmediatas antes de la distribución: reemplazar marcadores de posición, confirmar que las citas estén aprobadas e identificar cuáles medios especializados contactar primero.

## Criterios de calidad
- [ ] El titular expone la noticia en menos de 12 palabras, sin superlativos
- [ ] El párrafo de entrada responde quién, qué, cuándo y dónde sin que el lector necesite continuar
- [ ] Al menos una cita del talento incluida y claramente atribuida
- [ ] La descripción del proyecto es factual, no promocional
- [ ] Sección de Notas para Editores presente con antecedentes de la productora y marcador de posición de contacto
- [ ] Sin lenguaje de marketing ("revolucionario", "imperdible", "histórico") en ningún lugar del texto
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (reemplazar los marcadores de posición de citas y contactos, obtener aprobación del talento nombrado, identificar los primeros medios objetivo)

## Ejemplo

### Entrada
Anuncio: Encargo — una serie documental de 3 partes ha sido encargada por un importante canal de televisión pública latinoamericano
Título: El Peso del Silencio
Formato: Serie documental 3 x 52 minutos
Productora: Norte Films
Directora: Elena Vásquez
Productor Ejecutivo (lado del canal): [nombre a insertar]
Canal: Canal público regional (Latinoamérica)
Tema: La serie sigue a tres músicos sordos a través de Latinoamérica mientras navegan carreras en una industria que no fue construida para ellos
Ventana de transmisión: Otoño 2026
Cita de la directora: "Llevo ocho años queriendo hacer esta serie. Estos músicos cambiaron la forma en que pienso sobre el sonido."
Cita del ejecutivo del canal: A CONFIRMAR — lo agregaré manualmente

### Salida

**PARA DIFUSIÓN INMEDIATA**

---

**CANAL PÚBLICO REGIONAL ENCARGA LA SERIE DOCUMENTAL EN TRES PARTES EL PESO DEL SILENCIO A NORTE FILMS**

*La serie tendrá su estreno en Otoño 2026; sigue a tres músicos sordos navegando la industria musical latinoamericana*

---

El Canal Público Regional ha encargado EL PESO DEL SILENCIO, una serie documental en tres partes producida por Norte Films. La serie se estrenará en el Canal en Otoño 2026.

Dirigida por Elena Vásquez, EL PESO DEL SILENCIO sigue a tres músicos sordos — un percusionista clásico, un productor de música electrónica y una vocalista de jazz — a lo largo de tres años de sus carreras en una industria construida alrededor del oído. La serie observa su trabajo, sus relaciones con colaboradores y audiencias, y las adaptaciones, negativas e invenciones que han hecho para practicar y actuar.

Elena Vásquez declaró: "Llevo ocho años queriendo hacer esta serie. Estos músicos cambiaron la forma en que pienso sobre el sonido."

[Cita del Productor Ejecutivo del Canal a insertar.]

La serie es producida por Norte Films y producida ejecutivamente en el lado de producción por [nombre del PE]. El rodaje principal comienza en Primavera 2025. Cada episodio dura 52 minutos.

---

**Notas para Editores**

**Acerca de EL PESO DEL SILENCIO**
EL PESO DEL SILENCIO es una serie documental observacional de 3 partes. 3 x 52 minutos. Encargada por el Canal Público Regional. Producida por Norte Films. Transmisión esperada: Otoño 2026.

**Acerca de Norte Films**
[Antecedentes de la empresa — dos oraciones sobre el historial de la empresa y sus producciones anteriores.]

**Contacto de prensa**
[Nombre]
[Email]
[Teléfono]

**Imágenes**
Las fotografías de producción en alta resolución están disponibles a solicitud.

## Limitaciones conocidas
- Las citas del talento deben ser proporcionadas por el usuario — la habilidad generará citas de marcador de posición si no se proporcionan, pero deben ser reemplazadas con citas reales aprobadas antes de la distribución. Nunca envíes un comunicado de prensa con citas fabricadas.
- La habilidad formatea de acuerdo a las convenciones de la prensa especializada latinoamericana. La prensa especializada de EE.UU. (Deadline, Variety) tiene convenciones de estilo ligeramente diferentes que pueden requerir ajustes manuales menores.
- Los comunicados de prensa para plataformas de streaming pueden necesitar seguir los propios requisitos de plantilla de PR de la plataforma, que varían según el distribuidor.

## Habilidades relacionadas
- [festival-strategy-brief](festival-strategy-brief.md)
- [distributor-outreach-email](distributor-outreach-email.md)
- [streaming-platform-pitch](streaming-platform-pitch.md)
