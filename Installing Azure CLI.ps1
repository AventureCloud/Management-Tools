#Lab - Installing Azure CLI
#Installing Azure CLI on Windows
https://aka.ms/installazurecliwindows

#Using Windows PowerShell
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi

#How to find if AZ CLI is already Installed?
#In Windows Command prompt or Windows PowerShell
az --version

#Connect to Azure
az login

#Create a VM
#Get the subscriptions available
az account list --output table 

#Select a Subscription
az account set --subscription "Free Trial"

#Create a Resource Group
az group create --name rg-demo2 --location centralus
az vm create `
    --resource-group rg-demo2 `
    --name vm-demo2 `
    --image Win2019Datacenter `
    --public-ip-sku Standard `
    --admin-username azureuser


