resource "azurerm_key_vault" "example" {
  name                        = "aatest1234"
  location                    = "uksouth"
  resource_group_name         = "aatest1"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled    = false
  tags = {
    ServiceCode = "CDO"
    tag1        = "value1"
  }

  sku_name = "standard"
}