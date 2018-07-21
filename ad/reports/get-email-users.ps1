# Retrieves user email address from specific OU

$ou = Read-Host 'Paste the OU of the users you need email addresses'
$output = Read-Host 'Enter location to save output'

# Replace domain.tld with your desired email domain
Get-ADUser -FIlter {EmailAddress -like "*@domain.tld"} -Properties * -Searchbase "$ou" | Select Name,EmailAddress | Export-CSV "$output" -NoTypeInformation