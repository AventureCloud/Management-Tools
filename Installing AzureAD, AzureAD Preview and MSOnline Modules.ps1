#Lab- Install Azure AD Modules
#Installing Azure Active Directory PowerShell module
Install-Module AzureAD

#Installing the BETA AzureAD Preview Module
#Not suitable for production
#But contains latest cmdlets
Install-module AzureADPreview

#Both cannot co-exist. Use any one of them.

#To check the version of the module installed
Get-Module AzureADPreview
#Connect to Azure AD

$AzureAdCred = Get-Credential
Connect-AzureAD -Credential $AzureAdCred

#Installing MSOnline Module
Install-Module MSOnline

#Connect to  Azure AD
$Msolcred = Get-credential
Connect-MsolService -Credential $MsolCred

#Few MSOnline commands
Get-MsolUser
Get-MsolUser -EnabledFilter EnabledOnly -MaxResults 2000
Get-MsolUser -UserPrincipalName "bob@cloudgrad.online"
Get-MsolUser -SearchString "Alice"

