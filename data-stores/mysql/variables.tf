variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "secret_id" {
  description = "The key of the secret_id to access within AWS Secret Manager"
  type        = string
}

variable "db_identifier_prefix" {
  description = "The prefix to differentiate the database instance between environments"
  type        = string
}