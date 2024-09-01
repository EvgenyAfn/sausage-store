# Terraform

Необходимо добавить в корень файл с кредами:
            
            creds.tfvars

А также заполнить такими данными:

cloud_id = "" (по умолчанию используется b1g3jddf4nv5e9okle7p)
folder_id = "" (по умолчанию используется b1gjdbgjfjmdu5atjah4)
token_id = "" (необходимо получить выполнив команду "yc iam create-token")


# Пример использования команд с файлом "creds.tfvars"

terraform plan -var-file creds.tfvars

terraform apply -var-file creds.tfvars

terraform destroy -var-file creds.tfvars