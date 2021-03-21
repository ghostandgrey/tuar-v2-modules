provider "aws" {
  region = "us-east-2"
}

data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = var.secret_id
}

resource "aws_db_instance" "example" {
  identifier_prefix   = var.db_identifier_prefix
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  name                = "example_database"
  username            = "admin"
  skip_final_snapshot = true

  password = jsondecode(data.aws_secretsmanager_secret_version.db_password.secret_string).dbpassword
}