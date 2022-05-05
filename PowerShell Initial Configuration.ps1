#Lab- Initial PowerShell Configuration

#Allow PowerShell to execute scripts
Set-ExecutionPolicy Unrestricted -force


#Configure PowerShell to use TLS 1.2 only
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#Install Nuget package Manager
Install-PackageProvider -Name NuGet -Force

#Install PowerShellGet
Install-Module -Name PowerShellGet -Force

#Trusting the PowerShell Gallery

#First verify the Repositories configured in your computer
Get-PSRepository

#Set the installation policy for a repository as trusted
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
