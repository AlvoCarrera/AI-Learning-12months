# 🏗️ FASE 3: ARQUITECTURA ESCALABLE (MESES 7-9)
**Duración:** 12 semanas | **Horas totales:** ~26h video + 140h práctica | **Meta:** Diseñar sistemas que escalen a millones de usuarios

---

## 🎯 OBJETIVO FASE 3

Al finalizar tendrás:
- ✅ Kubernetes profesional (pods, deployments, services)
- ✅ Microservices patterns (communication, resilience, observability)
- ✅ Database scaling (replication, sharding, optimization)
- ✅ Caching strategies (Redis, TTLs, cache invalidation)
- ✅ Message queues (async tasks, background jobs)
- ✅ System design thinking (from 100 to 100M users)
- ✅ Multi-tenant architecture
- ✅ Proyecto final: Multi-tenant AI Platform en Kubernetes

---

## 📅 CRONOGRAMA POR SEMANA

### **SEMANAS 1-4 (MESES 7-7.5): KUBERNETES & CONTAINERIZATION ADVANCED**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 1 | Kubernetes basics (pods, deployments, services, ingress) | 4h | 14h | Deployment simple en K8s |
| 2 | ConfigMaps, Secrets, persistent volumes, networking | 4h | 14h | Stateful app in K8s |
| 3 | Health checks, resource limits, autoscaling (HPA, VPA) | 3h | 16h | Auto-scaling configured |
| 4 | Helm charts (package management), best practices | 3h | 14h | Custom Helm chart |

**Cursos Udemy (Semanas 1-4):**
- **"Kubernetes for Developers"** (12h)
- **"Docker & Kubernetes: The Complete Guide"** (alternative if better paced)
- Ver: `06-CURSOS-UDEMY-ORDEN.md`

**Conceptos CLAVE:**
```yaml
# Kubernetes Objects
✓ Pods (smallest deployable unit)
✓ Deployments (manage replicas)
✓ Services (networking, load balancing)
✓ Ingress (external access)
✓ ConfigMaps & Secrets (config management)
✓ PersistentVolume & PersistentVolumeClaim
✓ StatefulSets (stateful apps)

# Networking
✓ ClusterIP (internal), NodePort (external), LoadBalancer
✓ DNS in K8s (service discovery)
✓ NetworkPolicies (security)
✓ Ingress controllers (routing rules)

# Resource Management
✓ Requests vs Limits (CPU, memory)
✓ Quality of Service (QoS classes)
✓ Namespaces (isolation)
✓ RBAC (role-based access)

# Scaling
✓ HorizontalPodAutoscaler (auto-scale pods)
✓ VerticalPodAutoscaler (auto-adjust requests/limits)
✓ ClusterAutoscaler (node scaling)

# Deployment
✓ Rolling updates
✓ Blue-green deployments
✓ Canary releases
```

**Proyecto mini (Semana 3):**
```yaml
Deploy FastAPI app + PostgreSQL en Kubernetes:
- Dockerfile for app
- docker-compose for local development
- K8s manifests:
  * Deployment (FastAPI pods)
  * Service (expose app)
  * ConfigMap (env vars)
  * Secret (API keys)
  * PersistentVolume (PostgreSQL data)
- Helm chart to bundle all
- HPA: auto-scale pods between 2-10 replicas
```

---

### **SEMANAS 5-8 (MESES 7.5-8.5): MICROSERVICES & MESSAGE QUEUES**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 5 | Microservices patterns (API gateway, service mesh intro) | 4h | 16h | Multi-service setup |
| 6 | Inter-service communication (HTTP/gRPC, circuit breaker) | 3h | 14h | Services communicate |
| 7 | Message queues (Celery, RabbitMQ/Redis backend) | 3h | 16h | Async tasks working |
| 8 | Observability (logging, tracing, monitoring) | 3h | 12h | Full observability stack |

**Cursos Udemy:**
- **"Microservices Architecture"** (10h)
- Or sections in previous Docker/Kubernetes courses

**Conceptos CLAVE:**
```python
# Microservices Design
✓ Service boundaries (domain-driven)
✓ API contracts (versioning, backward compatibility)
✓ API Gateway pattern (single entry point)
✓ Service discovery (auto-registration)

# Communication Patterns
✓ REST vs gRPC (synchronous)
✓ Event-driven (asynchronous, pub-sub)
✓ Saga pattern (distributed transactions)
✓ Circuit breaker (fault tolerance)

# Message Queues
✓ Celery (Python distributed tasks)
✓ Redis backend (simple, fast)
✓ RabbitMQ (production-grade)
✓ Message persistence & durability

# Observability (3 Pillars)
✓ Logging (structured, centralized)
✓ Tracing (request flow across services)
✓ Metrics (performance, custom business metrics)

# Tools
✓ ELK (Elasticsearch, Logstash, Kibana)
✓ Jaeger (distributed tracing)
✓ Prometheus (metrics)
✓ Grafana (dashboards)
```

**Proyecto mini (Semana 7):**
```python
Celery background tasks:

# Services
- Main FastAPI app (API)
- Celery worker (background jobs)
- Redis (message broker + result backend)
- PostgreSQL (persistence)

# Example tasks:
- Long email classification → async job
- Report generation → scheduled
- Webhook sending → retry logic

@celery.task(bind=True, max_retries=3)
def classify_email_async(self, email_id):
    try:
        result = classify_with_claude(email_id)
        save_to_db(result)
    except Exception as exc:
        retry_in = 2 ** self.request.retries
        self.retry(exc=exc, countdown=retry_in)

# API
POST /emails/{id}/classify
→ triggers classify_email_async.delay(id)
→ returns task_id
→ GET /tasks/{task_id} returns status
```

---

### **SEMANAS 9-12 (MESES 8.5-9): SYSTEM DESIGN & FINAL PROJECT**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 9 | System Design fundamentals (scale, reliability, latency) | 4h | 14h | Design doc 100K users |
| 10 | Database scaling (indexing, query optimization, sharding) | 4h | 16h | Optimized PostgreSQL |
| 11 | Caching strategies (Redis, cache patterns, invalidation) | 3h | 14h | Multi-layer caching |
| 12 | PROYECTO: Multi-Tenant AI Platform | 0h | 28h | Production-ready MVP |

**Cursos Udemy:**
- No course específico (system design es mostly practice)
- But watch: "Mastering System Design" sections si hay en plataformas

**Conceptos CLAVE:**
```
# Scalability
✓ Horizontal vs Vertical scaling
✓ Load balancing (round-robin, least-conn, consistent hashing)
✓ Database replication (master-slave, master-master)
✓ Sharding (by user ID, geography, etc)
✓ Caching layers (CDN, application cache, DB cache)

# Reliability
✓ Redundancy (no single points of failure)
✓ Failover strategies
✓ Data backup & recovery
✓ Disaster recovery planning

# Performance
✓ Latency optimization (async, caching, indexing)
✓ Throughput (concurrent connections)
✓ Query optimization (EXPLAIN, indexes, joins)
✓ Connection pooling

# Cost Efficiency
✓ Optimize compute usage
✓ Right-size databases
✓ Cache aggressively
✓ CDN for assets

# Multi-Tenancy Patterns
✓ Row-level security (RLS)
✓ Separate schemas or databases
✓ Shared infrastructure, isolated data
✓ Resource quotas per tenant
```

**Proyecto FINAL FASE 3 (Semana 12):**

```
Multi-Tenant AI Platform "Platform as a Service"

Arquitectura:
┌─────────────────────────────────────┐
│ Ingress (Nginx)                      │
├─────────────────────────────────────┤
│ API Gateway (FastAPI, rate limiting) │
├─────────────────────────────────────┤
│ Main Services (Kubernetes Pods):    │
│ - Auth Service                       │
│ - Agent Service                      │
│ - Analytics Service                  │
│ - Billing Service                    │
├─────────────────────────────────────┤
│ Background Workers (Celery)          │
├─────────────────────────────────────┤
│ Data Layer:                          │
│ - PostgreSQL (multi-tenant DB)       │
│ - Redis (cache + sessions)           │
│ - Vector DB (Pinecone)               │
└─────────────────────────────────────┘

Features:
✓ Multi-tenant (separate data per tenant)
✓ API rate limiting (100 req/min per tenant)
✓ Auto-scaling (min 2, max 10 pods)
✓ Background jobs (async agent runs)
✓ Monitoring & alerting
✓ Audit logging (who did what)
✓ Billing (usage-based pricing)

Tech Stack:
- FastAPI (main API)
- PostgreSQL (multi-tenant tables with tenant_id)
- Redis (sessions, rate limiting, cache)
- Celery + Redis (background jobs)
- Kubernetes (orchestration)
- Prometheus + Grafana (monitoring)
- ELK (logging)

Key Features:
1. Tenant Management
   POST /tenants/
   GET /tenants/{id}
   Admin dashboard

2. Agent Management
   POST /agents/ (create agent)
   POST /agents/{id}/run (execute)
   GET /agents/{id}/status (async status)

3. Multi-tenancy
   - DB: tenant_id on every table
   - API: middleware validates tenant access
   - Isolation: row-level security
   - Rate limits: per tenant

4. Observability
   - Structured logs (JSON)
   - Distributed tracing
   - Custom metrics (agents run, costs)
   - Dashboards (Grafana)

5. Scaling
   - K8s HPA (auto-scale to demand)
   - DB connection pooling
   - Redis caching
   - CDN for static assets

Deployment:
helm install my-platform ./platform-chart \
  --namespace production \
  --values values-prod.yaml

Success Criteria:
✓ Multiple tenants isolated
✓ Agents run async correctly
✓ Auto-scaling works under load
✓ Monitoring alerts on failures
✓ Zero downtime deployment
✓ Audit logs complete
```

---

## 🔧 HERRAMIENTAS CLAVE

**Kubernetes:**
```bash
# Local development
minikube start
kubectl apply -f deployment.yaml
kubectl get pods
kubectl logs pod-name
kubectl scale deployment app --replicas=3
kubectl rollout status deployment/app

# Helm
helm create chart-name
helm install release-name ./chart-name
helm upgrade release-name ./chart-name
```

**Message Queues:**
```python
# Redis-based
from celery import Celery
app = Celery('tasks', broker='redis://localhost:6379/0')

@app.task
def long_task(x):
    return x * 2

# Trigger
result = long_task.delay(5)
result.get(timeout=10)
```

**Observability:**
```python
# Structured logging
import structlog
logger = structlog.get_logger()
logger.info("event", user_id=123, action="login", duration_ms=45)

# Tracing
from opentelemetry import trace
tracer = trace.get_tracer(__name__)
with tracer.start_as_current_span("process_email"):
    # code here gets traced
```

---

## 📚 CONCEPTOS TRANSVERSALES FASE 3

**Resilience Patterns:**
```python
# Retry logic
from tenacity import retry, wait_exponential, stop_after_attempt

@retry(wait=wait_exponential(multiplier=1, min=2, max=10), 
       stop=stop_after_attempt(3))
def call_external_service():
    pass

# Circuit breaker
from pybreaker import CircuitBreaker

breaker = CircuitBreaker(fail_max=5, reset_timeout=60)
try:
    breaker.call(external_service)
except CircuitBreakerListener:
    # fallback logic
```

**Performance Optimization:**
```python
# Query optimization
# BAD: N+1 query problem
for user in users:
    posts = db.query(Post).filter(Post.user_id == user.id).all()

# GOOD: eager loading
users = db.query(User).options(joinedload(User.posts)).all()

# Indexing
CREATE INDEX idx_user_id ON emails(user_id);
CREATE INDEX idx_created_at ON emails(created_at DESC);

# Caching
from functools import lru_cache
@lru_cache(maxsize=128)
def expensive_computation(x):
    return x ** 2
```

---

## 📋 CHECKLIST FASE 3

**Final de Semana 4 (Kubernetes):**
- [ ] Completé Kubernetes course
- [ ] Puedo escribir manifests YAML sin copy-paste
- [ ] Deployment en K8s local (minikube) funciona
- [ ] HPA auto-scaling probado

**Final de Semana 8 (Microservices):**
- [ ] 3+ servicios comunicándose
- [ ] Celery tasks ejecutándose
- [ ] Logging centralizado working
- [ ] Monitoring básico configurado

**Final de Semana 12 (System Design):**
- [ ] Multi-Tenant Platform deployable
- [ ] All services running on K8s
- [ ] Database optimized & monitored
- [ ] Under load test: 1000 req/sec without issues
- [ ] Docs: architecture, deployment, scaling guide

---

## 🎓 SKILLS QUE CONSOLIDAS

- Production-grade system design
- Kubernetes orchestration
- Microservices architecture
- Distributed systems thinking
- Performance optimization
- Observability at scale
- High availability & reliability
- Cost-effective scaling

---

## 🔗 ARCHIVOS RELACIONADOS

- `01-MASTER-ROADMAP.md` - Overview
- `02-FASE-1-FUNDAMENTOS.md` - Backend basics
- `03-FASE-2-AI-WORKFLOWS.md` - AI workflows
- `05-FASE-4-ESPECIALIZACION.md` - Cloud deploy
- `06-CURSOS-UDEMY-ORDEN.md` - Cursos
- `07-SEGUIMIENTO-SEMANAL.md` - Tracking

---

## 📍 PRÓXIMA FASE

Después de completar Fase 3 → **05-FASE-4-ESPECIALIZACION.md**
- Cloud deployment (AWS/GCP)
- Production-ready systems
- Monetizable projects
- Portfolio polish
- Job hunting strategies

---

**Versión:** 1.0  
**Status:** FASE 3 LISTA  
**Actualizado:** November 17, 2025
