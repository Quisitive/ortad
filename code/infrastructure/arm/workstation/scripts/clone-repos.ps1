#
# Function to create a path if it does not exist
#
function CreatePathIfNotExists($pathName) {
  if(!(Test-Path -Path $pathName)) {
      New-Item -ItemType directory -Path $pathName
  }
}

#
# Creating my code directories
#
$repoCoreDir = "C:\repos"
CreatePathIfNotExists -pathName "$repoCoreDir"
CreatePathIfNotExists -pathName "$repoCoreDir\azure-deploy"

cd "$repoCoreDir\azure-deploy"
git clone https://github.com/Quisitive/ADAP.git
# git clone https://github.com/AzureArchitecture/azure-data-services.git
