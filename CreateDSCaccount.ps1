#Create AzureAutomation Account
Add-AzureRmAccount -SubscriptionName 'Enter Subscription Name'
$ResourceGroup = New-AzureRmResourceGroup -Name 'Your New Resource Group Name' -Location 'West Europe'
$ResourceGroup | New-AzureRmAutomationAccount -Name 'Your New Account Name' -Plan Free

$Account = $ResourceGroup | Get-AzureRmAutomationAccount -Name 'Your New Account Name'
$Account | Get-AzureRmAutomationRegistrationInfo
