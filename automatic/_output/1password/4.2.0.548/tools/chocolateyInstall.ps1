﻿$packageId = '1password'
$fileType = 'exe'
$installArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://d13itkw33a7sus.cloudfront.net/dist/1P/win4/1Password-4.2.0.548.exe'

Install-ChocolateyPackage $packageId $fileType $installArgs $url -validExitCodes @(0)
