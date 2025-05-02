# Inicializa el directorio de Terraform
terraform init

# Revisa el plan de ejecución
terraform plan -var-file=envs/dev.tfvars

# Aplica los cambios
terraform apply -var-file=envs/dev.tfvars