ping dc1.corp.contoso.com

Add-Computer -DomainName corp.contoso.com
Restart-Computer

Install-WindowsFeature Web-WebServer -IncludeManagementTools

New-Item -path c:\files -type directory
Write-Output "This is a shared file." | out-file c:\files\example.txt
New-SmbShare -name files -path c:\files -changeaccess CORP\User1