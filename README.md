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
## 🧭 Arquitectura Conceptual de CAMSF

El framework sigue un flujo dirigido por modelos (MDD):

DSL textual (Xtext)
⬇️  
Metamodelo (Ecore / Sirius)
⬇️  
Modelos de ejemplo (Study Cases)
⬇️  
Transformaciones Xtend (M2T)
⬇️  
Generación de código Flutter
---
El repositorio representa la evolución del DSL CAMS:

- Versión inicial: exploración conceptual del dominio.
- Versión final: refinamiento del metamodelo y validación experimental.
--
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

![Metamodelo CAMS](metamodelos/final/cams_final.jpg)

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

Proyecto desarrollado por **Estevan Gómez** como parte de la investigación académica y la Tesis Doctoral del **Doctorado en Ciencias Informáticas** de la **Universidad Nacional de La Plata (Argentina)**.

Líneas de investigación:
- Sistemas context-aware
- Desarrollo dirigido por modelos (Model-Driven Development)

---

## 📄 Licencia

MIT License



