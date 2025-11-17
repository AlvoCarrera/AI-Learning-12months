# ❓ PREGUNTAS FRECUENTES + CONTEXTO ESPECÍFICO

---

# A. PREGUNTAS SOBRE EL ROADMAP

## P: ¿Realmente necesito todas las 4 fases en 12 meses?

**R:** Sí, pero con matices:
- **Fase 1 (3 meses):** CRÍTICA. No saltees.
- **Fase 2 (3 meses):** Core AI skills. CRÍTICA también.
- **Fase 3 (3 meses):** Para arquitectura. Si solo quieres "hacer proyectos", puedes acelerar.
- **Fase 4 (3 meses):** Especialización. Importante pero flexible.

**Mi consejo:** No saltes fases, pero puedes comprimir: 
- Aumenta a 2.5-3 horas/día = terminas en 10 meses
- Luego 2 meses puliendo capstone

---

## P: ¿Y si NO quiero aprender Kubernetes?

**R:** Comprensible, pero:
- ❌ **No la sueltes aún.** Es imprescindible en 2025.
- ✅ **Puedes** dejarla para mes 11-12 si lo necesitas.
- **Alternativa:** Usa cloud-managed k8s (EKS de AWS, AKS de Azure) = menos complejo.

**Realidad:** Si quieres ser "AI Architect", Kubernetes es table stakes.

---

## P: ¿Necesito cursos de Machine Learning?

**R:** **NO.** Aquí está la diferencia:

```
Tu path: LLMs + Agents + Integración
├── Usas modelos pre-entrenados (Claude, GPT)
├── Prompt engineering
├── RAG systems
└── No necesitas entrenar modelos

ML Scientist path: Entrenar modelos
├── Matemática (cálculo, álgebra lineal)
├── TensorFlow/PyTorch
├── Datasets, feature engineering
└── Mucho más tiempo
```

**Tú:** Software Engineer que integra IA  
**ML Scientist:** Crea la IA

---

## P: ¿Udemy Business es suficiente?

**R:** **99% sí.** Pero:
- ✅ Udemy: cursos estructurados, buena base
- ✅ Docs oficiales: referencia diaria
- ✅ YouTube: cuando necesitas específico
- ❌ Coursera ($50/mes): NO es necesario aún
- ❌ Bootcamps pagados: desperdicio con Udemy Business

**Presupuesto anual**: $0 cursos + $50 cloud = $50. Muy viable.

---

## P: ¿Qué hago si no entiendo algo?

**R:** Order of operations:

1. **Revisa video 2x más lentamente** (YouTube a 0.75x)
2. **Leer documentación oficial** (no tutoriales otros)
3. **Google: el concepto + "explained" o "tutorial"**
4. **Stack Overflow** - busca tu error exacto
5. **Reddit: r/Python, r/FastAPI** - pregunta (sé específico)
6. **GitHub Issues** en librería que usas
7. **Discord communities** (FastAPI, LangChain)

**NO hagas:**
- ❌ Mirar 5+ tutoriales diferentes (confunde)
- ❌ Skip el concepto (regresar después es peor)
- ❌ Programar sin entender (produce código basura)

---

## P: ¿Puedo parallelizar cursos?

**R:** **NO.** Exceptions:
- ❌ Udemy videos + Code práctica: ✅ BIEN
- ❌ Python + SQL simultáneamente: ❌ MAL
- ✅ FastAPI + Docker simultáneamente: ✅ BIEN (se refuerzan)
- ❌ LangChain + Kubernetes simultáneamente: ❌ MAL (context switching)

**Regla:** Max 2 cursos si están conectados directamente.

---

# B. PREGUNTAS ESPECÍFICAS TU CONTEXTO

## P: ¿Mi experiencia Angular me ayuda?

**R:** **SÍ, pero NO como esperas:**

```
Angular → Python
✅ Arquitectura mental: patterns, dependency injection
✅ Reactive programming: RxJS → async/await similar
✅ Testing mindset: Angular ya usa Jasmine/Karma
❌ Sintaxis totalmente diferente
❌ Backend thinking ≠ Frontend thinking
```

**Impacto:** Acelera 10-15%, especialmente:
- Fase 3 (async patterns)
- Pensamiento de arquitectura
- Testing

**Pero:** No te duermas pensando que "Angular es similar". Backend es distinto.

---

## P: ¿Mi experiencia bancaria en Angular me ayuda?

**R:** **SÍ, mucho:**

```
Banking workflows → AI workflows
✅ Workflows complejos: aprovals, multi-paso
✅ Data validations: reglas de negocio
✅ Seguridad: entiendes compliance
✅ Debugging mindset: dinero en juego = precision

Mi recomendación: Los proyectos Phase 2 (RAG agent, workflow agent)
   serán "natural" para ti porque YA entiendes workflows.
```

**Ventaja:** Tú entiendes casos de uso reales. Developer junior no.

---

## P: ¿Tu MacBook M1 tiene problemas?

**R:** **Posible, pero probablemente NO es software:**

Tu contexto: Fire Stick → LG Monitor → MacBook M1 display issues

```
Síntomas posibles:
- ❌ Monitor no detecta M1: cable/driver issue, NO software
- ❌ Resolución baja: scaling, NO código issue
- ✅ Simulador lento: SÍ issue (pero necesitas Kubernetes, no simulador)
```

**Para desarrollo Python/Backend:**
- M1 es excelente (mejor que Intel)
- No importa monitors (CLI puede ser en terminal)
- Docker funciona bien
- Python no tiene problemas M1

**Solución:** Usa cable USB-C correcto, actualiza monitor drivers, reinicia.

---

## P: ¿Debo aprender Spanish-language tools?

**R:** **Parcialmente.**

Tu contexto es Ecuador, pero mercado global:
- ✅ Aprende TODO en inglés (docs están en inglés)
- ✅ Comenta código en inglés (estándar)
- ✅ Cuando vendas: documentación en español
- ✅ Cuando entrenes team: enseña en español

**Tool-wise:**
- Python: inglés, no hay versión español
- Udemy: algunos cursos en español (sub-optimal)
- Claude/OpenAI: mismo en cualquier idioma

---

## P: ¿Presupuesto para desarrollar?

**R:** **Mínimo:**

```
Libre (months 1-12):
├── Python 3.12: free
├── FastAPI: free
├── PostgreSQL: free
├── Docker: free
├── VSCode: free
├── GitHub: free
└── Udemy Business: tienes

Opcional (months 1-12):
├── Claude API: $5-20/mes
├── AWS Free Tier: free (entonces $20-50/mes after)
├── Pinecone free tier: free
└── Total: $50-70/mes
```

**Después (cuando vendas):**
- Stripe/Paypal: 2.9% + $0.30 per transaction
- AWS/Azure: $50-300/mes depende escala
- Domain: $10/año
- Email: $5-20/mes

---

# C. PREGUNTAS SOBRE PROYECTOS

## P: ¿Los 6 proyectos son obligatorios?

**R:** **SÍ, pero con flexibilidad:**

```
Obligatorios (portfolio):
├── PROJECT 1: Bank System (Fase 1)
├── PROJECT 2: RAG Agent (Fase 2)
└── PROJECT 5: Multi-Tenant SaaS (Fase 3)
└── PROJECT FINAL: Capstone (Fase 4)

Opcionales (pero recomendados):
├── PROJECT 3: Workflow Agent
├── PROJECT 4: Data Agent
```

**Por qué 4 obligatorios:**
- Bank System: demuestra backend solido
- RAG Agent: demuestra AI
- Multi-Tenant: demuestra arquitectura
- Capstone: demuestra TODO junto

**Si aceleras:** Skip proyecto 3, 4 pero haz PROJECT 5 (multi-tenant).

---

## P: ¿Los proyectos son reales o toy?

**R:** **Reales, pero simplificados:**

```
Bank System PROJECT:
- Real: validaciones, auth, DB queries
- Simplificado: no multi-branch, no compliance nacional
- Vendible: NO (demasiado simplificado)

RAG Agent PROJECT:
- Real: ingesta real, RAG real, Claude real
- Simplificado: solo FAQ, no enterprise features
- Vendible: CASI (solo agregar customer support)

Multi-Tenant Platform:
- Real: multi-tenant actual, isolation real, scaling real
- Simplificado: 3-4 agents vs 50+
- Vendible: SÍ (con pequeños ajustes)
```

**Implicación:** Capstone project + 2 meses tweaking = vendible.

---

## P: ¿Debo pushear código "imperfecto" a GitHub?

**R:** **SÍ, pero con estándares:**

```
BIEN:
├── Código funcional
├── Tests
├── README claro
├── .gitignore correcto
└── Commits descriptivos

OK:
├── Linting issues menores
├── TODO comments (documentado)
├── Performance no optimizado
└── Edge cases no manejados

MAL:
├── Código que no corre
├── Sin tests
├── README vacío
├── Secrets en Git
├── Commits "adasdasd"
```

**Recuerda:** GitHub ES tu portafolio. Mejor "simple pero limpio" que "complejo y sucio".

---

## P: ¿Debo hacer "prettier" projects?

**R:** **NO aún.** En orden:

```
Priority 1 (months 1-12):
✅ Funciona
✅ Tests pasan
✅ Código limpio
✅ README clara
❌ UI bonita (no, backend focus)

Priority 2 (month 13+):
✅ Si venderás: UI professional
✅ Si es portfolio: UI nice-to-have
```

**Para RAG Agent:** CLI + API = suficiente.  
**Para Capstone:** Pequeño dashboard React (no 10 horas diseño).

---

# D. PREGUNTAS SOBRE TIMELINE

## P: ¿12 meses es realista con 2h/día?

**R:** **Sí, pero ajustado:**

```
Estimación:
- Udemy: 135 horas
- Assignments: 100 horas
- Proyectos: 250 horas
- TOTAL: 485 horas

2 horas/día × 250 días/año = 500 horas
```

**Margen:** Muy ajustado. Mejor:
- 2.5 horas/día = 625 horas (más cómodo)
- O 2 horas/día + 4h/día fines de semana

**Reality check:** Si algunos meses no puedes 2h, es OK. Recupera después.

---

## P: ¿Qué pasa si me atraso?

**R:** **Plan B:**

```
Si atrasos < 2 semanas: 
├── Acelera a 2.5-3h/día
└── Recuperas en mes siguiente

Si atrasos 1 mes:
├── Skip: "Data Science" course (no essential)
├── Compress: PostgreSQL (solo essentials)
└── Recover durante fase 4

Si atrasos 2+ meses:
├── Ajusta timeline a 14 meses
├── O skip "Azure" course (aprende solo AWS)
└── Capstone puede ser simplificado (3 agents vs 4)
```

**Importante:** Calidad > velocidad. Mejor aprender lento bien, que rápido mal.

---

## P: ¿Cuándo debo empezar a aplicar a trabajos?

**R:** **Timeline:**

```
Después semana 16 (Proyecto 1): Posible pero weak
├── No: aún no eres hireable senior

Después semana 30 (3 AI projects): POSIBLE
├── Sí: starter/junior roles en startups AI
├── Salario: $40K-$60K USD (remote)
├── Skills: AI basics, backend basics

Después semana 39 (Multi-Tenant SaaS): RECOMENDADO
├── Sí: mid-level roles
├── Salario: $70K-$100K USD
├── Skills: sólidos, architecture

Después semana 52 (Capstone): IDEAL
├── Sí: senior roles, architect roles
├── Salario: $100K-$150K USD
├── Skills: production-grade, leadership
```

**Mi recomendación:** Aplica en semana 30 (diversifica), pero target semana 39+.

---

## P: ¿Cuándo negocio con empresas en Ecuador?

**R:** Dos fases:

```
Fase 1 (Meses 13-14): Pequeños clientes
├── MVP simple
├── Precio bajo ($300-500/mes)
├── Objetivo: aprender a vender, referencias

Fase 2 (Meses 15+): Escala
├── MVP pulido
├── Precio market ($600-$1500/mes)
├── Objetivo: 10-20 clientes = $6K-$20K/mes
```

**Timing:** NO empieces mes 12 (no estás listo). Espera mes 13-14.

---

# E. PREGUNTAS TÉCNICAS

## P: ¿FastAPI vs Flask vs Django?

**R:** Para TI: **FastAPI.**

```
FastAPI:
✅ Modern (Python 3.7+)
✅ Async nativo
✅ Validations (Pydantic)
✅ Auto docs (Swagger)
✅ Performance (fastest)
✅ AI agents friendly

Django:
❌ Monolítico
❌ Para apps grandes
❌ Overkill para AI

Flask:
❌ Too minimal
❌ Async awkward
```

**Decisión:** FastAPI 100%.

---

## P: ¿PostgreSQL vs NoSQL (MongoDB)?

**R:** Para TI: **PostgreSQL.**

```
PostgreSQL:
✅ Structured data (banking, business)
✅ ACID compliant
✅ Complex queries
✅ Relaciones
✅ Full-text search
✅ JSON support (bonus)

MongoDB:
❌ Overkill para simple apps
❌ No índices tan poderosos
❌ Learning curve
```

**Decisión:** PostgreSQL + later learn MongoDB basics (not needed).

---

## P: ¿Pinecone vs ChromaDB?

**R:** Para empezar: **ChromaDB.**

```
ChromaDB:
✅ Open source, local
✅ Fácil setup
✅ Perfecto para desarrollo
✅ Gratis

Pinecone:
✅ Managed cloud
✅ Escalable
✅ Mejor para producción
❌ Costo (pero free tier generoso)
```

**Plan:** 
- Meses 1-10: ChromaDB (learn)
- Meses 11-12: Pinecone (production-ready)

---

## P: ¿LangChain vs LlamaIndex?

**R:** **LangChain (con nota).**

```
LangChain:
✅ Mainstream
✅ More agents/tools
✅ Better documentation
✅ Community
❌ Sometimes overcomplicated

LlamaIndex:
✅ Specialized in RAG
✅ Cleaner for data indexing
✅ Lighter
❌ Smaller community
```

**Recomendación:**
- Learn: LangChain (más general)
- Later: Explore LlamaIndex (complement)

---

## P: ¿Debería aprender gRPC?

**R:** **NO.** Orden de prioridades:

```
MUST HAVE:
✅ REST APIs (FastAPI)
✅ WebSockets (basic)
✅ GraphQL (optional but cool)

NICE-TO-HAVE (Year 2):
- gRPC
- Message brokers (Kafka)
- Event sourcing

SKIP:
- SOAP (dead)
- XML-RPC (dead)
```

**Timeline:** Ignora gRPC por 12 meses. Después explore.

---

# F. PREGUNTAS SOBRE OPORTUNIDADES TRABAJO

## P: ¿Mejor trabajo EN ECUADOR o USA remoto?

**R:** Realidad:

```
USA Remote:
✅ Salario $100K-150K USD
✅ Remote total
✅ English-based (required)
✅ Horarios flexibles

Ecuador:
✅ Salario $800-1500 USD mensuales
✅ Algún remoto
✅ Spanish
✅ Local connections

Stratey: USA remote (better salary) + Ecuador side projects
```

**Mi recomendación:** Target USA remote companies (mejor ROI), pero mantén network local Ecuador.

---

## P: ¿Debo mencionar que soy de Ecuador?

**R:** **SÍ, estratégicamente:**

```
LinkedIn:
- "Ecuador-based, available for remote work"
- "5 years banking software, moving to AI"

GitHub:
- Location: Ecuador (or not, doesn't matter)
- Bio: focus technical skills

Job interviews:
- ✅ Mention timezone (UTC-5)
- ✅ Mention availability (full-time)
- ❌ Don't mention as "limitation", as "asset"
```

**Frame:** "I offer local market knowledge + global technical skills."

---

## P: ¿Salario realista año 1?

**R:** Escenarios:

```
SCENARIO A: Solo trabajo remoto (months 13+)
├── Month 13-16: Interview/apply
├── Month 17: Hired at $70K/year
├── Month 18-24: $80K-90K/year
└── Total Year 1: $40K-50K

SCENARIO B: Trabajo + side projects (months 13+)
├── Month 17: Job at $70K/year
├── Month 18-24: Side projects $2K-8K/mes
└── Total Year 1: $70K-120K

SCENARIO C: Solo side projects (months 13+)
├── Month 15-24: Build + sell
├── Clients: 5-15
├── Total Year 1: $10K-30K (risky but possible)

RECOMENDATION: Mix B (trabajo + projects)
```

---

# G. ÚLTIMO CHECKLIST ANTES DE EMPEZAR

```
AMBIENTE:
[ ] Python 3.10+ installed
[ ] VSCode configured
[ ] GitHub account created
[ ] Git configured
[ ] Udemy Business access confirmed

MENTAL:
[ ] Committed to 12 months
[ ] Realistic expectations set
[ ] Support system ready (family, friends)
[ ] Backup plan if needed (job security, etc)

LOGISTICA:
[ ] 2 horas/day blocked in calendar
[ ] Distraction-free workspace identified
[ ] Backup power if needed (power issues)
[ ] Budget $50-100 for tools (optional)

COMMUNITY:
[ ] Reddit account (r/Python, r/FastAPI)
[ ] Discord joined (FastAPI, LangChain)
[ ] Twitter/LinkedIn account ready (later)
[ ] One mentor/accountability partner

RESOURCES:
[ ] All 4 documents (roadmap, guía, nicho, FAQ) printed/bookmarked
[ ] Docs links saved
[ ] First Udemy course purchased/queued
```

---

**¿Alguna pregunta que no esté cubierta?**

Respondo cualquier duda específica tuya. ¡Vamos! 🚀

