# Makefile - Comandos automatizados para AI-Learning
# Uso: make [comando]
# Ej: make track, make week, make dashboard, make push

.PHONY: help setup track track-quick week dashboard push sync clean

help:
	@echo "📚 AI-Learning-12months - Comandos disponibles"
	@echo "=============================================="
	@echo ""
	@echo "🚀 SETUP (primeras 2 veces):"
	@echo "  make setup          ← Instalación inicial"
	@echo ""
	@echo "📊 TRACKING:"
	@echo "  make track          ← Sesión interactiva con Claude"
	@echo "  make track-quick    ← Tracking rápido (sin interactivo)"
	@echo "  make week           ← Crear tracking semana nueva"
	@echo ""
	@echo "📈 INFORMACIÓN:"
	@echo "  make dashboard      ← Ver dashboard progreso"
	@echo "  make review         ← Resumen mensual con Claude"
	@echo ""
	@echo "📝 GIT:"
	@echo "  make push           ← Push a GitHub"
	@echo "  make sync           ← Sync completo (pull + push)"
	@echo ""
	@echo "🧹 MANTENIMIENTO:"
	@echo "  make clean          ← Limpiar cache/temp"
	@echo ""

# ======================
# SETUP
# ======================

setup:
	@echo "🔧 Setup inicial..."
	@echo "1. Instalando Python dependencies..."
	pip install anthropic
	@echo "2. Creando directorios..."
	mkdir -p tracking notas proyectos scripts
	@echo "3. Creando .gitignore..."
	@echo ".env\n__pycache__\n.DS_Store\n.obsidian" > .gitignore
	@echo "4. Git inicial..."
	git init
	git add .
	git commit -m "feat: setup inicial roadmap AI Engineer"
	@echo "5. Copiar scripts..."
	cp scripts/* . 2>/dev/null || echo "Scripts ya existen"
	@echo ""
	@echo "✅ Setup completado!"
	@echo ""
	@echo "📝 Próximos pasos:"
	@echo "  1. Configura ANTHROPIC_API_KEY:"
	@echo "     export ANTHROPIC_API_KEY='sk-ant-...'"
	@echo "  2. Configura GitHub remote:"
	@echo "     git remote add origin https://github.com/TU_USER/AI-Learning-12months.git"
	@echo "  3. ¡Comienza!"
	@echo "     make track"

# ======================
# TRACKING
# ======================

track:
	@python3 scripts/claude-tracker.py

track-quick:
	@echo "📝 Descripción rápida (una línea):"
	@read -p "Tú: " activity; \
	python3 scripts/claude-tracker.py "$$activity"

week:
	@bash scripts/new-week.sh
	@make push

# ======================
# INFORMACIÓN
# ======================

dashboard:
	@bash scripts/dashboard.sh

review:
	@bash scripts/monthly-review.sh

# ======================
# GIT
# ======================

push:
	@echo "📤 Pushing to GitHub..."
	git add .
	git commit -m "docs: tracking $(shell date +%Y-%m-%d)" || true
	git push origin main
	@echo "✅ Pushed!"

sync:
	@echo "🔄 Syncing (pull + push)..."
	git pull origin main || true
	make push

# ======================
# MANTENIMIENTO
# ======================

clean:
	@echo "🧹 Limpiando..."
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name .DS_Store -delete 2>/dev/null || true
	find . -type f -name *.pyc -delete 2>/dev/null || true
	@echo "✅ Limpio!"

# ======================
# ALIAS PARA ZPROFILE
# ======================

# Agregar a ~/.zprofile:
# alias ai-track='make -C ~/AI-Learning-12months track'
# alias ai-week='make -C ~/AI-Learning-12months week'
# alias ai-dash='make -C ~/AI-Learning-12months dashboard'
# alias ai-push='make -C ~/AI-Learning-12months push'
# alias ai-review='make -C ~/AI-Learning-12months review'

# Uso:
# ai-track
# ai-week
# ai-dash
# ai-push
