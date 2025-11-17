# 🚀 Roadmap AI Engineer 12 Meses

**Mi plan personal:** AI Software Engineer + Software Architect en 12 meses

## 📊 Status Actual

- **Fase:** 1/4 (Fundamentos)
- **Semana:** 1/48
- **Progreso:** 0%
- **Inicio:** Noviembre 2025

## 📚 Stack que Dominaré

```
Backend:      Python, FastAPI, PostgreSQL, Docker
AI/LLMs:      Claude API, LangChain, RAG, Vector DBs
DevOps:       Kubernetes, Terraform, CI/CD
Architecture: Microservices, Multi-tenancy, System Design
Cloud:        AWS/Azure basics
```

## 📁 Estructura del Proyecto

```
.
├── tracking/              SEMANA-XX-SEGUIMIENTO.md (tracking semanal)
├── notas/                 Mis notas diarias (YYYY-MM-DD.md)
├── proyectos/             Mini-proyectos (Email Classifier, RAG, etc)
├── scripts/               Scripts de automatización
│   └── new-week.sh       Crear tracking semanal
├── 00-RESUMEN-FINAL-EMPIEZA-HOY.md    ← EMPIEZA AQUÍ
├── 01-MASTER-ROADMAP.md               Overview completo (4 fases)
├── 02-FASE-1-FUNDAMENTOS.md           Meses 1-3
├── 03-FASE-2-AI-WORKFLOWS.md          Meses 4-6
├── 04-FASE-3-ARQUITECTURA.md          Meses 7-9
├── 05-FASE-4-ESPECIALIZACION.md       Meses 10-12
├── 06-CURSOS-UDEMY-ORDEN.md           Cursos exactos a tomar
├── 07-SEGUIMIENTO-SEMANAL-TEMPLATE.md Template de tracking
├── 08-RECURSOS-EXTERNOS.md            Docs, blogs, comunidades
├── 09-INDICE-MAESTRO.md               Índice de navegación
└── Makefile                           Comandos útiles
```

## 🚀 Cómo Empezar (HOY)

### 1. Lee la Guía Principal (10 min)
```bash
# Abre en tu editor o Obsidian:
open 00-RESUMEN-FINAL-EMPIEZA-HOY.md
```

Este archivo tiene:
- Qué aprenderás en 12 meses
- Stack completo
- Proyectos que construirás
- Pasos exactos para comenzar

### 2. Entiende el Roadmap (10 min)
```bash
# Lee el overview:
open 01-MASTER-ROADMAP.md

# Luego la FASE 1 (tus primeras 12 semanas):
open 02-FASE-1-FUNDAMENTOS.md
```

### 3. Configura Git y GitHub (5 min)
```bash
# Verificar estado de git
git status

# Crear repo en GitHub (https://github.com/new)
# Nombre sugerido: AI-Learning-12months
# Tipo: PUBLIC (para portfolio)

# Conectar con GitHub
git remote add origin https://github.com/TU_USUARIO/AI-Learning-12months.git
git branch -M main
git push -u origin main
```

### 4. Abre en Obsidian (opcional pero recomendado)
```bash
# Descarga Obsidian: https://obsidian.md
# Luego: File → Open folder as vault → Selecciona esta carpeta
```

### 5. Comienza a Estudiar
```bash
# Ve a 06-CURSOS-UDEMY-ORDEN.md
# Busca: "The Complete Python Bootcamp" by Jose Portilla
# Enrólate y comienza
```

## 📝 Rutina de Estudio

### Diario (después de estudiar)

```bash
# 1. Crea nota del día en Obsidian o con:
echo "# $(date +%Y-%m-%d)

## Estudiado
- [Describe lo que estudiaste]

## Aprendizajes
- [Puntos clave]

## Dudas
- [Lo que no entendiste]

## Progreso
- [Horas, ejercicios completados]" > notas/$(date +%Y-%m-%d).md

# 2. Actualiza tracking manualmente:
# Edita: tracking/SEMANA-XX-SEGUIMIENTO.md

# 3. Push a GitHub
git add .
git commit -m "docs: estudio $(date +%Y-%m-%d)"
git push
```

### Semanal (cada viernes)

```bash
# Crear tracking nueva semana
bash scripts/new-week.sh

# Revisar progreso
cat tracking/SEMANA-*.md

# Push
git add . && git commit -m "docs: tracking semanal" && git push
```

## 📖 Documentación Principal

**Lee en este orden:**

1. **00-RESUMEN-FINAL-EMPIEZA-HOY.md** - Guía de inicio completa
2. **01-MASTER-ROADMAP.md** - Estructura de 4 fases
3. **02-FASE-1-FUNDAMENTOS.md** - Primeras 12 semanas (empieza aquí)
4. **06-CURSOS-UDEMY-ORDEN.md** - Lista de cursos exactos

**Referencia:**
- 03-05: Fases 2, 3 y 4 (leerás después)
- 07: Template de seguimiento semanal
- 08: Recursos externos (docs oficiales, blogs, YouTube)
- 09: Índice maestro de navegación

**Técnico/Opcional:**
- SETUP-GITHUB-OBSIDIAN-CLAUDE.md - Setup profesional completo
- GUIA_IMPLEMENTACION_PRACTICA.md - Tips de implementación
- FAQ_CONTEXTO_ESPECIFICO.md - Preguntas frecuentes
- ANALISIS_NICHO_MERCADO.md - Ideas para monetizar
- ROADMAP_12_MESES_COMPLETO.md - Roadmap alternativo completo

## 🎯 Comandos Útiles (Makefile)

```bash
make help          # Ver todos los comandos disponibles
make setup         # Setup inicial (ya hecho)
make week          # Crear tracking nueva semana
make push          # Push a GitHub
make clean         # Limpiar archivos temporales
```

**Nota:** `make track` requiere configurar `.env` con ANTHROPIC_API_KEY.
Para tracking manual, simplemente edita los archivos en `tracking/` directamente.

## 🔗 Links Importantes

- **Este Repo:** https://github.com/AlvoCarrera/AI-Learning-12months
- **Obsidian:** https://obsidian.md
- **Udemy Business:** (link de tu empresa)
- **Claude API:** https://console.anthropic.com (si quieres usar make track)

## ✅ Checklist de Inicio

- [ ] Leí 00-RESUMEN-FINAL-EMPIEZA-HOY.md
- [ ] Leí 01-MASTER-ROADMAP.md
- [ ] Leí 02-FASE-1-FUNDAMENTOS.md (semanas 1-4)
- [ ] Configuré GitHub remote
- [ ] Hice primer push a GitHub
- [ ] Abrí proyecto en Obsidian
- [ ] Busqué curso Python en Udemy
- [ ] Me enrolé en el curso
- [ ] Comencé primera lección

## 📞 Ayuda

**Si te atascas:**
1. Lee FAQ_CONTEXTO_ESPECIFICO.md
2. Revisa GUIA_IMPLEMENTACION_PRACTICA.md
3. Busca en 08-RECURSOS-EXTERNOS.md
4. Usa Claude Code para ayuda

---

**Última actualización:** 2025-11-17
**Creado por:** Alvaro Carrera
**Meta:** AI Engineer + Arquitecto → Trabajo remoto + Empresa propia
**Status:** 🚀 LISTO PARA COMENZAR
