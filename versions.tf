terraform {
  required_version = "~> 1.9.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.1"
    }
  }

  # Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name  = "aatest"
    storage_account_name = "aatest1234"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}
# Provider Block
provider "azurerm" {
  features {}
  use_oidc = true

  subscription_id = "a905f68e-daad-4402-a2a6-dacfeb83534d"
}

data "azurerm_client_config" "current" {}

/*
Play with Terraform CLI Version (We installed 1.0.0 version)
  required_version = "~> 0.14.3" - Will fail
  required_version = "~> 0.14"   - Will fail  
  required_version = "= 0.14.4"  - Will fail
  required_version = ">= 0.13"   - will pass
  required_version = "= 1.0.0"   - will pass
  required_version = "1.0.0"     - will pass 
  required_version = ">= 1.0.0"   - will pass     


Play with Provider Version (as on today latest version is 2.64.0)
      version = "~> 2.0"             
      version = ">= 2.0.0, < 2.60.0"
      version = ">= 2.0.0, <= 2.64.0"     
*/

