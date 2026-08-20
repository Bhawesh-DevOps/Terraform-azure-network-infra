# Terraform-azure-network-infra
Terraform-azure-network-infra
# Terraform Azure Network Infrastructure

This repository provisions **Azure network infrastructure using Terraform modules**.

## 🏗️ Infrastructure

The current Terraform configuration creates:

* **Azure Resource Group**
* **Azure Virtual Network (VNet)**
* **2 Azure Subnets**
* Modular and reusable Terraform structure

### Architecture

```text
Azure
│
└── Resource Group
    │
    └── Virtual Network
        │
        ├── Subnet-01
        │
        └── Subnet-02
```

## 📁 Repository Structure

```text
Terraform-azure-network-infra/
│
├── parent/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
│
├── child/
│   ├── Resource_group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   ├── Virtual_network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── Subnet/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md
```

> The exact folder/file names can be adjusted according to the current repository structure.

## 🚀 Terraform Modules

The infrastructure is separated into reusable child modules:

### Resource Group Module

Creates the Azure Resource Group required for the infrastructure.

### Virtual Network Module

Creates the Azure Virtual Network inside the Resource Group.

### Subnet Module

Creates **two subnets** inside the Virtual Network.

```text
Resource Group
      │
      └── VNet
           ├── Subnet-01
           └── Subnet-02
```

## 🔧 Technologies Used

* Terraform
* Microsoft Azure
* AzureRM Terraform Provider
* Terraform Modules
* HCL

## ▶️ How to Deploy

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Format Terraform files:

```bash
terraform fmt -recursive
```

Review the execution plan:

```bash
terraform plan
```

Apply the infrastructure:

```bash
terraform apply
```

To destroy the infrastructure:

```bash
terraform destroy
```

## 🔄 Module-Based Architecture

The project follows a **parent-child module architecture**.

```text
Parent Module
     │
     ├── Resource Group Module
     │
     ├── Virtual Network Module
     │
     └── Subnet Module
```

This approach makes the Terraform code:

* Reusable
* Maintainable
* Scalable
* Easier to manage across environments

## 📌 Current Scope

| Resource        | Quantity |
| --------------- | -------: |
| Resource Group  |        1 |
| Virtual Network |        1 |
| Subnet          |        2 |

## 🔮 Future Enhancements

The following Azure networking components can be added as the project grows:

* Network Security Groups (NSG)
* Route Tables
* Network Interfaces (NIC)
* Public IPs
* VNet Peering
* Azure Firewall
* Private Endpoints
* NAT Gateway
* Azure Bastion
* Hub-and-Spoke networking

## 👨‍💻 Author

**Bhawesh Kumar**

DevOps | Terraform | Azure | Kubernetes | CI/CD

---

⭐ If you find this repository useful, consider giving it a star.

