# Datafy Terraform Infrastructure

Este repositorio tiene como objetivo gestionar la infraestructura de Google Cloud Platform (GCP) para una aplicación Laravel Dockerizada utilizando **Terraform** y un pipeline de **CI/CD en GCP** para desplegarla en **Cloud Run**.

### Funcionalidades:

1. **Crear bases de datos PostgreSQL** en GCP utilizando Terraform, según el entorno (desarrollo, producción, etc.).
2. **Desplegar la aplicación Laravel Dockerizada** en **Cloud Run**, con la ayuda de **Google Cloud Build** y **Artifact Registry**.


## Estructura del Proyecto

La estructura del repositorio está organizada de la siguiente manera:

- `/app`: Contiene el código fuente de la aplicación Laravel, la infraestructura definida por Terraform y los archivos de configuración del pipeline.
- `/laravel`: El directorio con el código de la aplicación Laravel.
- `/terraform`: Contiene los archivos de Terraform para definir y gestionar la infraestructura.
  - `/envs`: Archivos de configuración para diferentes entornos (dev, prod).
  - `/modules`: Módulos reutilizables de Terraform, como la definición de bases de datos.
  - `main.tf`: El archivo principal de Terraform que define la infraestructura en GCP.
- `/ci_cd`: Contiene los archivos del pipeline de CI/CD, como el archivo `cloudbuild.yaml` para el despliegue de la aplicación en Cloud Run.

