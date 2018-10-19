# Enables DRS and HA config on all clusters unless you speicify with -off during maintenance periods

# parameter on or off
param(
    [switch]$off

)
if($off){
    # Disable DRS and HA
    Get-Cluster | Set-Cluster -HAEnabled:$false -DrsEnabled:$false -Confirm:$false
}
# Enable DRS and HA
Get-Cluster | Set-Cluster -HAEnabled:$true -DrsEnabled:$true -Confirm:$true

Write-Host 'WARNING: These changes affect all clusters. Please verify system availability when work is completed.'