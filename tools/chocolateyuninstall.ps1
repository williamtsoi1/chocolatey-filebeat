$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Invoke-Expression $(Join-Path $toolsDir "filebeat-1.2.3-windows\uninstall-service-filebeat.ps1")
Uninstall-ChocolateyZipPackage


