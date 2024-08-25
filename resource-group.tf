# Resource Block
# Create a resource group
resource "azurerm_resource_group" "myrg" {
  name     = "testResourceGroup"
  location = "UK South"
  tags = {
    ServiceCode = "CDO"
  }
}