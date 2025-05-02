provider "google" {
  credentials = file(var.credentials_file)
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "postgres_instance" {
    name             = var.db_instance_name
    database_version = "POSTGRES_13"
    region           = var.region

    settings {
        tier = var.tier
        data_disk_size_gb = var.storage_gb
        data_disk_type = "PD_SSD"

        ip_configuration {
            ipv4_enabled    = true
            require_ssl     = false

            authorized_networks {
                name  = "allow-all"
                value = "0.0.0.0/0"
            }
        }
    }
}
  


resource "google_sql_database" "default" {
  name     = var.db_name
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "default" {
  name     = var.db_user
  password = var.db_password
  instance = google_sql_database_instance.postgres_instance.name
}
