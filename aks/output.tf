output "aks_portfolio" {
  value       = azurerm_kubernetes_cluster.portfolio-aks
  description = "The Kubernetes set for the portfolio application."
}