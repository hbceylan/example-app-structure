
# Web Services
resource "helm_release" "example-app" {
  name             = "example-app"
  chart            = "../../helm/app"
  create_namespace = true
  namespace        = "master"

  values = [templatefile("../../helm/app/example-app.yaml", {
    APP_ENV                = var.app_env
    COMMIT_ID              = substr(data.github_branch.example_app.sha, 0, 7)
    REPLICA_COUNT          = 1
    CPU                    = "1"
    MEMORY                 = "1Gi"
  })]
}
