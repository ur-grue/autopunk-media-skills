---
name: hook-generator
status: stable
category: youtube
subcategory: pre-production
version: 1.0
eval_score: 4.78
language: es
tags: [youtube, pre-production, hooks, retention, podcast, documentary]
---

# Generador de Gancho

## Qué hace esta habilidad
Escribe tres opciones de gancho de apertura —una por estilo— para un video de YouTube, introducción de podcast o apertura de documental. Cada gancho tiene entre 1 y 3 oraciones y está listo para usarse tal como está.

## Cuándo usar esta habilidad
- Tienes un tema de video, episodio o película y necesitas escribir los primeros 15 a 30 segundos
- Tienes un borrador de gancho pero quieres alternativas más sólidas antes de grabar
- Quieres probar qué ángulo genera más tensión o curiosidad antes de comprometerte con un rodaje

## Qué necesitas proporcionar
**Obligatorio:**
- Tema o premisa en una a tres oraciones — de qué trata realmente el video, episodio o película
- Formato: YouTube (formato largo o Shorts), podcast o documental

**Opcional:**
- Tono: periodismo serio · ciencia popular · entretenimiento (por defecto: entretenimiento si no se especifica)
- Público objetivo: para quién es este contenido en una frase (ej.: "emprendedores en etapa inicial", "oyentes de true crime")
- Un dato concreto, estadística o escena de tu contenido que podría anclar el gancho

## Cómo aborda Claude esta tarea

1. **Identifica la tensión central.** Antes de escribir, encuentra lo más atractivo del tema — el dato contraintuitivo, el resultado inesperado, los stakes que hacen que valga la pena ver esto. Este es el material en bruto del que se nutren los tres ganchos.

2. **Escribe un gancho por estilo**, cada uno atacando la tensión desde un ángulo diferente:
   - **Pregunta provocadora** — abre una brecha de conocimiento que el espectador necesita cerrar. No hace preguntas retóricas que se responden solas. La pregunta debe hacer que el público sienta un interés personal.
   - **Estadística o dato sorprendente** — comienza con un número o detalle específico y contraintuitivo. La especificidad es lo que crea credibilidad y curiosidad. Evita los superlativos vagos.
   - **Afirmación directa y audaz** — hace una declaración segura, ligeramente controvertida, que reencuadra cómo el espectador piensa sobre el tema. Se gana su confianza; no fanfarronea.

3. **Adapta el registro al tono.** Los ganchos de periodismo serio son mesurados y autoritativos — ganan credibilidad sin sensacionalismo. Los ganchos de ciencia popular apuestan por el asombro y la accesibilidad. Los ganchos de entretenimiento se centran en la personalidad, energía o una provocación visual. Si el tono de la entrada es ambiguo, Claude adapta el registro más común para el formato.

4. **Respeta el formato.** Los ganchos de YouTube priorizan la provocación visual y los patrones de interrupción. Los ganchos de podcast dependen completamente del lenguaje y suelen funcionar mejor cuando son conversacionales y sorprendentes. Las aperturas de documentales pueden sostener una construcción más lenta — una declaración de lugar o tiempo seguida de un giro.

5. **Recomienda el próximo paso inmediato.** Después de entregar los ganchos, especifica cuál grabar o gravar primero, y qué habilidad relacionada usar después (seo-title-optimizer para alinear el título, thumbnail-concept-brief para traducir la energía visual del gancho, o full-script-writer para expandir).

## Formato de salida

Tres opciones de gancho etiquetadas. Cada gancho: entre 1 y 3 oraciones, no más. Sin preámbulo, sin calificación, sin explicación — solo los ganchos. Después de las tres opciones, una línea de orientación práctica sobre qué estilo tiende a funcionar mejor para el formato y tono dados. La salida termina con una línea "Próximo paso" que especifica la acción inmediata: qué gancho usar primero y qué habilidad ejecutar después.

```
**Opción 1 — Pregunta provocadora**
[Texto del gancho]

**Opción 2 — Estadística sorprendente**
[Texto del gancho]

**Opción 3 — Afirmación audaz**
[Texto del gancho]

---
*Orientación: [Una oración sobre qué opción se adapta mejor a este formato/tono y por qué.]*
```

## Criterios de calidad
- [ ] Cada gancho abre una brecha de conocimiento — el espectador genuinamente necesita seguir viendo para cerrarla
- [ ] La opción de estadística sorprendente usa una cifra o detalle específico, no una afirmación vaga
- [ ] Ningún gancho usa la frase "en este video" ni anuncia lo que el contenido cubrirá
- [ ] El tono coincide con el registro especificado (periodismo / ciencia popular / entretenimiento)
- [ ] Cada opción es genuinamente distinta — no una reformulación de las otras
- [ ] La salida se adapta al formato: contundencia de YouTube, arrastre conversacional de podcast, o deliberación de documental
- [ ] La nota de orientación es específica y accionable, no genérica
- [ ] La salida incluye al menos una acción concreta que el usuario puede tomar inmediatamente (qué gancho usar y qué hacer después: grabarlo, ejecutar seo-title-optimizer o abrir full-script-writer)

## Ejemplo

### Entrada
**Tema:** Un video de análisis profundo en YouTube sobre por qué la mayoría de los consejos de finanzas personales están diseñados para un perfil laboral que ya no existe — el empleado formal con trabajo estable y jubilación garantizada.

**Formato:** YouTube formato largo (20 a 25 minutos)

**Tono:** Periodismo serio

**Público:** Personas de 30 a 45 años que se sienten económicamente atrasadas a pesar de haber seguido todos los consejos que les dieron

### Salida

**Opción 1 — Pregunta provocadora**
¿Y si la razón por la que te sientes económicamente atrasado no es que estés haciendo algo mal, sino que estás siguiendo consejos escritos para una versión del mercado laboral que desapareció a finales de los 90?

**Opción 2 — Estadística sorprendente**
El marco de finanzas personales más citado en los medios de habla hispana fue diseñado en una época en que el 65% de los trabajadores tenía empleo formal vitalicio, jubilación garantizada y un solo empleador para toda su carrera. Esa época terminó antes de que la mayoría de ustedes entraran al mercado laboral.

**Opción 3 — Afirmación audaz**
Los consejos de finanzas personales no están rotos. Están optimizados para alguien que ya no existe — y aplicarlos sin entender ese supuesto te costará años.

---
*Orientación: Para periodismo serio dirigido a este público, la Opción 2 trabaja más duro: la estadística específica señala investigación y construye confianza antes de presentar el argumento más amplio. La Opción 1 es la más fuerte si el tono se inclina hacia editorial u opinión.*

## Limitaciones conocidas
- Esta habilidad no puede verificar estadísticas. Si proporcionas una cifra específica en tu entrada, la usará. Si no lo haces, la opción de estadística sorprendente puede construir una que suene plausible pero requiera verificación antes de grabar.
- Para temas donde la tensión central es genuinamente oscura o muy técnica, los ganchos pueden ser precisos pero abstractos — proporciona un detalle concreto de tu investigación para darle a Claude algo específico en que anclar.
- Los ganchos de documentales se benefician significativamente de conocer la escena o imagen de apertura. Sin eso, esta habilidad genera ganchos solo de lenguaje que pueden necesitar adaptación visual.

## Habilidades relacionadas
- [seo-title-optimizer](seo-title-optimizer.md) — escribir el título después de fijar el ángulo del gancho
- [thumbnail-concept-brief](thumbnail-concept-brief.md) — traducir la energía visual del gancho en una dirección de miniatura
- [full-script-writer](../scripting/full-script-writer.md) — escribir el guion completo una vez confirmados el gancho y el título
- [intro-outro-writer](../../podcast/scripting/intro-outro-writer.md) — escritura de intro/outro específica para podcast
