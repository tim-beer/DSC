$DCSaccount = Get-AzureRmAutomationAccount -Name 'Your Account Name' -ResourceGroupName 'Your Resource Group'

$DCSaccount | Import-AzureRmAutomationDscConfiguration -SourcePath C:\setupdscjob.ps1 -Published -Force
$DCSaccount | Get-AzureRmAutomationDscConfiguration -Name myfile1

$DSCJob = $DCSaccount | Get-AzureRmAutomationDscConfiguration -Name myfile1 | Start-AzureRmAutomationDscCompilationJob

While (-not($DSCJob | Get-AzureRmAutomationDscCompilationJob).EndTime){Start-Sleep -Seconds 5}

$DCSaccount | Get-AzureRmAutomationDscNodeConfiguration