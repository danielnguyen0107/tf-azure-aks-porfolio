variable "resource_group_location" {
  type        = string
  default     = "australiaeast"
  # use this location as it supports AKS and Azure Container Storage
  # check supported locations at https://learn.microsoft.com/en-us/azure/storage/container-storage/container-storage-introduction#regional-availability
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg-portfolio"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "aks_cluster_name_prefix" {
  type        = string
  default     = "portfolio-aks"
  description = "Prefix of the AKS cluster name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_id" {
  type        = string
  default     = "rg1"
}