$orgName="dondoko01"
$spURL="https://" + $orgName + "-admin.sharepoint.com"
Connect-SPOService -Url $spURL

## 3つのチームサイトを作成
$owner = "user1@dondoko01.onmicrosoft.com"
$siteURL = "https://" + $orgName + ".sharepoint.com/sites/sales"
New-SPOSite -Url $siteURL -Owner $owner -StorageQuota 1000 -Title "Sales site collection" -Template "STS#0"
$siteURL = "https://" + $orgName + ".sharepoint.com/sites/production"
New-SPOSite -Url $siteURL -Owner $owner -StorageQuota 1000 -Title "Production site collection" -Template "STS#0"
$siteURL = "https://" + $orgName + ".sharepoint.com/sites/support"
New-SPOSite -Url $siteURL -Owner $owner -StorageQuota 1000 -Title "Support site collection" -Template "STS#0"

## 作成したサイトの一覧表示
Get-SPOSite | Where URL -like "*/sites/*" | Sort URL | Select URL

## Result
https://dondoko01.sharepoint.com/sites/production
https://dondoko01.sharepoint.com/sites/sales
https://dondoko01.sharepoint.com/sites/support