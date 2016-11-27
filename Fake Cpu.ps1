#Fake CPU Properties Just When You See it in Computer properties 
#Run it as Administrator 
#Part of IHACK Scripting Tutorial

#Coded By Karem Ali

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(

   [Security.Principal.WindowsBuiltInRole] “Administrator”))

{

 Write-Warning “You do not have Administrator rights to run this script!`nPlease re-run this script as an Administrator!”

 Pause
 Break

}

$Path = "HKLM:\HARDWARE\DESCRIPTION\System\CentralProcessor\0"
echo " Insert what you want to display in Processor ceil "
[string]$Type = read-host "Enter"

if(Test-Path $Path)
{
Set-ItemProperty -Path $Path -Name ProcessorNameString -value $Type
echo " Properties Has been Changed to :   $Type "
Pause
}