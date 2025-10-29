output "sa_accesskey" {
  value       = azurerm_storage_account.storage_account_rg1.secondary_access_key
  sensitive = true
  description = "The storage account key to be used in the Kubernetes secret."
}

output "sa_name" {
  value       = azurerm_storage_account.storage_account_rg1.name
  description = "The storage account name to be used in the Kubernetes secret."
}