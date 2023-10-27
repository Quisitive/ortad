######################################################
# To run this, use browser and go to http://boxstarter.org/package/nr/url?https://dev.azure.com/quisitive/Azure%20CoE/_apis/sourceProviders/tfsGit/filecontents?repository=azure-deployment-coe&commitOrBranch=master&path=%2Fcode%2Finfrastructure%2Farm%2Fworkstation%2Fboxstarter-workstation.ps1&api-version=5.0-preview.1
######################################################
# instructions at http://boxstarter.org/Learn/WebLauncher

# Boxstarter Options
$Boxstarter.RebootOk = $true # Allow reboots?
$Boxstarter.NoPassword = $false # Is this a machine with no login password?
$Boxstarter.AutoLogin = $true # Save my password securely and auto-login after a reboot

# Boxstarter (not Chocolatey) commands
Update-ExecutionPolicy Unrestricted
Disable-InternetExplorerESC  #Turns off IE Enhanced Security Configuration that is on by default on Server OS versions
Disable-UAC  # until this is over
disable-computerrestore -drive 'C:\'  # http://ss64.com/ps/disable-computerrestore.html  
Disable-MicrosoftUpdate # until this is over
Enable-RemoteDesktop

try
{
     # https://github.com/chocolatey/choco/issues/52
     choco feature enable -n=allowGlobalConfirmation
    
     mkdir c:\temp -Confirm:0 -ErrorAction Ignore

     $repoCoreDir = 'C:\repos'
     mkdir "$repoCoreDir" -Confirm:0 -ErrorAction Ignore

     $Boxstarter.Log = 'C:\temp\boxstarter.log'
     $Boxstarter.SuppressLogging = $false

     $path = 'c:\temp'
     If(!(Test-Path -PathType container $path))
     {
          New-Item -ItemType Directory -Path $path
     }
  
     $repoCoreDir = 'C:\repos'
     If(!(Test-Path -PathType container $path))
     {
          New-Item -ItemType Directory -Path $repoCoreDir
     }

     ######################################################
     # settings-system.ps1
     ######################################################
     #--- Enable developer mode on the system ---
     Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1
     Set-WindowsExplorerOptions -EnableShowFileExtensions -EnableShowFullPathInTitleBar
 
     #Write-Output "Modifying taskbar options"
     Set-BoxstarterTaskbarOptions -Dock Bottom -Combine Always -AlwaysShowIconsOn

     ######################################################
     # Installing Dev Tools
     ######################################################
     Write-Host 'Installing Dev Tools'
     Write-Host ''
     Write-Host 'Core applications'
     choco install chocolatey-core.extension -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"
     choco install dotnet4.6.1 -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                 # Git 2.39.0                            Dependency: None
     choco install azure-cli -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                   # Azure CLI 2.44.1                      Dependency: None
     choco install azure-functions-core-tools -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"  # Azure Function Core Tools 4.0.4915    Dependency: None
     choco install azcopy10 -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                    # Azure Copy 10.16.2                    Dependency: None
     choco install bicep -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                      # Azure Copy 10.16.2                     Dependency: None

     Write-Host ''
     Write-Host 'GitHub Resources'
     choco install git.install -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                 # Git 2.39.0                            Dependency: chocolatey-core.extension
     choco install git -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                         # Git (Install) 2.39.0                  Dependency: Git (Install) 2.39.0, dotnet > 4.6.1
     choco install gitextensions -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache" 

     choco install googlechrome -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                # Google Chrome 117.0.5938.150          Dependency: None

     Write-Host ''
     Write-Host 'Visual Studio Code and Extensions'
     choco install vscode.install -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                   # Visual Studio Code (Install) 1.74.3   Dependency: chocolatey-core.extension, Dot Net > 4.5.2
     choco install vscode -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                           # Visual Studio Code                    Dependency: vscode.install
     choco install vscode-powershell -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                # VS Code PowerShell Extension 2022.8.5 Dependency: chocolatey-core.extension
     choco install vscode-mssql -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                     # VS Code MS-SQL Extension 1.6.0        Dependency: chocolatey-core.extension
     choco install vscode-azurerm-tools -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"             # VS Code ARM Tools Extension 1.0.0.x   Dependency: vscode > 1.2.0
     choco install vscode-vsonline -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                  # VS Code Codespaces Extension 1.0.x    Dependency: chocolatey-core.extension
     choco install vscode-azurerepos -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                # VS Code Azure Repos Extension 1.161.1 Dependency: chocolatey-core.extension
     choco install vscode-yaml -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                      # VS Code YAML Deploy to Azure          Dependency: chocolatey-core.extension
     choco install azureaccount-vscode -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"              # VS Code Azure Account                 Dependency: chocolatey-core.extension
     choco install vscode-markdown-all-in-one -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"       # VS Code Markdown All-in-One           Dependency: chocolatey-core.extension
     
     choco install azure-data-studio -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                # Azure Data Studio 1.46.0              Dependency: None
     choco install microsoftazurestorageexplorer -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"    # Azure Data Studio 1.46.0              Dependency: None

     choco install office365proplus -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"            # Office 365 ProPlus 15330.20231        Dependency: None
     choco install paint.net -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                   # Paint.NET 5.0.10                      Dependency: None                        Use: Documentation
     choco install typora -y --cacheLocation "$env:UserProfile\AppData\Local\ChocoCache"                      # Typora (Install) 1.7.5                Dependency: None                        Use: Documentation

     Write-Host

}
catch
{
     throw $_
}
