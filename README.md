# CAMSF
CAMS-F: Context-Aware Mobile System Framework (Flutter)

# Descripción:

CAMS-F es un framework evolutivo para sistemas móviles sensibles al contexto, diseñado para aplicaciones multiplataforma. Utiliza un enfoque Model-Driven Development (MDD) para la creación y automatización de aplicaciones móviles context-aware, integrando servicios en la nube como Firebase, Google Maps y ofreciendo soporte para infraestructura como código (IaC) mediante Terraform.

Este proyecto busca facilitar el desarrollo de aplicaciones móviles adaptativas y personalizadas según el contexto del usuario, con un fuerte enfoque en la eficiencia y escalabilidad de las soluciones.

📌 Características Clave

🔄 Desarrollo Multiplataforma: Un solo código para iOS, Android, web y desktop con Flutter

🔄 Context-Aware: Gestión del contexto del usuario utilizando sensores y servicios en la nube.

🔄 MDD (Model-Driven Development): Generación automatizada de código y personalización de aplicaciones.

🧠 Modelado de Contexto: DSL intuitivo para definir reglas contextuales (geolocalización, sensores IoT, etc.)

⚡ Automatización: Generación de código con Xtend (reduce 35% tiempo de desarrollo)

🌐 Backend en Tiempo Real: Firebase Firestore + Cloud Messaging (soporta 10,000+ dispositivos)

🗺️ Geolocalización Precisa: Google Maps API (<5m de precisión)

🛠️ Infraestructura como Código (IaC): Terraform/Pulumi para despliegues escalables/ Despliegue y configuración automatizados con Terraform

🧠 Servicios en la Nube: Integración nativa con Firebase y Google Maps para mejorar la experiencia del usuario.

📌 Plugins y Paquetes: Uso de paquetes de terceros para optimizar el desarrollo.



# Estructura del Repositorio

cams-f/

├── lib/                       # Código principal del framework

│   ├── core/                  # Módulos base

│   │   ├── auth/              # Autenticación

│   │   ├── data/              # Gestión de datos

│   │   └── notifications/     # Notificaciones

│   └── features/              # Módulos de funcionalidad

│       └── tasks/             # Ejemplo: gestión de tareas

├── example/                   # App demo de ejemplo

├── test/                      # Pruebas unitarias

├── firebase_rules/            # Reglas de seguridad

├── .github/workflows/         # CI/CD con GitHub Actions

├── docs/                      # Documentación adicional

└── scripts/                   # Scripts de apoyo (ej: codegen)

/models/ ➔ Modelos de contexto en DSL

/transformations/ ➔ Transformaciones (Xtend / Scripts)

/firebase_config/ ➔ Ejemplo de Configuración de Firebase

/iac/ ➔ Scripts de Infraestructura como Código

camsF


# Requisitos
🔄 Flutter (3.0 o superior)

🔄 Firebase

🔄 Terraform (0.12 o superior)

🔄Google Maps API

# Instalación
1. Clonar el repositorio
   git clone https://github.com/tu_usuario/CAMS-F.git
  cd CAMS-F
2. Instalar dependencias
   flutter pub get
3. Configuración de Firebase
a) Ve a Firebase Console, crea un nuevo proyecto y sigue las instrucciones para configurar Firebase para Flutter.

b) Descarga el archivo google-services.json y colócalo en el directorio android/app de tu proyecto.

c) Configura Firebase en el archivo firebase_options.dart.

4. Configuración de Google Maps
1. Obtén una clave de API de Google Maps Platform.

2. Añade tu clave en el archivo lib/config/config.dart.

 5. Despliegue de Infraestructura (Terraform)
Para configurar la infraestructura necesaria (bases de datos, servicios en la nube), ejecuta los siguientes comandos de Terraform:
terraform init
terraform apply

