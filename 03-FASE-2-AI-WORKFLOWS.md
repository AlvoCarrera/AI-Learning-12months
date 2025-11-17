# 🤖 FASE 2: AI WORKFLOWS (MESES 4-6)
**Duración:** 12 semanas | **Horas totales:** ~30h video + 120h práctica | **Meta:** Dominar LLMs, RAG y Multi-Agent Systems

---

## 🎯 OBJETIVO FASE 2

Al finalizar tendrás:
- ✅ Dominio de Claude API & OpenAI APIs
- ✅ LangChain profesional (chains, tools, memory)
- ✅ RAG (Retrieval-Augmented Generation) implementado
- ✅ Vector databases (Pinecone, ChromaDB)
- ✅ Prompt engineering patterns probados
- ✅ Multi-agent orchestration básico
- ✅ Dos mini-proyectos AI productivos
- ✅ Entender cuándo usar qué herramienta

---

## 📅 CRONOGRAMA POR SEMANA

### **SEMANAS 1-4 (Meses 4-4.5): LLMS & LANGCHAIN FUNDAMENTALS**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 1 | LLM basics, APIs (OpenAI, Claude), tokens, costs | 4h | 12h | Calls exitosos con ambas APIs |
| 2 | LangChain fundamentals (chains, prompts, parsers) | 5h | 15h | 3 chains funcionales |
| 3 | LangChain avanzado (tools, agents, memory) | 5h | 18h | Agent simple con tools |
| 4 | Prompt engineering patterns & optimization | 4h | 12h | Prompts robustos, reusables |

**Cursos Udemy (Semanas 1-4):**
- **"LangChain & Large Language Models"** (14h)
- **"Building AI Agents with Python"** (10h) - empieza semana 3
- Ver: `06-CURSOS-UDEMY-ORDEN.md`

**Conceptos CLAVE a dominar:**
```python
# LLM Basics
✓ Token counting y costos
✓ Temperature, max_tokens, top_p
✓ Streaming vs batch
✓ Error handling (rate limits, timeouts)
✓ API keys management (.env)

# LangChain
✓ LLMChain (prompt + llm)
✓ Prompts templates (PromptTemplate, ChatPromptTemplate)
✓ Output parsers (structured output)
✓ Chains (Sequential, Router chains)
✓ Tools (tool_decorator, BaseTool)
✓ Agents (ReAct agents, tool use)
✓ Memory (ConversationBufferMemory, etc)

# Claude specifics
✓ Messages API (user/assistant/system roles)
✓ Tool use (function calling)
✓ Vision (image analysis)
✓ Batch processing (cuando relevent)
```

**Recursos extras:**
- Claude documentation (claude.ai/docs)
- LangChain docs (langchain.com)
- OpenAI cookbook (github.com/openai/cookbook)

**Proyecto mini (Semana 3):**
```
Agent simple "Información Financiera":
- Tool 1: busca precio actual (mock data)
- Tool 2: calcula rendimiento anual (mock)
- Agent elige qué tool usar según pregunta
- Ejemplo: "¿Cuál es el precio de AAPL?"
  → Agent usa Tool 1 → responde
```

---

### **SEMANAS 5-8 (Meses 4.5-5.5): RAG & VECTOR DATABASES**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 5 | Embeddings concept, vector DBs intro (Pinecone, ChromaDB) | 4h | 14h | Embeddings creados, indexados |
| 6 | RAG architecture (retrieval + generation pattern) | 5h | 16h | Simple RAG working |
| 7 | Advanced RAG (chunking, metadata, hybrid search) | 5h | 18h | RAG optimizado con reranking |
| 8 | PROYECTO: RAG Support Agent | 0h | 24h | MVP productivo |

**Cursos Udemy:**
- Semana 5-6: **"LangChain & LLMs"** section "RAG & Vector Stores" (si está)
- O learn by doing: Lee docs de Pinecone + LangChain integrations

**Conceptos CLAVE:**
```python
# Embeddings
✓ Embedding models (OpenAI, HuggingFace)
✓ Embedding vs vector representation
✓ Dimensionality (384 vs 1536)
✓ Similarity search (cosine, euclidean)

# Vector Databases
✓ Pinecone (managed, easy start)
✓ ChromaDB (local, development)
✓ Weaviate, Milvus alternatives
✓ Index creation & querying
✓ Metadata filtering

# RAG Pattern
✓ Document loading (PDFs, text, web)
✓ Chunking strategies (size, overlap, semantic)
✓ Embedding documents
✓ Storing in vector DB
✓ Retrieval (top-k search)
✓ Generation (LLM with context)

# Advanced
✓ Metadata tagging
✓ Reranking (improve relevance)
✓ Query expansion
✓ Multi-hop retrieval
✓ Cost optimization
```

**Proyecto mini (Semana 8):**

```
RAG Support Agent "Customer Help"
- Ingesta: 3-5 PDFs (políticas, FAQs, documentos)
- Retrieval: semantic search en Pinecone
- Generation: Claude con context retrieved
- Multi-turn: remembers context en conversation

Ejemplo flujo:
User: "¿Cómo cambio mi contraseña?"
→ Retrieves doc "password_reset.pdf"
→ Claude: "Basado en nuestra política...
  ve a Settings > Security > Change Password"

Requisitos:
✓ FastAPI endpoint: POST /ask
✓ Pinecone vector store populated
✓ LangChain RAG chain funcional
✓ Prompt optimizado
✓ Error handling (no relevant docs, etc)
```

---

### **SEMANAS 9-12 (MESES 5.5-6): MULTI-AGENT & ORCHESTRATION**

| Semana | Tema | Horas Video | Horas Práctica | Deliverable |
|--------|------|------------|----------------|------------|
| 9 | Multi-agent design patterns (supervisor, sequential, parallel) | 4h | 16h | Multi-agent system básico |
| 10 | Agent communication & state management | 4h | 14h | Agents colaborativos |
| 11 | LLM-as-Judge, reflection patterns, self-improvement | 4h | 12h | Agent con feedback loop |
| 12 | PROYECTO: Workflow Automation Agent | 0h | 20h | MVP multi-agente |

**Cursos Udemy:**
- **"Building AI Agents with Python"** (parts 2-3)
- AutoGen basics (Microsoft AutoGen library)

**Conceptos CLAVE:**
```python
# Multi-Agent Patterns
✓ Supervisor Agent (orquesta otros)
✓ Sequential Agents (chain de agents)
✓ Parallel Agents (agents independientes)
✓ Hierarchical Agents (levels de abstracción)

# Agent Communication
✓ Message passing entre agents
✓ Shared state/context
✓ Tool sharing
✓ Consensus patterns

# Advanced Patterns
✓ Self-reflection (agent evalúa su respuesta)
✓ Tool-use chains (agent decides qué tools usar)
✓ Guardrails (prevenir bad outputs)
✓ Logging & monitoring

# Orchestration Tools
✓ n8n (visual workflow no-code) - intro
✓ LangGraph (graph-based agent flows)
✓ Manual orchestration (loop + state)
```

**Proyecto mini (Semana 12):**

```
Workflow Automation Agent "Sales Pipeline"
- Agent 1: LeadProcessor (califica leads)
- Agent 2: EmailDrafter (escribe emails)
- Agent 3: TaskScheduler (crea reminders)
- Supervisor: OrquestaEl flujo

Ejemplo flujo:
1. New lead arrives
2. LeadProcessor: categoriza (hot/warm/cold)
3. Si hot: EmailDrafter genera pitch
4. TaskScheduler crea follow-up task
5. Resultado: email enviado + task creado

Requirements:
✓ 3+ agents independientes
✓ Supervisor orquesta flujo
✓ Cada agent tiene su tool set
✓ State compartido (leads, emails)
✓ Logging de cada decision
```

---

## 🔧 RECURSOS CLAVE (DURANTE TODO FASE 2)

**APIs & Libraries:**
```python
# Claude
from anthropic import Anthropic
client = Anthropic()
response = client.messages.create(
    model="claude-3-5-sonnet-20241022",
    messages=[...],
    tools=[...],  # tool use
)

# LangChain
from langchain.chains import LLMChain
from langchain.prompts import ChatPromptTemplate
from langchain_community.tools import Tool
from langchain.agents import AgentExecutor, create_tool_calling_agent

# Vector DB
from langchain_community.vectorstores import Pinecone
from langchain_openai import OpenAIEmbeddings
# o
from langchain_community.vectorstores import Chroma
```

**Documentación crucial:**
- claude.ai/docs → API reference
- langchain.com/docs → LangChain docs
- docs.pinecone.io → Pinecone
- github.com/langchain-ai/langchain-js → ejemplos

---

## 📚 CONCEPTOS TRANSVERSALES FASE 2

**Prompt Engineering:**
```
✓ Few-shot examples
✓ Chain-of-thought prompting
✓ System prompts efectivos
✓ Structured output (JSON mode)
✓ Iteración & testing de prompts

Template reusable:
template = """
You are a {role}.
Your task: {task}
Context: {context}
User query: {query}
Respond in JSON format: {output_format}
"""
```

**Token Management & Costs:**
```python
# Calcula antes de llamar
from tiktoken import encoding_for_model

enc = encoding_for_model("gpt-4")
tokens = len(enc.encode(text))
cost = (tokens / 1000) * price_per_1k

# Claude:
# Input: $3 per 1M tokens
# Output: $15 per 1M tokens
```

**Error Handling:**
```python
from tenacity import retry, wait_exponential, stop_after_attempt

@retry(wait=wait_exponential(), stop=stop_after_attempt(3))
def call_claude(prompt):
    try:
        response = client.messages.create(...)
        return response
    except RateLimitError:
        # Handle rate limit
        pass
    except APIConnectionError:
        # Retry with backoff
        pass
```

**Testing LLM outputs:**
```python
# LLMs son no-determinísticos, test patterns no values
def test_agent_returns_correct_structure():
    response = agent.run(query)
    assert "action" in response
    assert "tool_used" in response
    # No testees el valor exacto del texto
```

---

## 📋 CHECKLIST FASE 2

**Final de Semana 4 (LLMs & LangChain):**
- [ ] Completé LangChain & LLMs course
- [ ] Puedo crear chains sin copiar código
- [ ] Entiendo tool use y agents
- [ ] Tengo agent simple funcionando

**Final de Semana 8 (RAG):**
- [ ] RAG Support Agent 100% funcional
- [ ] Pinecone/ChromaDB poblado correctamente
- [ ] Multi-turn conversation works
- [ ] Metadata filtering implementado
- [ ] API endpoint responde bien

**Final de Semana 12 (Multi-Agent):**
- [ ] Workflow Automation Agent deployable
- [ ] 3+ agents coordinados
- [ ] Logging claro de decisions
- [ ] State management funcional
- [ ] Ready para monetizar

---

## 🎓 SKILLS QUE CONSOLIDAS

- Arquitectura de sistemas AI
- LLM orchestration & control
- Vector DB manipulation
- API integration
- Multi-agent design patterns
- Prompt iteration & testing
- Cost management
- Production-ready error handling

---

## 🔗 ARCHIVOS RELACIONADOS

- `01-MASTER-ROADMAP.md` - Overview general
- `04-FASE-3-ARQUITECTURA.md` - Escalabilidad
- `06-CURSOS-UDEMY-ORDEN.md` - Links exactos
- `07-SEGUIMIENTO-SEMANAL.md` - Tu tracking
- `08-RECURSOS-EXTERNOS.md` - Docs extras

---

## 📍 PRÓXIMA FASE

Después de completar Fase 2 → **04-FASE-3-ARQUITECTURA.md**
- Kubernetes & containerization avanzado
- Microservices patterns
- System design para scale

---

**Versión:** 1.0  
**Status:** FASE 2 LISTA  
**Actualizado:** November 17, 2025
