
$ErrorActionPreference = 'Stop';


$packageName= 'FileBeat'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.elastic.co/beats/filebeat/filebeat-1.2.3-windows.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE_MSI_OR_MSU'
  url           = $url
  url64bit      = $url64

  silentArgs    = "/qn /norestart /l*v `"$env:TEMP\chocolatey\$($packageName)\$($packageName).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'FileBeat*'
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyZipPackage @packageArgs
Invoke-Expression $(Join-Path $toolsDir "filebeat-1.2.3-windows\install-service-filebeat.ps1")


















