# Script to backup selected host config and output to appropriate file name

$esxihost = Read-Host 'Enter the fqdn of the host to backup'
$path = Read-Host 'Enter the path to save the backup'
Get-VMHostFirmware -VMHost $esxihost -BackupConfiguration -DestinationPath $path
