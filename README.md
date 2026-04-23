# LAB01-IAC-AZ

Tengo disponible un documento index.html. Es una página que tiene como contenido WEB01.

Quiero desplegar esta página en el puerto 4001.

TAREA: Quiero WEB01 en 4001 y WEB02 en 4002.

# Lab 02

Proyecto de Terraform para desplegar entornos de DEV y QA en Docker.

## 🚀 Instalación y Ejecución
1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/zumaetaadriel2/LAB01-IAC-AZ.git
   cd lab01-iac-miercoles
   git checkout feature/terraform


Inicializar:
terraform init

Desplegar ambos entornos:
terraform apply -auto-approve

🛠️ Estructura
providers.tf: Configuración del motor de Docker.
main.tf: Recursos de red y contenedores.
variables.tf & terraform.tfvars: Parametrización de puertos.
outputs.tf: Resumen de acceso a los servicios.