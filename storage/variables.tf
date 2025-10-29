variable "resource_group_location" {
  type        = string
}

variable "resource_group_name_prefix" {
  type        = string
}

variable "resource_group_id" {
  type        = string
}

variable "storage_account_rg01" {
  type        = map
  default     = {
    "name": "staccrg01",
    "account_tier": "Standard",
    "account_replication_type": "LRS"
    "account_kind": "FileStorage"
  }
}