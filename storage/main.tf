resource "azurerm_resource_group" "portfolio-rg1" {
  location    =  var.resource_group_location
  name        =  "${var.resource_group_name_prefix}-${var.resource_group_id}"
}

resource "azurerm_storage_account" "storage_account_rg1" {
  name                     = var.storage_account_rg01["name"]
  resource_group_name      = azurerm_resource_group.portfolio-rg1.name
  location                 = azurerm_resource_group.portfolio-rg1.location
  account_tier             = var.storage_account_rg01["account_tier"]
  account_replication_type = var.storage_account_rg01["account_replication_type"]
}

resource "azurerm_storage_share" "porfolio-share" {
  name                 = "portfoliofs"
  storage_account_name = var.storage_account_rg01["name"]
  quota                = 1024
}

resource "azurerm_storage_share_directory" "portfolio" {
  name             = "portfolio"
  storage_share_id = azurerm_storage_share.porfolio-share.id
}