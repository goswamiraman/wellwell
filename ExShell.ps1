#$UserCredential = Get-Credential

$user = "raman.goswam@axicorp.com"
$password = "AF12passrg"
$secureStringPwd = $password | ConvertTo-SecureString -AsPlainText -Force 
$UserCredential = New-Object System.Management.Automation.PSCredential -ArgumentList $user, $secureStringPwd


$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session -AllowClobber
import-module AzureRM
Connect-MsolService -Credential $UserCredential