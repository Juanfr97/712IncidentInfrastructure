terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "example-resources"
    storage_account_name = "juanfraccount"
    container_name = "711tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}