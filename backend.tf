terraform {
  required_version = ">= 0.13"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "github-tfc-ado"

    workspaces {
      prefix = "iac-"
    }
  }
}