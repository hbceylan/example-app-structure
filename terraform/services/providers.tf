terraform {
  backend "s3" {}
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = var.region
}

provider "random" {
  version = "~> 2.1"
}

provider "null" {
  version = "~> 2.1"
}

provider "template" {
  version = "~> 2.1"
}

provider "kubernetes" {
  config_path = "path-to-kubeconfig"
}

provider "helm" {
  kubernetes {
    config_path = "path-to-kubeconfig"
  }
}

provider "github" {
  token = data.aws_ssm_parameter.github_token.value
  owner = var.github_owner
}


