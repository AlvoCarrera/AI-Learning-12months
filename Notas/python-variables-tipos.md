# 📌 Variables y Tipos de Datos en Python

**Fecha:** 17-Nov-2025
**Curso:** Python Practicando
**Sección:** Fundamentos
**Tracking:** [[2025-11-17]]

---

## 🎯 Concepto principal

> Python es un lenguaje de tipado dinámico. No necesitas declarar el tipo de variable, Python lo infiere automáticamente.

---

## 📖 Notas

### Tipos básicos

- **int**: números enteros → `edad = 25`
- **float**: decimales → `precio = 19.99`
- **str**: texto → `nombre = "Alvaro"`
- **bool**: verdadero/falso → `activo = True`

### Declaración de variables

```python
# No necesitas declarar tipo
nombre = "Alvaro"
edad = 30

# Puedes cambiar el tipo
edad = "treinta"  # Ahora es string
```

### Convenciones de nombres

- snake_case para variables → `mi_variable`
- MAYUSCULAS para constantes → `MAX_INTENTOS`
- No usar palabras reservadas

---

## 💻 Código

```python
# Variables básicas
nombre = "Alvaro"
edad = 30
altura = 1.75
estudiante = True

# Ver tipo de variable
print(type(nombre))  # <class 'str'>
print(type(edad))    # <class 'int'>

# Conversión de tipos
edad_str = str(edad)
precio = float(20)

# F-strings (mejor práctica)
mensaje = f"Hola {nombre}, tienes {edad} años"
print(mensaje)
```

---

## 🔗 Relacionado
- [[python-strings-formato]]
- [[python-operadores]]

---

## ✨ Conclusión

Python hace fácil trabajar con variables. El tipado dinámico permite flexibilidad, pero debo tener cuidado con los tipos para evitar errores.

---
`#nota #python #variables`
