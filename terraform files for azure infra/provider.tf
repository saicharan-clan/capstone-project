terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "6234b478-8577-4b87-83bd-0cfb0275cd5b"
}
