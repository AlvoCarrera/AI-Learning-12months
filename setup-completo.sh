#!/bin/bash
# setup-completo.sh - Automatiza TODO el setup
# Uso: bash setup-completo.sh

set -e  # Detiene si hay error

echo "🚀 SETUP COMPLETO - AI-Learning-12months"
echo "=========================================="
echo ""

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Función para printing
print_step() {
    echo -e "${BLUE}→ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# ================
# VALIDACIONES
# ================

print_step "Validando requisitos..."

# Verificar Python
if ! command -v python3 &> /dev/null; then
    print_error "Python3 no instalado"
    echo "Instala: brew install python3"
    exit 1
fi
print_success "Python3 detectado"

# Verificar Git
if ! command -v git &> /dev/null; then
    print_error "Git no instalado"
    echo "Instala: brew install git"
    exit 1
fi
print_success "Git detectado"

# Verificar que no estamos ya en un repo
if [ -d ".git" ]; then
    print_error "Ya estás en un repo Git"
    echo "Limpia primero o usa otra carpeta"
    exit 1
fi

# ================
# SETUP
# ================

echo ""
print_step "Iniciando setup..."
echo ""

# 1. Crear directorios
print_step "Creando estructura de carpetas..."
mkdir -p tracking notas proyectos scripts
mkdir -p .venv
print_success "Carpetas creadas"

# 2. Python venv
print_step "Creando virtual environment..."
python3 -m venv .venv
source .venv/bin/activate
print_success "Venv activado"

# 3. Instalar dependencias
print_step "Instalando Python packages..."
pip install --quiet anthropic python-dotenv
print_success "Packages instalados"

# 4. Crear .env template
print_step "Creando archivo .env..."
cat > .env.example << 'EOF'
# API Keys - NO COMITEES ESTO
ANTHROPIC_API_KEY=sk-ant-xxx...

# Opcional
GITHUB_TOKEN=ghp_xxx...
EOF
print_success ".env.example creado (NO COMITAR ESTO)"

# 5. Crear .gitignore
print_step "Creando .gitignore..."
cat > .gitignore << 'EOF'
# Environment
.env
.env.local
.venv/

# Python
__pycache__/
*.pyc
*.egg-info/
dist/
build/

# macOS
.DS_Store
.AppleDouble
.LSOverride

# IDEs
.vscode/
.idea/
*.swp
*.swo

# Obsidian
.obsidian/cache/
.obsidian.json

# Node (si aplica)
node_modules/
package-lock.json
EOF
print_success ".gitignore creado"

# 6. Git setup
print_step "Inicializando Git..."
git init
git config user.name "AI Learner"
git config user.email "learner@ai.local"
git add .
git commit -m "feat: setup inicial - roadmap AI Engineer 12 meses"
print_success "Git repo creado"

# 7. Crear scripts básicos
print_step "Creando scripts..."

cat > scripts/new-week.sh << 'EOF'
#!/bin/bash
WEEK=$(date +%V)
DATE=$(date +%Y-%m-%d)
cat > tracking/SEMANA-${WEEK}-SEGUIMIENTO.md << TEMPLATE
# 📊 SEGUIMIENTO SEMANAL - SEMANA $WEEK

**Fecha:** $DATE

## ✅ ESTUDIÉ

## 📈 PROGRESO

## 🎯 PRÓXIMOS PASOS

## 💡 LEARNINGS

TEMPLATE
echo "✅ Creado: tracking/SEMANA-${WEEK}-SEGUIMIENTO.md"
git add tracking/SEMANA-${WEEK}-SEGUIMIENTO.md
git commit -m "docs: crear tracking semana $WEEK"
EOF

chmod +x scripts/new-week.sh
print_success "script: new-week.sh"

# 8. Crear README.md
print_step "Creando README.md..."
cat > README.md << 'EOF'
# 🚀 AI-Learning-12months

Mi roadmap personal: **AI Software Engineer + Software Architect en 12 meses**

## 📊 Status

- Fase: 1/4 (Fundamentos)
- Semana: 1/48
- Progreso: 0%

## 📚 Stack

```
Backend:     Python, FastAPI, PostgreSQL, Docker
AI/LLMs:     Claude API, LangChain, RAG
DevOps:      Kubernetes, Terraform, CI/CD
Architecture: Microservices, Multi-tenancy, System Design
```

## 📁 Estructura

```
tracking/        - SEMANA-XX-SEGUIMIENTO.md (mi tracking semanal)
notas/          - Mis notas diarias
proyectos/      - Mini-proyectos (Email Classifier, RAG, etc)
scripts/        - Scripts automatizados
```

## 🚀 Quick Start

```bash
# Activar venv
source .venv/bin/activate

# Setup completo
make setup

# Tracking diario
make track

# Ver dashboard
make dashboard

# Push a GitHub
make push
```

## 📖 Documentación

Ver archivos .md en root:
- `00-RESUMEN-FINAL-EMPIEZA-HOY.md` - Inicio
- `01-MASTER-ROADMAP.md` - Overview completo
- `SETUP-GITHUB-OBSIDIAN-CLAUDE.md` - Setup profesional

## 🔗 Links

- Roadmap: [00-RESUMEN-FINAL...](./00-RESUMEN-FINAL-EMPIEZA-HOY.md)
- GitHub: [Tu repo](https://github.com/TU_USER/AI-Learning-12months)

---

**Actualizado:** $(date +%Y-%m-%d)
EOF
print_success "README.md creado"

# ================
# FINALIZACIÓN
# ================

echo ""
echo "=========================================="
print_success "SETUP COMPLETADO! 🎉"
echo "=========================================="
echo ""

echo "📝 PRÓXIMOS PASOS:"
echo ""
echo "1️⃣  Configura tu API key:"
echo "   cp .env.example .env"
echo "   nano .env  (agrega tu ANTHROPIC_API_KEY)"
echo ""
echo "2️⃣  GitHub (opcional pero recomendado):"
echo "   git remote add origin https://github.com/TU_USER/AI-Learning-12months.git"
echo "   git push -u origin main"
echo ""
echo "3️⃣  Instala Obsidian:"
echo "   https://obsidian.md"
echo "   Abre vault: $(pwd)"
echo ""
echo "4️⃣  ¡Comienza a aprender!"
echo "   make track"
echo ""

echo "🎯 COMANDOS ÚTILES:"
echo "   make track       - Sesión interactiva con Claude"
echo "   make week        - Crear tracking nueva semana"
echo "   make dashboard   - Ver tu progreso"
echo "   make push        - Push a GitHub"
echo "   make help        - Ver todos los comandos"
echo ""

# Activar venv automáticamente en futuro
echo "💡 TIP: Agrega a ~/.zprofile:"
echo "   cd ~/AI-Learning-12months && source .venv/bin/activate"
echo ""

print_success "¡Listo para aprender!"
