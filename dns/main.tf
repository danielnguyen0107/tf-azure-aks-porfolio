# ## Disabled DNS to avoid cost
# ## Declare DNS

# resource "azurerm_dns_zone" "public" {
#   name                = "az104.com"
#   resource_group_name = var.resource_group_name
# }

# resource "azurerm_dns_a_record" "public-www" {
#   name                = "www"
#   zone_name           = azurerm_dns_zone.public.name
#   resource_group_name = var.resource_group_name
#   ttl                 = 1
#   records             = ["10.1.1.4"]
# }

# resource "azurerm_private_dns_zone" "private" {
#   name                = "private.az104.com"
#   resource_group_name = var.resource_group_name
# }

# data "azurerm_virtual_network" "ManufacturingVnet" {
#   name = "ManufacturingVnet"
#   resource_group_name = var.resource_group_name
# }

# resource "azurerm_private_dns_zone_virtual_network_link" "manufacturing-link" {
#   name                  = "manufacturing-link"
#   resource_group_name   = var.resource_group_name
#   private_dns_zone_name = azurerm_private_dns_zone.private.name
#   virtual_network_id    = data.azurerm_virtual_network.ManufacturingVnet.id
# }

# resource "azurerm_private_dns_a_record" "private-www" {
#   name                = "sensorvm"
#   zone_name           = azurerm_private_dns_zone.private.name
#   resource_group_name = var.resource_group_name
#   ttl                 = 1
#   records             = ["10.1.1.5"]
# }
