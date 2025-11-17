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
