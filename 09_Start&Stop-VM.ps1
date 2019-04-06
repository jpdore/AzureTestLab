## Azureへの接続
Connect-AzAccount

##サブスクリプションの選択
Get-AzSubscription | Sort Name | Select Name
$subscrName="Free Trial"
Select-AzSubscription -SubscriptionName $subscrName

## VMの起動
$rgName="AzureTestLab01"
Start-AzVM -ResourceGroupName $rgName -Name "DC1"
Start-AzVM -ResourceGroupName $rgName -Name "APP1"
Start-AzVM -ResourceGroupName $rgName -Name "CLIENT1"


## VMの停止
$rgName="AzureTestLab01"
Stop-AzVM -ResourceGroupName $rgName -Name "CLIENT1" -Force
Stop-AzVM -ResourceGroupName $rgName -Name "APP1" -Force
Stop-AzVM -ResourceGroupName $rgName -Name "DC1" -Force