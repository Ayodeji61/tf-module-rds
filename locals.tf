locals {
  REDIS_USER = jsondecode(data.aws_secretsmanager_secret_version.roboshop.secret_string)["REDIS_USER"]
  REDIS_PASS = jsondecode(data.aws_secretsmanager_secret_version.roboshop.secret_string)["REDIS_PASS"]
}