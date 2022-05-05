#Lab - Managing Azure PowerShell

#Install Azure PowerShell by executing:
#Latest version is installed
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force

#Installing a particular version
Install-Module -Name Az -RequiredVersion 6.5.0 -SkipPublisherCheck

#Finding if it is installed
Get-InstalledModule -Name Az -AllVersions

#Sign in
Connect-AzAccount

#Sign in to a particular tenant
#If your account is associated with more than one tenant, sign-in requires the Tenant parameter to be specified when connecting.

Connect-AzAccount -Tenant '00000000-0000-0000-0000-000000000000'

#Get the list of all Subscriptions
Get-AzSubscription

#If you have access to multiple tenants, the above command lists the subscriptions in all Tenants.

#If you want to see the subscriptions in a particular tenant
Get-AzSubscription -TenantId "00000000-0000-0000-0000-000000000000"

#Get all Tenants, Get the list of all tenants you have access to
Get-AzTenant


#Get Context
#This tells the current logged in tenant details
Get-AzContext

#If you logged into multiple tenants, and wanted to find all of them
Get-AzContext -ListAvailable

#Set a Context
#Sets the tenant, subscription, and environment for cmdlets to use in the current session.

Set-AzContext -Subscription "xxxx-xxxx-xxxx-xxxx"

Set-AzContext -Tenant “xxxx-xxxx-xxxx-xxxx” -Subscription "xxxx-xxxx-xxxx-xxxx"

#Clear Context
#Remove all Azure credentials, account, and subscription information.
Clear-AzContext -Force

#Create a New VM
New-AzVM -Name TestVm -Credential (Get-Credential)

#Create an Azure VM in a particular subscription
#Get available subscriptions and select one

Get-AzSubscription
Set-AzContext -Subscription "xxxxxxxxxxxxxxxxxxx"

#Now create a VM in that subscription
New-AzVM -Name TestVM -Credential (Get-Credential)


