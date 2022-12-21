$ConfirmPreference = "None"
$ErrorVariable = SilentlyContinue

Install-PackageProvider -Name NuGet -Force -Confirm:0 -ErrorVariable $ErrorVariable
Install-Module -Name NuGet -Force -AllowClobber -Confirm:0 -ErrorVariable $ErrorVariable
Install-Module -Name PowerShellGet -Force -AllowClobber -Confirm:0 -ErrorVariable $ErrorVariable
Install-Module -Name Az -Force -AllowClobber -Confirm:0 -ErrorVariable $ErrorVariable
Install-Module -Name PSDocs -Force  -AllowClobber -Confirm:0 -ErrorVariable $ErrorVariable
Install-Module -Name ImportExcel -Force  -AllowClobber -Confirm:0 -ErrorVariable $ErrorVariable
install-module -Name Az.Blueprint -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable
install-module -Name AzureAD -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable
Install-Module -Name AzSK -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable
Install-Module -Name SqlServer -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable
Install-Module -Name PsISEProjectExplorer -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable
Install-Module -Name Pester -force -confirm:0 -AllowClobber -ErrorVariable $ErrorVariable

#enable azure alias
Enable-AzureRmAlias -Scope LocalMachine
