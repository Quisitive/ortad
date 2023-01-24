# Azure Data Platform Development VM
## Deploy Development VM

- This will deploy an Azure Bastion and a Azure Virtual Network with Virtual Machine:
  - AzureBastionSubnet
  - Public Ip Address space for Azure Bastion
  - Network Security Group
    - Network Security Group Rules

The Azure Windows VM is deployed based on the selection of Marketplace Windows image, (only recent versions of Windows are available for selection). This will deploy a D16s_v3 size VM in a resource group. The VM will have all the necessary tools installed, (_after clicking the BoxStarter script button_) to start deploying Azure components & services.
### Available VM Images
    - win10-22h2-pro
    - win10-21h2-pro
    - 21h1-pro
    - 20h2-pro
    - 20h1-pro

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FQuisitive%2Fortad%2Fmaster%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fdev-vm%2Fazuredeploy.json) </br>
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FQuisitive%2Fortad%2Fmaster%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fdev-vm%2Fazuredeploy.json)

## Install Development Tools
After the VM is deployed, click on the followng button to install standard development tools.  
>### Warning:</br>
>- Clicking this button installs Chocolatey and several applications.</br>
>**It is strongly advised that this is _not_ clicked from a computer other than the deployed VM.**

</br>

[![Boxstarter Script](./media/BoxStarterScript.svg)](http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Quisitive/ortad/master/code/infrastructure/arm/workstation/boxstarter-workstation.ps1)
>### Important:
>- If Chocolatey is not present on the VM, the button below will have to be clicked a second time.</br>
>- Expect serval restarts during installation.
### Installed Applications
  - GitHub Desktop
    - git extensions
    - git tools
  - Google Chrome
  - Azure-CLI
  - Visual Studio Code with extensions
    - powershell
    - mssql
    - azure-functions-core-tools
    - vscode-azurerm-tools
    - azcopy10
    - vscode-vsonline
    - azure-pipelines-agent
    - vscode-azurerepos
  - office365proplus

### Git Configuration
Remember to set up your global git settings when you first set up code on your Bastion VM.  The following information will help you through this process.

#### To set your global username/email configuration:
Open the command line.

> Set your username:
---
git config --global user.name "FIRST_NAME LAST_NAME"
---
> Set your email address:
--- 
git config --global user.email "MY_NAME@example.com"
--- 
> To set repository-specific username/email configuration:
> From the command line, change into the repository directory.
> 
> Set your username:
--- 
git config user.name "FIRST_NAME LAST_NAME"
--- 
> Set your email address:
--- 
git config user.email "MY_NAME@example.com"
--- 
> Verify your configuration by displaying your configuration file:
--- 
cat .git/config
--- 

```
Tags: bastion, ortad, onramp, dpi30
```



