# DB
module "secret_example_app_db_mysql_password" {
  source    = "../modules/kubernetes/secret"
  name      = "example-app-db-mysql-password"
  namespace = var.app_domain
  type      = "Opaque"

  data = {
    DB_MYSQLDB_PASSWORD = data.aws_ssm_parameter.db_example_app_user_password.value
  }

  depends_on = [
    module.app_domain_namespace
  ]
}
