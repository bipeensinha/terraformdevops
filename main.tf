terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm" # Specifies the source for the Azure provider plugin.
      version = "~>2.0"            # Ensures the Azure provider plugin version is 2.x.x (compatible with this configuration).
    }
  }
}

provider "azurerm" {
  features {}                        # Required for newer versions of the Azure provider, initializes provider features.

  subscription_id   = "d5f5198e-d19e-4e8b-83d1-f8c080acf8fe" # Your Azure subscription ID.
  tenant_id         = "df28c44c-39ef-499f-bdf4-3fc2656e6d00" # Your Azure Active Directory (AAD) tenant ID.
  client_id         = "76d3056e-1da2-4b5c-b055-1d674064bdd2" # The client ID of the service principal for authentication.
  client_secret     = "oOO8Q~nKxDJIqwcSmGk3V97hRKd-sf-ARpIepcJi" # The client secret of the service principal.
}

resource "azurerm_resource_group" "example" {
  name     = "demoRG89"   # Resource group name
  location = "East US"           # Azure region

  /*tags = {
    Environment = "Development"
    Owner       = "YourName"
  }*/

}
