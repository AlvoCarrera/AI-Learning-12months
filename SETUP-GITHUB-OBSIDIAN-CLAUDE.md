# 🚀 SETUP COMPLETO: GITHUB + OBSIDIAN + CLAUDE CLI

Este es tu sistema profesional para estudiar, trackear, y colaborar con Claude.

---

## 📋 ÍNDICE

1. [Setup Inicial](#setup-inicial)
2. [Configurar GitHub](#configurar-github)
3. [Setup Obsidian](#setup-obsidian)
4. [Claude en Terminal](#claude-en-terminal)
5. [Workflow Diario](#workflow-diario)
6. [Scripts Útiles](#scripts-útiles)

---

## 🔧 SETUP INICIAL

### Paso 1: Crear carpeta del proyecto

```bash
# En tu Mac, abre Terminal
mkdir -p ~/AI-Learning-12months
cd ~/AI-Learning-12months

# Inicializar Git
git init
git config user.name "Tu Nombre"
git config user.email "tu@email.com"
```

### Paso 2: Descargar y extraer ZIP

```bash
# Descarga el ZIP: Roadmap-AI-Engineer-12Meses.zip
# Extrae en ~/AI-Learning-12months/

# Verifica que estén los archivos
ls -la

# Deberías ver:
# 00-RESUMEN-FINAL-EMPIEZA-HOY.md
# 01-MASTER-ROADMAP.md
# etc...
```

### Paso 3: Crear estructura de carpetas

```bash
# Crea directorios necesarios
mkdir -p tracking
mkdir -p notas
mkdir -p proyectos
mkdir -p scripts

# Estructura final:
# ~/AI-Learning-12months/
# ├── tracking/      (archivos SEMANA-XX.md aquí)
# ├── notas/         (tus notas personales)
# ├── proyectos/     (código de mini-proyectos)
# ├── scripts/       (scripts automatizados)
# ├── .gitignore
# ├── README.md
# └── [todos tus .md files]
```

### Paso 4: Crear .gitignore

```bash
cat > .gitignore << 'EOF'
# Archivo API keys
.env
.env.local

# Cache
__pycache__/
*.pyc
.DS_Store

# IDEs
.vscode/
.idea/
*.swp

# Node (si necesitas)
node_modules/
package-lock.json

# Python
venv/
env/
*.egg-info/

# Obsidian cache
.obsidian/
.obsidian/cache/
EOF
```

### Paso 5: Commit inicial

```bash
git add .
git commit -m "feat: inicializar roadmap AI Engineer 12 meses"
```

---

## 🌐 CONFIGURAR GITHUB

### Paso 1: Crear repositorio en GitHub

1. Ve a https://github.com/new
2. Nombre: `AI-Learning-12months`
3. Descripción: "Roadmap 12 meses: AI Engineer + Software Architect"
4. Tipo: PUBLIC (para que vean tu progreso)
5. Click: "Create repository"

### Paso 2: Conectar local → GitHub

```bash
cd ~/AI-Learning-12months

# Agregar remote (reemplaza TU_USERNAME)
git remote add origin https://github.com/TU_USERNAME/AI-Learning-12months.git

# Cambiar rama a main si es necesario
git branch -M main

# Push inicial
git push -u origin main
```

### Paso 3: Verificar en GitHub

1. Ve a tu repo: https://github.com/TU_USERNAME/AI-Learning-12months
2. Deberías ver todos tus archivos
3. ✅ GitHub está listo!

### Paso 4: Commits automáticos (opcional)

```bash
# Script para push semanal
cat > scripts/push-weekly.sh << 'EOF'
#!/bin/bash
cd ~/AI-Learning-12months
git add .
git commit -m "chore: actualizar tracking - $(date +%Y-%m-%d)"
git push origin main
echo "✅ Pushed to GitHub"
EOF

# Dar permisos
chmod +x scripts/push-weekly.sh

# Ejecutar manualmente o con cron (agrega a ~/.zprofile o ~/.bash_profile):
# 0 18 * * 0 ~/AI-Learning-12months/scripts/push-weekly.sh  # Domingo 6pm
```

---

## 📝 SETUP OBSIDIAN

Obsidian es tu interface visual para los archivos Markdown.

### Paso 1: Instalar Obsidian

1. Ve a https://obsidian.md
2. Download para Mac
3. Instala normalmente

### Paso 2: Crear Vault en Obsidian

1. Abre Obsidian
2. Click: "Open folder as vault"
3. Selecciona: `~/AI-Learning-12months`
4. Click: "Open"

Obsidian ahora mostrará todos tus `.md` files!

### Paso 3: Estructura en Obsidian (opcional pero recomendado)

En Obsidian, veras:
```
📁 AI-Learning-12months/
├── 📁 tracking/
├── 📁 notas/
├── 📁 proyectos/
├── 📄 00-RESUMEN-FINAL...
├── 📄 01-MASTER-ROADMAP
├── 📄 02-FASE-1...
└── etc
```

### Paso 4: Plugins útiles (opcional)

En Obsidian Settings → Community Plugins:

```
Recomendados (busca e instala):
✓ Daily Notes - notas automáticas por día
✓ Dataview - visualizar datos en Markdown
✓ Calendar - ver fechas
✓ Git - sync con GitHub automático
✓ Natural Language Dates - fechas en lenguaje natural
✓ Templater - templates personalizados
```

**Especialmente importante:**
- **Git Plugin** hace push/pull automático

Instrucciones:
1. Settings → Community Plugins → Browse
2. Busca "Obsidian Git"
3. Install y Enable
4. Configura GitHub token (ver docs del plugin)

### Paso 5: Crear plantilla de notas diarias

En Obsidian:

```
Settings → Daily Notes → Configurar:

Date format: YYYY-MM-DD
Folder: notas/
Template: (crear uno)
```

Crea template en `notas/TEMPLATE-DIARIO.md`:

```markdown
# 📓 Notas - {{DATE}}

## 🎯 Meta hoy

## 📚 Estudié

## 💡 Learnings

## 🚧 Bloqueadores

## ✅ Checklist
- [ ] 
- [ ] 
- [ ] 

## 🔗 Referencias
```

---

## 💻 CLAUDE EN TERMINAL

### Paso 1: Instalar Claude API Python

```bash
# Instalar Anthropic SDK
pip install anthropic

# O si usas homebrew
brew install anthropic-sdk  # (si existe)
```

### Paso 2: Setup API Key

```bash
# Obtén tu API key de https://console.anthropic.com

# Opción A: Variable de entorno (temporal)
export ANTHROPIC_API_KEY="sk-ant-xxx..."

# Opción B: Guardar en ~/.zprofile (permanente)
echo 'export ANTHROPIC_API_KEY="sk-ant-xxx..."' >> ~/.zprofile
source ~/.zprofile
```

### Paso 3: Descargar claude-tracker.py

```bash
# El archivo claude-tracker.py lo tienes en outputs/
cp claude-tracker.py ~/AI-Learning-12months/scripts/

# Dale permisos
chmod +x ~/AI-Learning-12months/scripts/claude-tracker.py
```

### Paso 4: Hacer alias en terminal

```bash
# Edita ~/.zprofile (o ~/.bash_profile si usas bash)
nano ~/.zprofile

# Agrega esta línea:
alias claude-track='python ~/AI-Learning-12months/scripts/claude-tracker.py'

# Guarda (Ctrl+O, Enter, Ctrl+X)
# Recarga:
source ~/.zprofile
```

---

## 📅 WORKFLOW DIARIO

### Morning (Empieza a estudiar):

```bash
# 1. Abre Obsidian
open -a Obsidian ~/AI-Learning-12months

# 2. Crea nota diaria (Ctrl+Shift+D en Mac)
# Aparecerá: notas/2025-01-15.md

# 3. Abre Udemy y estudia
# Anota qué hiciste en tu nota diaria de Obsidian
```

### Evening (Después de estudiar):

```bash
# 1. Terminal - Sesión interactiva con Claude
cd ~/AI-Learning-12months
claude-track

# ↓ Aparecerá:
# 🤖 CLAUDE TRACKER - Sesión Interactiva
# ================================================
# Cuenta qué estudiaste/hiciste hoy.
# Claude te ayudará y actualizará tu tracking.
# (Escribe 'exit' para terminar)
#
# Tú: [ESCRIBE AQUÍ]

# 2. Reporta a Claude:
# "Estudié 2 horas Python decoradores. 
#  Entendí bien, hice 10 ejercicios.
#  Próximo: async/await"

# 3. Claude responde, extrae datos, ACTUALIZA tracking/SEMANA-XX.md
# 4. Escribe 'exit'

# 5. Git push (si tienes Git plugin en Obsidian, hace automático)
# O manual:
git add .
git commit -m "docs: tracking actualizado $(date +%Y-%m-%d)"
git push

# 6. ✅ Listo! Tu progreso está:
#    - En LOCAL (notas + tracking)
#    - En OBSIDIAN (visualizado bonito)
#    - En GITHUB (respaldado)
```

### Weekly (Viernes):

```bash
# 1. En Obsidian, abre tracking/SEMANA-XX-SEGUIMIENTO.md
# 2. Revisa TODA la semana
# 3. Ejecuta:
claude-track "Resumen semana XX: Completé..."

# 4. Claude genera resumen y actualiza archivo
# 5. Git push
```

---

## 🎯 SCRIPTS ÚTILES

### Script 1: Crear semana nueva automáticamente

```bash
cat > scripts/new-week.sh << 'EOF'
#!/bin/bash

# Calcula semana
WEEK=$(date +%V)
DATE=$(date +%Y-%m-%d)

# Crea archivo
cat > tracking/SEMANA-${WEEK}-SEGUIMIENTO.md << TEMPLATE
# 📊 SEGUIMIENTO SEMANAL - SEMANA $WEEK

**Fecha de inicio:** $DATE

## ✅ LUNES A DOMINGO

## 📈 RESUMEN SEMANAL

## 🎯 PRÓXIMO

TEMPLATE

echo "✅ Creado: tracking/SEMANA-${WEEK}-SEGUIMIENTO.md"

# Auto-commit
git add tracking/SEMANA-${WEEK}-SEGUIMIENTO.md
git commit -m "docs: crear tracking semana $WEEK"

EOF

chmod +x scripts/new-week.sh
```

Uso:
```bash
./scripts/new-week.sh
```

### Script 2: Resumen mensual con Claude

```bash
cat > scripts/monthly-review.sh << 'EOF'
#!/bin/bash

echo "📊 Generando resumen mensual..."

python3 << 'PYTHON'
from anthropic import Anthropic
from pathlib import Path

client = Anthropic()

# Lee todos los tracking files del mes
tracking_files = Path("tracking").glob("SEMANA-*.md")
content = ""

for f in sorted(tracking_files)[-4:]:  # Últimas 4 semanas
    with open(f) as file:
        content += f"\n## {f.name}\n{file.read()}"

# Envía a Claude
response = client.messages.create(
    model="claude-3-5-sonnet-20241022",
    max_tokens=2000,
    messages=[{
        "role": "user",
        "content": f"""Analiza mi progreso del mes:

{content}

Dame:
1. 📈 Progreso general (0-100%)
2. 💪 Logros principales
3. 🚧 Áreas de mejora
4. 🎯 Recomendaciones para próximo mes
5. 📊 Velocidad vs plan original"""
    }]
)

print(response.content[0].text)
PYTHON

EOF

chmod +x scripts/monthly-review.sh
```

Uso:
```bash
./scripts/monthly-review.sh
```

### Script 3: Dashboard en terminal

```bash
cat > scripts/dashboard.sh << 'EOF'
#!/bin/bash

echo "📊 DASHBOARD - Tu Progreso"
echo "======================================"
echo ""

# Contador archivos
echo "📁 Estructura:"
echo "  Tracking files: $(ls tracking/SEMANA-*.md 2>/dev/null | wc -l)"
echo "  Notas: $(ls notas/*.md 2>/dev/null | wc -l)"
echo "  Proyectos: $(ls proyectos/ 2>/dev/null | wc -l)"
echo ""

# Git info
echo "📌 Git Status:"
cd ~/AI-Learning-12months
git log -1 --format="  Último commit: %s (%ai)"
echo "  Commits totales: $(git rev-list --count HEAD)"
echo ""

# Semana actual
WEEK=$(date +%V)
echo "📅 Semana Actual: $WEEK"
if [ -f "tracking/SEMANA-${WEEK}-SEGUIMIENTO.md" ]; then
    echo "  ✅ Tracking file existe"
else
    echo "  ⚠️  Crear tracking: ./scripts/new-week.sh"
fi

EOF

chmod +x scripts/dashboard.sh
```

Uso:
```bash
./scripts/dashboard.sh
```

---

## 🔄 FLUJO COMPLETO (Resumen)

```
┌─────────────────────────────────────────────┐
│ 1. ESTUDIAS                                 │
│    Abre Obsidian + Udemy                   │
│    Toma notas en: notas/2025-01-15.md      │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│ 2. REPORTAS A CLAUDE (en terminal)          │
│    $ claude-track                           │
│    "Estudié 2h Python, entendí decoradores" │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│ 3. CLAUDE ACTUALIZA TRACKING                │
│    Analiza, actualiza:                      │
│    tracking/SEMANA-XX-SEGUIMIENTO.md       │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│ 4. GITHUB SYNC                              │
│    Git push automático (o manual)           │
│    Respaldo en la nube                      │
└─────────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────────┐
│ 5. TODO SINCRONIZADO                        │
│    ✅ Local: ~/AI-Learning-12months        │
│    ✅ Obsidian: interfaz visual            │
│    ✅ GitHub: respaldo público             │
│    ✅ Claude: AI mentor en terminal        │
└─────────────────────────────────────────────┘
```

---

## 🚀 PRIMER DÍA (TODO SETUP)

```bash
# 1. Descargar ZIP (ya tienes)
# 2. Terminal - Setup inicial
mkdir ~/AI-Learning-12months
cd ~/AI-Learning-12months
unzip ~/Downloads/Roadmap-AI-Engineer-12Meses.zip

# 3. Git + GitHub
git init
git remote add origin https://github.com/TU_USER/AI-Learning-12months.git
git add .
git commit -m "feat: iniciar roadmap"
git push -u origin main

# 4. Obsidian - Open folder
open -a Obsidian ~/AI-Learning-12months

# 5. Claude Setup
export ANTHROPIC_API_KEY="sk-ant-..."
pip install anthropic
cp claude-tracker.py ~/AI-Learning-12months/scripts/

# 6. Test Claude
python scripts/claude-tracker.py "Test: hola Claude"

# ✅ TODO LISTO!
```

---

## 📚 REFERENCIAS

- [Obsidian Docs](https://help.obsidian.md/)
- [GitHub Docs](https://docs.github.com/)
- [Anthropic API](https://console.anthropic.com/)
- [Claude CLI Tools](https://github.com/anthropics/anthropic-sdk-python)

---

**Versión:** 1.0  
**Creado:** November 17, 2025  
**Para:** Alvaro - Sistema profesional de tracking
