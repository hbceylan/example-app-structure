# Example App
data "aws_ssm_parameter" "db_example_app_user_password" {
  name = "/${var.app_env}/db_example_app_user_password"
}


# GitHub
data "github_branch" "example_app" {
  repository = "example-app"
  branch     = var.app_domain
}
