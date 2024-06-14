terraform {
  required_version = ">= 1.7.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.98.2"
    }
  }
  cloud {
    organization = "github-tfc-ado"
    workspaces {
      name = "ado-integration"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}