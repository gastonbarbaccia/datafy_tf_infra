# Datafy Terraform Infrastructure

Este repositorio tiene como objetivo gestionar la infraestructura de Google Cloud Platform (GCP) para una aplicación Laravel Dockerizada utilizando **Terraform** y un pipeline de **CI/CD en GCP** para desplegarla en **Cloud Run**.

### Funcionalidades:

1. **Crear bases de datos PostgreSQL** en GCP utilizando Terraform, según el entorno (desarrollo, producción, etc.).
2. **Desplegar la aplicación Laravel Dockerizada** en **Cloud Run**, con la ayuda de **Google Cloud Build** y **Artifact Registry**.
3. **Configurar dominios en Cloud Run** de manera dinámica, dependiendo del entorno de despliegue.

## Estructura del Proyecto

La estructura del repositorio está organizada de la siguiente manera:

/app
    ├── /laravel                  # Código fuente de la aplicación Laravel
    ├── /terraform                # Archivos de Terraform para gestión de infraestructura
        ├── /envs                 # Archivos de configuración para diferentes ambientes
            ├── dev.tfvars        # Variables para el entorno de desarrollo
            ├── prod.tfvars       # Variables para el entorno de producción
        ├── /modules              # Módulos reutilizables de Terraform (e.g., base de datos)
        ├── main.tf               # Archivo principal de Terraform para definir la infraestructura
    ├── /ci_cd                    # Archivos de configuración para el pipeline de CI/CD
        ├── cloudbuild.yaml       # Pipeline para el despliegue en Cloud Run

