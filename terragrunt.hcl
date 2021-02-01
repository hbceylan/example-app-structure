remote_state {
    backend = "s3"
    config = {
        encrypt        = true
        bucket         = "example-terraform-states"
        key            = "path/to/bucket/terraform.tfstate"
        region         = "region"
        dynamodb_table = "example-terraform-locks"

        s3_bucket_tags = {
            owner = "terragrunt"
            name  = "Terraform state storage"
        }

        dynamodb_table_tags = {
            owner = "terragrunt"
            name  = "Terraform lock table"
        }
    }
}

terraform {
  extra_arguments "custom_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh",
      "destroy"
    ]
  }
}
