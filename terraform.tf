terraform {
  required_version = "~> 1.6"
  required_providers {
    alz = {
      source  = "azure/alz"
      version = "0.13.0"
    }

    azurerm = "~> 3.88"
  }
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = var.subscription_id_management
  features {}
}

provider "azurerm" {
  alias           = "connectivity"
  subscription_id = var.subscription_id_connectivity
  features {}
}

# Include the additional policies and override archetypes
provider "alz" {
  library_references = [
    {
      path = "platform/alz",
      ref  = "2024.07.02"
    },
    {
      custom_url = "${path.root}/lib"
    }
  ]
}