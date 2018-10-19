Get-VM | Get-Snapshot | Format-Table vm,name,description,created,@{N="SizeMB";E={[math]::round($_.SizeMB, 1)}}
