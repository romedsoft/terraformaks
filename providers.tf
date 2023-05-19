terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "training-backend-rg"
    storage_account_name = "trainingstorageaccount"
    container_name       = "trainingsacontainer"
    key                  = "sample.terraform.tfstate"
    subscription_id      = var.AKS_SUBSCRIPTION_ID
    tenant_id            = var.AKS_SERVICE_PRINCIPAL_TENANT_ID
  }
}

provider "azurerm" {
  features {}

  subscription_id   = var.AKS_SUBSCRIPTION_ID
  tenant_id         = var.AKS_SERVICE_PRINCIPAL_TENANT_ID
  client_id         = var.AKS_SERVICE_PRINCIPAL_APP_ID
  client_secret     = var.AKS_SERVICE_PRINCIPAL_CLIENT_SECRET
}
