<#
            Note    : 2016-05-03
            Author  : Stanislav Galchonkov
            Website : http://wintech.sgal.info
            Linkedin: https://ua.linkedin.com/in/stanislav-galchonkov-aa560042/         
                                                                  
Following PowerShell script allows to change write caching policy (enable or disable) for multiple disk devices.
 I have not found ready to go PowerShell cmdlet from Microsoft or MSFT Disk property
which allowed to change write-caching policy for disks in easy way without manual human operation clicking
with mouse in device/or disk manager. Just assume how it is convinient for multiple disks.
At the same time Microsoft has developed command line utility called dskcache.exe and 
utility was sucessfully tested with Windows Server 2000-2016. PowerShell script will use this utility.
                                                    
Prerequsites:

1. Download dskcache.exe utility from
https://support.microsoft.com/kb/811392 (Product: Windows 2000, Platform x86)
2. Unpack and install it into the same file directory as PowerShell script ChangeWriteCaching.ps1
3. Local Administrator rights for local and remote servers.
4. Enabled PowerShell remoting. For Windows 2012+ Windows PowerShell remoting is enabled by default. 
For earlier Windows versions you might have it disabled check URL:
https://technet.microsoft.com/en-us/magazine/ff700227.aspx

Script usage option 1: Enable write caching on the Disk 1, Disk 2, Disk 3, ..., Disk 14
.\ChangeWriteCaching.ps1 -Disks (1..14) -WriteCache $true

Script usage option 2: Disable write caching on the Disk 1, Disk 2, Disk 6, Disk 10, Disk 15
.\ChangeWriteCaching.ps1 -Disks (1,2,6,10,15) -WriteCache $false
            
Change log:
11/26/2015: Initial release
  
#>

[CmdletBinding()]
Param(
[Parameter(Mandatory=$True)]
[ValidateNotNull()]
[Array]$Disks,

[Parameter(Mandatory=$True)]
[ValidateNotNull()]
[boolean]$WriteCache
)

$runStart = [DateTime]::Now

# Set dskcache.exe utility flag
if ($WriteCache) {$flag="+"} else {$flag="-"}

if (!(Test-Path ".\dskcache.exe")) {
    Write-Host ERROR: dskcache.exe not found. -ForegroundColor Red
    Write-Host Download it from https://support.microsoft.com/kb/811392
    Write-Host Put it in the same directory as this script.
    exit
}


$Disk=Get-WmiObject Win32_DiskDrive
    foreach ($DiskN in $Disks)
      {
        # Check if required disk available otherwise skip changes
        if (!($Disk.Index -contains $DiskN)) {Write-Host Disk $DiskN is not available at this time -ForegroundColor Yellow}

        else
        {

        # Get Diskname and Disk serial number
        $DiskName=($disk | where Index -eq $diskN).Caption
        $DiskSN=($disk | where Index -eq $diskN).SerialNumber
        Write-Host "Changing write caching for" ($DiskName+" - SN:"+$DiskSN) "- DiskNumber:" $DiskN -ForegroundColor Green

        Start-Process -FilePath ".\dskcache.exe" -ArgumentList "$($flag)w $($flag)p PhysicalDrive$($DiskN)" -WindowStyle Hidden
       }
        }