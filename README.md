# Terraform for AKS Portfolio

![Azure](https://img.shields.io/badge/Azure-0089D6?style=for-the-badge&logo=microsoft-azure&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)

A Terraform configuration for deploying Daniel's portfolio on Azure Kubernetes Service (AKS) using this infrastructure-as-code solution.

# Excluded:

- Security Best Practices, DNS and Monitoring for low-cost maintenance.

## 🚀 Features

**Managed Kubernetes**: Azure Kubernetes Service (AKS) cluster with auto-scaling

## 🏗️ Architecture


## Setup Instruction

### 1. Clone the Repository
```
# git clone https://github.com/danielnguyen0107/tf-azure-aks-porfolio.git

# cd tf-azure-aks-porfolio
```
### 2. Azure Authentication
```
# az login
# az account set --subscription <your-subscription-id>
```
### 3. Initialize Terraform
```
# terraform init
```
### 4. Deploy Infrastructure on Azure FIRST
```
# terraform plan -out 'tfplan' -target=module.storage -target=module.aks

# terraform apply 'tfplan'
```
### 4. Deploy Kubernetes 
```
# terraform plan -out 'tfplan' -target=module.k8s

# terraform apply 'tfplan'
```
