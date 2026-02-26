# CAMSF
## Context-Aware Mobile System Framework

CAMSF es un framework evolutivo basado en Model-Driven Development (MDD) para la construcción de sistemas móviles sensibles al contexto.

El proyecto integra:

- Modelado de contexto mediante DSL textual (Xtext)
- DSL gráfico (Sirius)
- Metamodelado (Ecore)
- Transformaciones M2M / M2T (Xtend)
- Generación automática de código
- Integración con aplicaciones móviles Flutter

El objetivo es facilitar la creación de aplicaciones móviles adaptativas mediante modelos de alto nivel.

---

## 🧩 Componentes Principales del Proyecto

### ✔ DSL Textual (Xtext)
Definición formal del lenguaje para modelar sistemas context-aware.

- Gramática textual
- Parser y validación
- Infraestructura generada con Xtext

Ubicación:
# CAMSF
## Context-Aware Mobile System Framework

CAMSF es un framework evolutivo basado en Model-Driven Development (MDD) para la construcción de sistemas móviles sensibles al contexto.

El proyecto integra:

- Modelado de contexto mediante DSL textual (Xtext)
- DSL gráfico (Sirius)
- Metamodelado (Ecore)
- Transformaciones M2M / M2T (Xtend)
- Generación automática de código
- Integración con aplicaciones móviles Flutter

El objetivo es facilitar la creación de aplicaciones móviles adaptativas mediante modelos de alto nivel.

---

## 🧩 Componentes Principales del Proyecto

### ✔ DSL Textual (Xtext)
Definición formal del lenguaje para modelar sistemas context-aware.

- Gramática textual
- Parser y validación
- Infraestructura generada con Xtext

Ubicación:
xtext/
dsl/

---

### ✔ DSL Gráfico (Sirius)
Representación visual del DSL para facilitar el modelado conceptual.

Incluye:

- Diagramas context-aware
- Casos de estudio visuales
- Diseño inicial del lenguaje

---

### ✔ Metamodelos (Ecore)

Se incluyen dos versiones del metamodelo:
metamodelos/

├── inicial/
│ ├── cams_inicial.aird
│ ├── cams_inicial.model
│ └── cams_inicial.jpg

└── final/
├── cams_final.ecore
├── cams_final.aird
├── cams_final.genmodel
└── cams_final.jpg

- **Inicial:** concepción temprana del DSL gráfico.
- **Final:** versión refinada del metamodelo utilizada en el framework.

---

### ✔ Transformaciones (Xtend)

Transformaciones automáticas para generación de código.
transformaciones/

Incluye:

- Transformaciones M2T
- Generación automática desde modelos DSL.

---

### ✔ Ejemplos Visuales

Casos de estudio que muestran el uso del lenguaje:
ejemplos/

Incluye escenarios como:

- Control de mapas
- Monitoreo de clima
- Posicionamiento en interiores

---

### ✔ Framework Flutter

Implementación móvil basada en Flutter para validar el enfoque MDD.

Características:

- Arquitectura context-aware
- Integración con servicios externos
- Generación parcial de código basada en modelos

---

## 🧠 Enfoque Model-Driven Development (MDD)

El flujo del framework sigue:
DSL Textual / Gráfico
↓
Metamodelo (Ecore)
↓
Transformaciones Xtend
↓
Generación de Código
↓
Aplicación Flutter

---

## 📦 Requisitos

- Eclipse Modeling Framework (EMF)
- Xtext
- Sirius
- Xtend
- Flutter SDK

---

## 👨‍🔬 Autor

Proyecto desarrollado como parte de investigación académica en sistemas context-aware y desarrollo dirigido por modelos.

---

## 📄 Licencia

MIT License



