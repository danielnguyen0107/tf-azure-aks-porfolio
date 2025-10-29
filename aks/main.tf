
resource "azurerm_resource_group" "portfolio-rg1" {
  location    =  var.resource_group_location
  name        =  "${var.resource_group_name_prefix}-${var.resource_group_id}"
}

resource "azurerm_kubernetes_cluster" "portfolio-aks" {
  name                = "${var.aks_cluster_name_prefix}-${var.resource_group_id}"
  location            = azurerm_resource_group.portfolio-rg1.location
  resource_group_name = azurerm_resource_group.portfolio-rg1.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = var.vm_size
    os_sku = "AzureLinux"
  }
  sku_tier             = "Free"
  oidc_issuer_enabled  = true
  workload_identity_enabled = true

  identity {
    type = "SystemAssigned"
  } 
}