#!/usr/bin/env python3
"""
Claude Tracker - Automatiza tracking semanal con Claude API
Uso: python claude-tracker.py "qué estudiaste hoy"
"""

import os
import sys
import json
from datetime import datetime, timedelta
from pathlib import Path
from anthropic import Anthropic

# Inicializa cliente Anthropic
client = Anthropic()

# Variables globales
TRACKING_DIR = Path("tracking")
NOTES_DIR = Path("notas")
PROJECTS_DIR = Path("proyectos")

class ClaudeTracker:
    def __init__(self):
        """Inicializa el tracker"""
        self.create_directories()
        self.conversation_history = []
        self.current_week = self.get_current_week()
        self.tracking_file = TRACKING_DIR / f"SEMANA-{self.current_week:02d}-SEGUIMIENTO.md"
        
    def create_directories(self):
        """Crea directorios necesarios"""
        for d in [TRACKING_DIR, NOTES_DIR, PROJECTS_DIR]:
            d.mkdir(exist_ok=True)
    
    def get_current_week(self):
        """Calcula semana actual del año"""
        today = datetime.now()
        year_start = datetime(today.year, 1, 1)
        week = (today - year_start).days // 7 + 1
        return min(week, 52)  # Max 52 semanas
    
    def chat_with_claude(self, user_message):
        """Conversa con Claude sobre tu progreso"""
        self.conversation_history.append({
            "role": "user",
            "content": user_message
        })
        
        # Sistema prompt para Claude
        system_prompt = """Eres un mentor de AI Engineering ayudando a Alvaro con su roadmap de 12 meses.
Tu rol:
1. Escuchar qué estudió/hizo
2. Validar que esté en track
3. Sugerir next steps
4. Crear entrada de tracking automática
5. Ser motivador pero honesto

Cuando el usuario termine de reportar, SIEMPRE responde con JSON al final:
```json
{
  "week": número,
  "date": "YYYY-MM-DD",
  "topic": "tema estudiado",
  "hours": horas_estudiadas,
  "confidence": "🟢/🟡/🔴",
  "status": "completado/en_progreso/bloqueado",
  "next_steps": ["paso1", "paso2"],
  "notes": "observaciones clave"
}
```
"""
        
        response = client.messages.create(
            model="claude-3-5-sonnet-20241022",
            max_tokens=1500,
            system=system_prompt,
            messages=self.conversation_history
        )
        
        assistant_message = response.content[0].text
        self.conversation_history.append({
            "role": "assistant",
            "content": assistant_message
        })
        
        return assistant_message
    
    def extract_json_from_response(self, response):
        """Extrae JSON de la respuesta de Claude"""
        try:
            # Busca JSON entre ```json ... ```
            import re
            json_match = re.search(r'```json\n(.*?)\n```', response, re.DOTALL)
            if json_match:
                json_str = json_match.group(1)
                return json.loads(json_str)
        except:
            pass
        return None
    
    def update_tracking_file(self, data):
        """Actualiza archivo de tracking con datos de Claude"""
        if not data:
            return
        
        # Leer archivo existente si existe
        if self.tracking_file.exists():
            with open(self.tracking_file, 'r', encoding='utf-8') as f:
                content = f.read()
        else:
            # Crear nuevo archivo con template
            content = self.create_new_tracking_file()
        
        # Actualizar secciones del archivo
        updates = self.generate_tracking_updates(data)
        
        for section_name, section_content in updates.items():
            # Reemplaza secciones en el markdown
            content = self.update_markdown_section(content, section_name, section_content)
        
        # Guardar
        with open(self.tracking_file, 'w', encoding='utf-8') as f:
            f.write(content)
        
        print(f"\n✅ Tracking actualizado: {self.tracking_file}")
    
    def create_new_tracking_file(self):
        """Crea nuevo archivo de tracking basado en template"""
        template = f"""# 📊 SEGUIMIENTO SEMANAL - SEMANA {self.current_week:02d}

**Fecha:** {datetime.now().strftime('%Y-%m-%d')}

## ✅ ACTIVIDADES HOY

## 📈 PROGRESO

## 🎯 PRÓXIMOS PASOS

## 💡 LEARNINGS
"""
        return template
    
    def generate_tracking_updates(self, data):
        """Genera actualizaciones de tracking desde datos de Claude"""
        today = datetime.now().strftime('%Y-%m-%d %H:%M')
        
        updates = {
            "ACTIVIDADES HOY": f"- [{today}] {data.get('topic', '')}: {data.get('hours', 0)}h (Confianza: {data.get('confidence', '🟡')})",
            "PROGRESO": f"Status: {data.get('status', 'en_progreso')}",
            "PRÓXIMOS PASOS": "\n".join([f"- {step}" for step in data.get('next_steps', [])]),
            "LEARNINGS": data.get('notes', '')
        }
        return updates
    
    def update_markdown_section(self, content, section_name, new_content):
        """Actualiza una sección específica en markdown"""
        import re
        
        # Patrón: ## SECCIÓN hasta siguiente ##
        pattern = rf"(## {section_name}\n)(.*?)(?=\n##|\Z)"
        
        if re.search(pattern, content, re.DOTALL):
            # Agregar al final de la sección existente
            replacement = rf"\1\2\n{new_content}"
            return re.sub(pattern, replacement, content, flags=re.DOTALL)
        else:
            # Sección no existe, agregar al final
            return content + f"\n## {section_name}\n{new_content}\n"
    
    def interactive_session(self):
        """Sesión interactiva con Claude"""
        print("\n🤖 CLAUDE TRACKER - Sesión Interactiva")
        print("=" * 50)
        print("Cuenta qué estudiaste/hiciste hoy.")
        print("Claude te ayudará y actualizará tu tracking.")
        print("(Escribe 'exit' para terminar)\n")
        
        while True:
            try:
                user_input = input("Tú: ").strip()
                
                if user_input.lower() in ['exit', 'quit', 'salir']:
                    print("\n✅ Sesión terminada. Tracking actualizado!")
                    break
                
                if not user_input:
                    continue
                
                # Enviar a Claude
                print("\n🤔 Claude está pensando...\n")
                response = self.chat_with_claude(user_input)
                
                print(f"Claude: {response}\n")
                
                # Extraer JSON y actualizar tracking
                data = self.extract_json_from_response(response)
                if data:
                    self.update_tracking_file(data)
                
            except KeyboardInterrupt:
                print("\n\n✅ Sesión interrumpida. ¡Buen trabajo!")
                break
            except Exception as e:
                print(f"\n❌ Error: {e}\nIntenta de nuevo.\n")
    
    def quick_update(self, activity_description):
        """Actualización rápida sin sesión interactiva"""
        prompt = f"Resumen rápido de mi actividad: {activity_description}\n\nResponde en JSON como de costumbre."
        
        print("🤖 Analizando actividad con Claude...\n")
        response = self.chat_with_claude(prompt)
        
        print(f"Claude: {response}\n")
        
        data = self.extract_json_from_response(response)
        if data:
            self.update_tracking_file(data)
            print("✅ Tracking actualizado!")
        else:
            print("⚠️ No se pudo extraer datos de Claude")

def main():
    """Función principal"""
    if len(sys.argv) > 1:
        # Modo rápido: python claude-tracker.py "descripción"
        activity = " ".join(sys.argv[1:])
        tracker = ClaudeTracker()
        tracker.quick_update(activity)
    else:
        # Modo interactivo
        tracker = ClaudeTracker()
        tracker.interactive_session()

if __name__ == "__main__":
    main()
