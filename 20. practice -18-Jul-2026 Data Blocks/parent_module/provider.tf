terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-test"
    storage_account_name = "aqibstorageaccount221122"
    container_name       = "aqibcontainer11221122"
    key                  = "test.tfstate"

  }
}

provider "azurerm" {
  features {

  }
}