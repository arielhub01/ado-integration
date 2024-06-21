terraform {
  required_version = ">= 1.7.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.98.0"
    }
  }

  #   backend "remote" {
  #   organization = "github-tfc-ado"

  #   workspaces {
  #     prefix = "iac-"
  #   }
  # }
  # cloud {
  #   organization = "github-tfc-ado"
  #   workspaces {
  #     name = "ado-integration"
  #   }
  # }
}

provider "azurerm" {
  features {}
}