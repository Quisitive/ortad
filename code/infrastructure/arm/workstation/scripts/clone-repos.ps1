#
# Creating my code directories
#
$repoCoreDir = "C:\repos"
New-Item -ItemType Directory -Force -Path "$repoCoreDir"
New-Item -ItemType Directory -Force -Path "$repoCoreDir\github"
New-Item -ItemType Directory -Force -Path "$repoCoreDir\azdo"
New-Item -ItemType Directory -Force -Path "$repoCoreDir\github\quisitive"

# import multiple remote git repositories to local Source dir

 param (
  [string]$localFolder = "$repoCoreDir\github\quisitive",
  [array]$repos = @("ADAP")
 )
$repoLocation = "https://github.com/quisitive/"

# for each repo found remotely, check if it exists locally
# if dir exists, skip, if not, clone the remote git repo into it
foreach ($gitRepo in $repos) {
	If (Test-Path $localFolder\$gitRepo) {
		echo "repo $gitRepo already exists"
	}
	Else {
		echo "git clone $repoLocation$gitRepo $localFolder\$gitRepo"
		git clone $repoLocation$gitRepo $localFolder\$gitRepo
	}
}