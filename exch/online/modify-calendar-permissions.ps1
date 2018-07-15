$LiveCred = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $LiveCred -Authentication Basic –AllowRedirection

Import-PSSession $Session

# Directions pulled from URL:
# https://theitbros.com/add-calendar-permissions-in-office-365-via-powershell/
# Modified for current environment

# List of commands to run for calendar permissions

# List the mailbox folder permissions and save to a text file
# Get-MailboxFolderPermission -Identity email@cidresearch.org:\calendar > email.txt

# Grant a new user access
# Add-MailboxFolderPermission -Identity email@cidresearch.org:\calendar -user email@cidresearch.org -AccessRights Reviewer

# Remove user access
# Remove-MailboxFolderPermission -Identity email@cidresearch.org:\calendar -user email@cidresearch.org

# Change existing user access
# Set-MailboxFolderPermission -Identity email@cidresearch.org:\calendar -user email@cidresearch.org -AccessRights Reviewer

# AccessRights levels of access
# Owner — read, create, modify and delete all items and folders. Also this role allows manage items permissions;
# PublishingEditor — read, create, modify and delete items/subfolders;
# Editor — read, create, modify and delete items;
# PublishingAuthor — read, create all items/subfolders. You can modify and delete only items you create;
# Author — create and read items; edit and delete own items
# NonEditingAuthor – full read access and create items. You can delete only your own items;
# Reviewer — read only;
# Contributor — create items and folders;
# AvailabilityOnly — read free/busy information from calendar;
# LimitedDetails;
# None — no permissions to access folder and files.