#Installing PowerShell on Linux
#Install an Ubuntu 18.04 LTS VM on Azure
#Create a Ubuntu 18.04 VM

#Connect to ubuntu VM
ssh -i .\ubuntu18_key.pem azureuser@Public IP

#Installation via Package Repository
#PowerShell for Linux is published to package repositories for easy installation and updates.
#Execute the following commands

#Update the list of packages
sudo apt-get update

#Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common

#Download the Microsoft repository GPG keys

Ubuntu 20.04
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
 
Ubuntu 18.04 
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

#Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb

#Update the list of packages after we added packages.microsoft.com
sudo apt-get update

#Install PowerShell
sudo apt-get install -y powershell

#Start PowerShell
pwsh


