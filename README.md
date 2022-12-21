# Azure Data and Analytics Platform

_This repo contains all the ARM Templates and PowerShell scripts needed to deploy the [Azure Platform](http://portal.azure.com)._

This template deploys resources in the same Resource Group and Azure region as the Virtual Network.

## Deploy [Azure Data Platform Development VM](code/infrastructure/arm/workstation/dev-vm/README.md)

- This template will deploy Azure Bastion and a Azure Virtual Network:
  - AzureBastionSubnet
  - Public Ip Address space for Azure Bastion
  - Network Security Group
    - Network Security Group Rules

The Azure Windows VM is deployed based on the selection of Marketplace Windows image, (only recent versions of Windows are available for selection). This will deploy a D16s_v3 size VM in a resource group. The VM will have all the necessary tools installed, (_after clicking the BoxStarter script button_) to start deploying Azure components & services.

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FQuisitive%2Fortad%2Fmain%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fbastion%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FQuisitive%2Fortad%2Fmain%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fbastion%2Fazuredeploy.json)

After the VM is deployed, click on the followng button to install all development tools.
NOTE:  Clicking this button installs Chocolatey and several applications.  It is strongly advised that this is _not_ clicked from a computer other than the deployed VM.

[![Boxstarter Script](./media/BoxStarterScript.svg)](http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Quisitive/ortad/main/code/infrastructure/arm/workstation/boxstarter-workstation.ps1)

```
Tags: bastion, ortad, onramp, dpi30
```



