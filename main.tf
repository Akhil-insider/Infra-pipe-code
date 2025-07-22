terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_group_name" "rge" {

name = "Myrgpipe"
location = "west us"
  
}

resource "azurerm_group_name" "rg2" {

name = "Myrgpipe1"
location = "west us"
  
}

resource "azurerm_storage_account" "Stgr"{

name = "strge"
resource_group_name = azurerm_group_name.rg2.name
location =  azurerm_group_name.rg2.location
account_tier             = "Standard"
  account_replication_type = "GRS"
}






