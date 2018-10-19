# Downloads a copy of VM notes from VMware for archival purposes

$vcenter = Read-Host "Enter your vCenter server address"
$path = Read-Host "Enter path to save VM notes"

Import-Module VMware.VimAutomation.Core

Connect-VIServer -server $vcenter

Get-VM | Select-Object Name,Notes | Export-Csv -NoTypeInformation -Path "$path_$((Get-Date).ToString('yyyyMMdd_HHmm')).csv"
