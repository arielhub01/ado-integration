resource "azurerm_resource_group" "demo" {
  name     = "github-tfc-ado-${var.work_env}-rg"
  location = "Australia East"
}

# ## Another test
resource "azurerm_storage_account" "StorageAccountDemo2" {
  name                     = "sa${var.work_env}ws01325"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    video   = "azure"
    channel = "CloudQuickLabs"
  }
}
