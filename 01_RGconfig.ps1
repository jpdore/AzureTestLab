Connect-AzAccount

Get-AzSubscription | Sort Name | Select Name

$subscrName="Free Trial"
Select-AzSubscription -SubscriptionName $subscrName

Get-AzResourceGroup | Sort ResourceGroupName | Select ResourceGroupName

$rgName="AzureTestLab01"
$locName="<West US>"
New-AzResourceGroup -Name $rgName -Location $locName