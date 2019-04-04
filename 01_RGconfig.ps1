Connect-AzAccount

Get-AzSubscription | Sort Name | Select Name

## 先にAzure上でサブスクリプション名を"無料試用版"から"Free Trial"に変更しておく
$subscrName="Free Trial"
Select-AzSubscription -SubscriptionName $subscrName

Get-AzResourceGroup | Sort ResourceGroupName | Select ResourceGroupName

$rgName="AzureTestLab01"
$locName="<West US>"
New-AzResourceGroup -Name $rgName -Location $locName