# 📖 FASE 1: FUNDAMENTOS (MESES 1-3)
**Duración:** 12 semanas | **Horas totales:** ~60h video + 80h práctica | **Meta:** Python sólido + FastAPI + Backend básico

---

## 🎯 OBJETIVO FASE 1

Al finalizar tendrás:
- ✅ Dominio de Python (variables, OOP, async, debugging)
- ✅ APIs RESTful profesionales con FastAPI
- ✅ SQL y PostgreSQL funcional
- ✅ Git/GitHub workflow profesional
- ✅ Docker básico (containerizar apps)
- ✅ Primer mini-proyecto deployable: **Email Classifier Agent**

---

## 📅 CRONOGRAMA POR SEMANA

### **SEMANAS 1-4: PYTHON MASTERCLASS**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 1 | Python basics (variables, tipos, control flow) | 6h | 10h | 5 scripts simples |
| 2 | Funciones, lambdas, list comprehensions | 5h | 12h | Desafíos de HackerRank |
| 3 | OOP (clases, herencia, polimorfismo) | 6h | 15h | Mini-proyecto: clase de Usuario |
| 4 | Modules, packages, debugging, testing | 5h | 15h | Script con tests |

**Cursos Udemy (Semanas 1-4) - ESPAÑOL:**
- **"Python Practicando. Desde 0 hasta Desarrollador en Python"** (Alvaro Chirou)
- Rating: 4.5/5 | 684,000+ estudiantes | 🇪🇸 ESPAÑOL
- Duración: ~50h (toma ~25h lo esencial)
- Ver: `06-CURSOS-UDEMY-ORDEN.md` para link exacto

**Conceptos CLAVE a dominar:**
```python
✓ Variables y tipos dinámicos
✓ Funciones y *args, **kwargs
✓ List/Dict comprehensions
✓ Clases y herencia
✓ Decoradores (@property, @staticmethod)
✓ try/except
✓ Importar módulos (import, from...import)
✓ f-strings
✓ Async/await basics
```

**Recursos extras (NO Udemy):**
- Real Python (realpython.com) - tutoriales claros
- Python docs oficial (docs.python.org)

---

### **SEMANAS 5-7: CONTEXTO API REST + FASTAPI**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 5 | REST APIs concepts (GET, POST, PUT, DELETE, status codes) | 4h | 8h | Entender HTTP bien |
| 6 | FastAPI intro (route, request/response, Pydantic) | 6h | 12h | 3 endpoints simples |
| 7 | FastAPI avanzado (middleware, error handling, docs) | 6h | 12h | API completa con validation |

**Cursos Udemy (Semanas 5-7) - ESPAÑOL:**
- Semana 5: Conceptos REST (puedes revisar docs online si ya conoces)
- Semanas 6-7: **"Aprende FastAPI desde cero"** O **"FastAPI, backend con Python"**
  - Rating: 4.5+/5 | 🇪🇸 ESPAÑOL
  - Duración: ~10-12 horas
  - CRÍTICO: haz TODO esto. FastAPI es tu tool principal
  - Alternativa: **"Desarrolla de forma rápida APIs con FastAPI en Python"** (Alvaro Chirou)

**Conceptos CLAVE:**
```python
✓ HTTP status codes (200, 201, 400, 404, 500)
✓ Request/Response cycle
✓ Pydantic models para validation
✓ Path params, query params, body
✓ Decoradores @app.get, @app.post
✓ Dependency injection
✓ JSON serialization
```

**Proyecto mini (Semana 7):**
```
Crea API simple:
- GET /users/{id}
- POST /users (crea usuario)
- PUT /users/{id} (actualiza)
- DELETE /users/{id}
+ Validación con Pydantic
+ Errores manejados
+ Documentación automática (Swagger)
```

---

### **SEMANAS 8-10: SQL + PostgreSQL + GIT PROFESIONAL**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 8 | SQL basics (SELECT, INSERT, UPDATE, DELETE, JOINs) | 5h | 12h | Query complex bien |
| 9 | PostgreSQL setup + psycopg2 + SQLAlchemy intro | 4h | 10h | ORM básico funcionando |
| 10 | Git profesional + GitHub + CI basics | 3h | 8h | Repos bien estructurados |

**Cursos Udemy (Semanas 8-10) - ESPAÑOL:**
- Semana 8-9: **"PostgreSQL. Curso completo de PostgreSQL. Aprende desde cero"** (REDAIT MEDIA)
  - Rating: 4.5+/5 | 🇪🇸 ESPAÑOL
  - Duración: ~10-15 horas
  - Alternativa: **"Diseño de Base de Datos con PostgreSQL y MySQL"**
  - Practica en paralelo: **SQLZoo.net**
- Semana 10: Git - Busca **"Git GitHub español"** (3-4h en Udemy, rating >4.5)

**Conceptos CLAVE:**
```sql
✓ SELECT, WHERE, ORDER BY, GROUP BY
✓ INNER/LEFT/RIGHT/FULL JOINs
✓ INSERT, UPDATE, DELETE
✓ CREATE TABLE, ALTER TABLE
✓ Indexes, PRIMARY KEY, FOREIGN KEY
✓ Transactions, ACID
✓ Subqueries, CTEs

Python + DB:
✓ psycopg2 (conexión directa)
✓ SQLAlchemy ORM
✓ Connection pooling
✓ Prepared statements (SQL injection prevention)
```

**Proyecto mini (Semana 10):**
```
Integra DB en tu API:
- Crea tabla "users" en PostgreSQL
- Usa SQLAlchemy ORM
- GET /users retorna todos de DB
- POST /users guarda en DB
- PUT /users/{id} actualiza DB
- DELETE /users/{id} borra de DB
```

**Git + GitHub:**
```
✓ git init, add, commit, push
✓ Branches (main, develop, feature/*)
✓ Pull requests, code review
✓ .gitignore correcto
✓ Commits semánticos (feat:, fix:, docs:)
```

---

### **SEMANAS 11-12: DOCKER + PROYECTO FINAL FASE 1**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 11 | Docker basics (images, containers, Dockerfile, compose) | 5h | 10h | App containerizada |
| 12 | PROYECTO FINAL: Email Classifier Agent | 0h | 20h | MVP deployable |

**Curso Udemy (Semana 11) - ESPAÑOL:**
- **"Aprende Docker de cero a experto: con Compose y Swarm"**
- Rating: 4.5+/5 | 🇪🇸 ESPAÑOL
- Duración: ~8-12 horas

**Conceptos CLAVE:**
```dockerfile
✓ Dockerfile (FROM, RUN, COPY, CMD, EXPOSE)
✓ Docker images & containers
✓ docker build, docker run, docker push
✓ Docker compose (multi-container)
✓ .dockerignore
✓ Volume mounting
✓ Environment variables
```

**Proyecto mini (Semana 11):**
```
Dockeriza tu API:
- Crea Dockerfile para tu FastAPI app
- Crea docker-compose.yml (app + PostgreSQL + Redis)
- docker-compose up funciona completamente
- API responde en localhost:8000
```

---

## 🚀 PROYECTO FINAL FASE 1: EMAIL CLASSIFIER AGENT

**Duración:** Semana 12 (20 horas aprox)

### Descripción:
Sistema que recibe emails vía API REST y los clasifica automáticamente usando Claude API según categoría (urgente, marketing, spam, personal, etc.).

### Requisitos Funcionales:

1. **API Endpoint:**
   ```
   POST /classify-email
   Body: {
     "email_id": "123",
     "subject": "Your Order #12345",
     "body": "Thank you for...",
     "sender": "orders@amazon.com"
   }
   
   Response: {
     "email_id": "123",
     "classification": "shopping",
     "confidence": 0.95,
     "reasoning": "Contains order confirmation",
     "saved_at": "2025-01-15T10:30:00Z"
   }
   ```

2. **Database:**
   - Tabla `emails` (id, subject, body, sender, classification, confidence, created_at)
   - Tabla `classifications` (id, category, description)

3. **Claude Integration:**
   - Call Claude API con prompt estructurado
   - Parsing de respuesta JSON

4. **Containerizado:**
   - Dockerfile funcional
   - docker-compose con PostgreSQL
   - `.env` para API keys

### Tech Stack:
```
✓ Python 3.12+
✓ FastAPI
✓ SQLAlchemy ORM
✓ PostgreSQL
✓ Claude API (python-sdk)
✓ Docker & Docker Compose
✓ Pydantic (validation)
```

### Estructura de carpetas:
```
email-classifier-agent/
├── main.py (app FastAPI)
├── models.py (SQLAlchemy models)
├── schemas.py (Pydantic schemas)
├── services/
│   ├── claude_service.py (Claude API calls)
│   └── email_service.py (email logic)
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── .env.example
├── .gitignore
└── README.md (instrucciones setup)
```

### Aprendizajes que consolidas:
- ✅ FastAPI completo (endpoints, validation, errors)
- ✅ SQLAlchemy ORM (models, queries, relationships)
- ✅ API externa (Claude API integration)
- ✅ Docker & Compose
- ✅ Environment variables & secrets
- ✅ JSON parsing & validation
- ✅ Error handling profesional

### Success Criteria:
- [ ] API responde correctamente con clasificación
- [ ] Datos guardados en PostgreSQL
- [ ] docker-compose up hace todo automático
- [ ] README con instrucciones claras
- [ ] Code sin hardcodes, secrets en .env
- [ ] Git con commits semánticos

---

## 📚 CONCEPTOS TRANSVERSALES (DURANTE TODO)

**Clean Code principles:**
- Nombres claros para variables/funciones
- Funciones pequeñas (max 20 líneas)
- DRY (Don't Repeat Yourself)
- SOLID basics

**Git workflow profesional:**
- Commit diario mínimo
- Mensajes semánticos: `feat: add email classification`, `fix: handle null values`
- Main branch stable (solo merge de features testé

das)

**Testing basics:**
```python
# Semana 3-4: aprende pytest
import pytest

def test_classifier_returns_dict():
    result = classify_email("subject", "body")
    assert isinstance(result, dict)
    assert "classification" in result
```

---

## 📋 CHECKLIST FASE 1

**Final de Semana 4 (Python):**
- [ ] Completé Python bootcamp
- [ ] Puedo escribir clases sin mirar docs
- [ ] Entiendo decoradores y async/await
- [ ] Hice 10+ ejercicios complejos

**Final de Semana 7 (FastAPI):**
- [ ] Completé FastAPI course
- [ ] Tengo API con CRUD full funcional
- [ ] Todos los endpoints tienen validation
- [ ] Puedo leer FastAPI docs sin pánico

**Final de Semana 10 (SQL + Git):**
- [ ] SQLAlchemy integrado en mi API
- [ ] DB queries funcionan perfectamente
- [ ] Git workflow profesional
- [ ] Entiendo JOINs y transactions

**Final de Semana 12 (Docker + Proyecto):**
- [ ] Email Classifier Agent 100% funcional
- [ ] Docker compose trae todo up sin issues
- [ ] GitHub tiene commits limpios
- [ ] README explica TODO claro

---

## 🔗 ARCHIVOS RELACIONADOS

- `01-MASTER-ROADMAP.md` - Overview general
- `06-CURSOS-UDEMY-ORDEN.md` - Links exactos Udemy
- `07-SEGUIMIENTO-SEMANAL.md` - Tu tracking semanal
- `08-RECURSOS-EXTERNOS.md` - Docs, tutoriales extras

---

## 📍 PRÓXIMA FASE

Después de completar Fase 1 → **03-FASE-2-AI-WORKFLOWS.md**
- LangChain & LLMs avanzado
- RAG (Retrieval-Augmented Generation)
- Multi-agent systems

---

**Versión:** 1.0
**Status:** COMENZANDO HOY
**Actualizado:** November 24, 2025
