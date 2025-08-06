terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.0"
        }
    }

backend "azurerm" {
  resource_group_name  = "my_rg9773"
  storage_account_name = "mystorage9773"
  container_name       = "contname9773"
  key                  = "new.terraform.tfstate"
}
}
provider "azurerm" {
  features {}
  subscription_id = "027bc23a-8a9d-41f9-b17f-65bf7ca72059"
}