# Deploy Azure Bastion Service in an Azure Virtual Network with Deployment VM

![Azure Public Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/PublicLastTestDate.svg)
![Azure Public Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/PublicDeployment.svg)

![Azure US Gov Last Test Date](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/FairfaxLastTestDate.svg)
![Azure US Gov Last Test Result](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/FairfaxDeployment.svg)

![Best Practice Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/BestPracticeResult.svg)
![Cred Scan Check](https://azurequickstartsservice.blob.core.windows.net/badges/101-azure-bastion/CredScanResult.svg)

[![Deploy To Azure](../../../../../media/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fquisitive%2Fortad%2Ffeature-bastion-service%2Fcode%2Finfrastructure%2Farm%2Fmain%2Fbastion%2Fazuredeploy.json)
[![Visualize](../../../../../media/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fquisitive%2Fortad%2Fmain%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fbastion%2Fazuredeploy.json)

This template will deploy Azure Bastion in a new or existing Azure Virtual Network, along with dependent resources:

- AzureBastionSubnet
- Public Ip Address space for Azure Bastion
- Network Security Group
  - Network Security Group Rules

This template deploys resources in the same Resource Group and Azure region as the Virtual Network.

This template also deploys an Azure Development Windows VM using the latest patched Windows Visual Studio 2019 Marketplace image. This will deploy a D16s_v3 size VM in the resource group location and return the fully qualified domain name of the VM. The VM will have all the necessary tools installed to start deploying Azure components & services.

After the VM is deployed. Open a, Internet Explorer browser with this link to complete the workstations setup.

http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Quisitive/ortad/main/code/infrastructure/arm/workstation/boxstarter-workstation.ps1

```
Tags: bastion, ortad, onramp, dpi30
```
