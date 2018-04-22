# Script designed to assist in troubleshooting systems from command line
# Can be run remotely after Enter-PSSession -ComputerName <hostname>

Get-EventLog -LogName System -EntryType Error,Warning | clip
Write-Host "Your System logs have been copied to the clipboard"
Write-Host "Press ENTER if you want pull Application logs or Ctrl+C to cancel"
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
Get-EventLog -LogName Application -EntryType Error,Warning | clip
Write-Output "Your System logs have been copied to the clipboard"