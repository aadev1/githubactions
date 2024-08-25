# Terraform Block
terraform {
  required_version = "~> 1.9.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.2"
    }
  }

  # Terraform State Storage to Azure Storage Container
  # backend "azurerm" {
  #   resource_group_name  = "aatest"
  #   storage_account_name = "aatest123456"
  #   container_name       = "tfstatefiles"
  #   key                  = "terraform.tfstate"
  #   use_oidc             = true
  # }
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

  # subscription_id = "55f3b8c6-6800-41c7-a40d-2adb5e4e1bd1"
  subscription_id = "a905f68e-daad-4402-a2a6-dacfeb83534d"
}


