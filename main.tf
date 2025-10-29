###https://github.com/MicrosoftLearning/AZ-104-MicrosoftAzureAdministrator/tree/master/Instructions/Labs

module "storage" {
  source = "./storage"
  resource_group_name_prefix = var.resource_group_name_prefix
  resource_group_location = var.resource_group_location
  resource_group_id = var.resource_group_id
}

module "aks" {
  source = "./aks"
  resource_group_name_prefix = var.resource_group_name_prefix
  resource_group_location = var.resource_group_location
  resource_group_id = var.resource_group_id
  aks_cluster_name_prefix = var.aks_cluster_name_prefix
}

module "k8s" {
  source = "./k8s"
  resource_group_name_prefix = var.resource_group_name_prefix
  resource_group_location = var.resource_group_location
  resource_group_id = var.resource_group_id
  aks_cluster_name_prefix = var.aks_cluster_name_prefix
  azure_sa_name = module.storage.sa_name
  azure_sa_accesskey = module.storage.sa_accesskey
}

# Disabled modules as using dns of ips from kubernetes on aks for cost saving
# module "dns" {
#   source = "./dns"
#   resource_group_name_prefix = var.resource_group_name_prefix
#   it_group_name = var.it_group_name
#   resource_group_location = var.resource_group_location
# }

