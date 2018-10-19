# Create report of user's mailbox size

$path = Read-Host 'Where do you want to save the report'

Get-Mailbox -ResultSize Unlimited | Get-MailboxStatistics | select name,PrimarySMTPAddress,TotalItemSize,ItemCount | Export-Csv -Path $path -NoTypeInformation
