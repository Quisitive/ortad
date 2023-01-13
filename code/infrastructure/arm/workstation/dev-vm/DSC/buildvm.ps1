# param(
#     [Parameter(Mandatory = $false)][string]$rdpPort = "3389"
# )
Process
{
     Write-Host 'hello world'

     #Add RDP listening ports if needed
     #     if ($rdpPort -ne 3389) {
     #         netsh.exe interface portproxy add v4tov4 listenport=$rdpPort connectport=3389 connectaddress=127.0.0.1
     #         netsh.exe advfirewall firewall add rule name="Open Port $rdpPort" dir=in action=allow protocol=TCP localport=$rdpPort
     #     }

     #install Powershell AZ module
     $ConfirmPreference = 'None'
     Install-PackageProvider -Name NuGet -Force -Confirm:0 -ErrorVariable Continue
     Install-Module -Name NuGet -Force -AllowClobber -Confirm:0 -ErrorVariable Continue
     Install-Module -Name PowerShellGet -Force -AllowClobber -Confirm:0 -ErrorVariable Continue
     Install-Module -Name Az -Force -AllowClobber -Confirm:0 -ErrorVariable Continue
     Install-Module -Name PSDocs -Force -AllowClobber -Confirm:0 -ErrorVariable Continue
     Install-Module -Name ImportExcel -Force -AllowClobber -Confirm:0 -ErrorVariable Continue
     Install-Module -Name Az.Blueprint -Force -Confirm:0 -AllowClobber -ErrorVariable Continue
     Install-Module -Name AzureAD -Force -Confirm:0 -AllowClobber -ErrorVariable Continue
     Install-Module -Name AzSK -Force -Confirm:0 -AllowClobber -ErrorVariable Continue
     Install-Module -Name SqlServer -Force -Confirm:0 -AllowClobber -ErrorVariable Continue
     Install-Module -Name PsISEProjectExplorer -Force -Confirm:0 -AllowClobber -ErrorVariable Continue
     Install-Module -Name Pester -Force -Confirm:0 -AllowClobber -ErrorVariable Continue

     #enable azure alias
     Enable-AzureRmAlias -Scope LocalMachine

     ./setup.bat

     Start-Process 'http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/Quisitive/ortad/master/code/infrastructure/arm/workstation/boxstarter-workstation.ps1'
}
