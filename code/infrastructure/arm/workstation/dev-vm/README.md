# Azure Data Platform Development VM

[![Deploy To Azure](../../../../../md/articles/media/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzureArchitecture%2Fazure-deploy%2Fmaster%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fdev-vm%2Fazuredeploy.json)
[![Visualize](../../../../../md/articles/media/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzureArchitecture%2Fazure-deploy%2Fmaster%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fdev-vm%2Fazuredeploy.json)

This template allows you to deploy an Azure Development Windows VM using the latest patched Windows Visual Studio 2019 Marketplace image. This will deploy a D16s_v3 size VM in the resource group location and return the fully qualified domain name of the VM. The VM will have all the necessary tools installed to start deploying Azure components & services.

After the VM is deployed. Open a browser with this link to complete the workstations setup. 

http://boxstarter.org/package/nr/url?https://dev.azure.com/quisitive/Azure%20CoE/_apis/sourceProviders/tfsGit/filecontents?repository=azure-deployment-coe&commitOrBranch=master&path=%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fboxstarter-workstation.ps1&api-version=5.0-preview.1

Complete instructions are available at Boxstarter: http://boxstarter.org/Learn/WebLauncher

`Tags: ortad, onramp, dpi30`