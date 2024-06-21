resource "azurerm_resource_group" "demo" {
  name     = "github-tfc-ado-rg"
  location = "Australia East"
}

##  Demo now
# resource "azurerm_storage_account" "StorageAccountDemo" {
#   name                     = "mysademo01245"
#   resource_group_name      = azurerm_resource_group.demo.name
#   location                 = azurerm_resource_group.demo.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     video   = "azure"
#     channel = "CloudQuickLabs"
#   }
# }

# ## Another test
resource "azurerm_storage_account" "StorageAccountDemo2" {
  name                     = "mysaworkspace01325"
  resource_group_name      = azurerm_resource_group.demo.name
  location                 = azurerm_resource_group.demo.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    video   = "azure"
    channel = "CloudQuickLabs"
  }
}

# ## Another test
# resource "azurerm_storage_account" "StorageAccountDemo3" {
#   name                     = "mysahubtfc01"
#   resource_group_name      = azurerm_resource_group.demo.name
#   location                 = azurerm_resource_group.demo.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     video   = "azure"
#     channel = "CloudQuickLabs"
#   }
# }