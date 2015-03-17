$packageId = 'gmvault'
$silentArgs = "/S"
$url = "https://bitbucket.org/gaubert/gmvault-official-download/downloads/gmvault_installer_v1.8.1-beta.exe"

Install-ChocolateyPackage "$packageId" 'exe' "$silentArgs" "$url"
