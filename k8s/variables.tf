variable "resource_group_location" {
  type        = string
}

variable "resource_group_name_prefix" {
  type        = string
}

variable "resource_group_id" {
  type        = string
}

variable "aks_cluster_name_prefix" {
  type        = string
}

variable "vm_size" {
  type        = string
  default     = "standard_d2ps_v6"
  description = "VM size for the AKS node pool"
}

variable "aks_portfolio_namespace" {
  type        = string
  default     = "portfolio"
  description = "Kubernetes service account namespace to permit"
}

variable "storage_account_rg01_name" {
  type        = string
  default     = "staccrg01"
}

variable "azure_sa_name" {} 
variable "azure_sa_accesskey" {} 