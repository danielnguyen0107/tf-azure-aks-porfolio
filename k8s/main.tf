resource "kubernetes_namespace" "portfolio" {
  metadata {
    name = var.aks_portfolio_namespace
    
  }
} 

resource "kubernetes_secret" "portfolio-storage-secret" {
  metadata {
    name = "${var.aks_portfolio_namespace}-secret"
      namespace = kubernetes_namespace.portfolio.metadata[0].name
  }
  data = {
    "azurestorageaccountname" = var.azure_sa_name
    "azurestorageaccountkey"  = var.azure_sa_accesskey
  }
}