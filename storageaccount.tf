resource "azurerm_resource_group" "demo" {
  name     = "github-tfc-ado-${var.work_env}-rg"
  location = "Australia East"
}

# ## Another test
resource "azurerm_storage_account" "StorageAccountDemo2" {
  #checkov:skip=CKV_AZURE_33: "Ensure Storage logging is enabled for Queue service for read, write and delete requests"
  #checkov:skip=CKV_AZURE_190: "Ensure that Storage blobs restrict public access"
  #checkov:skip=CKV_AZURE_44: "Ensure Storage Account is using the latest version of TLS encryption"
  #checkov:skip=CKV_AZURE_59: "Ensure that Storage accounts disallow public access"
  #checkov:skip=CKV2_AZURE_40: "Ensure storage account is not configured with Shared Key authorization"
  #checkov:skip=CKV2_AZURE_38: "Ensure soft-delete is enabled on Azure storage account"
  #checkov:skip=CKV2_AZURE_33: "Ensure storage account is configured with private endpoint"
  #checkov:skip=CKV2_AZURE_41: "Ensure storage account is configured with SAS expiration policy"
  #checkov:skip=CKV2_AZURE_47: "Ensure storage account is configured without blob anonymous access"
  #checkov:skip=CKV2_AZURE_1: "Ensure storage for critical data are encrypted with Customer Managed Key"
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
