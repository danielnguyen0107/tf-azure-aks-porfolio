variable "resource_group_location" {
  type        = string
}

variable "resource_group_name_prefix" {
  type        = string
}

variable "aks_cluster_name_prefix" {
  type        = string
}

variable "resource_group_id" {
  type        = string
}

variable "dns_prefix" {
  type        = string
  default     = "aks-daniel"
  description = "dns prefix for the AKS cluster"
}

variable "vm_size" {
  type        = string
  default     = "standard_d2ps_v6"
  description = "VM size for the AKS node pool"
}
