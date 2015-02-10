. (Join-Path (Split-Path -parent $MyInvocation.MyCommand.Definition) chocolateyInclude.ps1)

$binRoot = Get-BinRoot
Write-Debug "Bin Root is $binRoot"

Install-ChocolateyZipPackage "$packageName" "$url" "$binRoot"

$installDir = Join-Path "$binRoot" "mingw64"
Write-Host "Adding `'$installDir`' to the path and the current shell path"
Install-ChocolateyPath "$installDir\bin"
$env:Path = "$($env:Path);$installDir\bin"
