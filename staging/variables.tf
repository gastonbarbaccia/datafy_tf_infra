variable "project_id" {
  description = "ID del proyecto de GCP"
  type        = string
}

variable "region" {
  description = "Región de GCP"
  type        = string
  default     = "us-central1"
}

variable "db_instance_name" {
  description = "Nombre de la instancia de Cloud SQL"
  type        = string
}

variable "db_name" {
  description = "Nombre de la base de datos"
  type        = string
}

variable "db_user" {
  description = "Usuario de la base de datos"
  type        = string
}

variable "db_password" {
  description = "Contraseña del usuario de la base de datos"
  type        = string
  sensitive   = true
}

variable "tier" {
  description = "Tipo de máquina para Cloud SQL (como db-f1-micro)"
  type        = string
  default     = "db-f1-micro"
}

variable "storage_gb" {
  description = "Tamaño del disco en GB para la base de datos"
  type        = number
  default     = 10
}

variable "credentials_file" {
  description = "Ruta al archivo de credenciales JSON de GCP"
  type        = string
}
