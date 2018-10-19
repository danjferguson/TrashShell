# Change local administrator account
# .\LocalAdminConf.ps1 -computerName hostname
# Be sure to run with account that has administrative rights on the computer you are connecting to

Param(
    [string]$computerName    
)
Invoke-Command -ComputerName $computerName -ScriptBlock {
    $Password = Read-Host "Enter a Password" -AsSecureString
New-LocalUser "localadmin" -Password $Password -FullName "localadmin" -Description "local administrator account" -PasswordNeverExpires -UserMayNotChangePassword
Add-LocalGroupMember -Group "Administrators" -Member "localadmin"
Disable-LocalUser -Name "Administrator"
}
