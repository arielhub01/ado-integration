terraform {
  backend "remote" {
    organization = "github-tfc-ado"

    workspaces {
      prefix = "iac-"
    }
  }
}
