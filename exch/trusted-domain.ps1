# Adds a new domain to the user's trusted domain

$user = Read-Host "Enter user's email address"
$domain = Read-Host "Enter the domain to trust"

Set-MailboxJunkEmailConfiguration -Identity "$user" -TrustedSendersAndDomains @{Add="$domain"}
