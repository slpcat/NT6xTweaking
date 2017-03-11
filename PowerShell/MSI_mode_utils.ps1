<#
.SYNOPSIS
MSI-mode utility

.DESCRIPTION
Main purpose of this script is turning on MSI-mode for all PCI devices in bulk. Script offers four modes which can be selected through following command line arguments:
'on' - turning MSI-mode on;
'off' - turning MSI-mode off;
'reg' - printing reg-file for backup purposes (to save text to reg-file use standard redirection or piplining to comandlet Out-File);
- started without command line argument script prints devices capable for MSI-mode.

.INPUTS
None. You cannot pipe objects to MSI_mode_utils.ps1.

.OUTPUTS
Script prints text which can be redirected to any text file by means of either standard redirection (>) or pipilining to comandlet Out-File.

.EXAMPLE
PS C:\Tools> .\MSI_mode_utils.ps1 'on'

.EXAMPLE
PS C:\Tools> .\MSI_mode_utils.ps1 'off'

.EXAMPLE
PS C:\Tools> .\MSI_mode_utils.ps1 'reg' > c:\tools\msi_mode_backup.reg

.LINK
http://forums.guru3d.com/showthread.php?t=378044
#>

#requires -version 2

[hashtable]$dev_descr_dict = @{}
[hashtable]$dev_irqman_dict = @{}
[hashtable]$dev_msiprops_dict = @{}
[hashtable]$dev_msisupported_dict = @{}

# enumerate all HW IDs - subkeys of hklm\system\CurrentControlSet\Enum\PCI

[Microsoft.Win32.RegistryKey]$pci_rk = gi registry::hklm\system\CurrentControlSet\Enum\PCI -ErrorAction Stop
try {
    foreach($id in $pci_rk.GetSubKeyNames()) {    
        [Microsoft.Win32.RegistryKey]$id_rk = $null
        try {
            $id_rk = $pci_rk.OpenSubKey($id)
            if(!$id_rk) { continue }

            # enumerate all devices - subkeys of HW ID

            foreach($dev in $id_rk.GetSubKeyNames()) {    
                [Microsoft.Win32.RegistryKey]$dev_rk = $null
                try {
                    $dev_rk = $id_rk.OpenSubKey($dev)
                    if(!$dev_rk) { continue }
                    # skip devices without 'Device Parameters' and 'Device Parameters\Interrupt Management' subkeys
                    [Microsoft.Win32.RegistryKey]$dev_params_rk = $dev_rk.OpenSubKey('Device Parameters')
                    if(!$dev_params_rk) { continue }
                    [Microsoft.Win32.RegistryKey]$irq_management_rk = $dev_params_rk.OpenSubKey('Interrupt Management', $true)
                    $dev_params_rk.Close(); $dev_params_rk = $null
                    if(!$irq_management_rk) { continue }
                    [string]$devkey = $id+'\'+$dev
                    # store device`s description
                    $dev_descr_dict[$devkey] = $dev_rk.GetValue('DeviceDesc', $dev)
                    # store device`s 'Interrupt Management' registry key
                    $dev_irqman_dict[$devkey] = $irq_management_rk
                    # store device`s 'MessageSignaledInterruptProperties' registry key
                    [Microsoft.Win32.RegistryKey]$dev_msiprops_rk = $irq_management_rk.OpenSubKey('MessageSignaledInterruptProperties', $true)
                    $dev_msiprops_dict[$devkey] = $dev_msiprops_rk
                    # store device`s 'MSISupported' registry value
                    if($dev_msiprops_rk) { $dev_msisupported_dict[$devkey] = $dev_msiprops_rk.GetValue('MSISupported') }
                    else { $dev_msisupported_dict[$devkey] = $null }
                }
                finally { if($dev_rk) { $dev_rk.Close(); $dev_rk = $null } }
            }
        }
        finally { if($id_rk) { $id_rk.Close(); $id_rk = $null } }
    }

    if($args.Count -eq 0) {
        #print devices` info

        filter print_devices_with_MSI_turned_on {
            begin { '--------------------- Devices with MSI-mode turned on ---------------------' }
            process {
                if($dev_msiprops_dict[$_] -and $dev_msisupported_dict[$_] -eq 1) { $dev_descr_dict[$_] }
            }
        }

        filter print_devices_with_MSI_turned_off {
            begin { '--------------------- Devices with MSI-mode turned off ---------------------' }
            process {
                if($dev_msiprops_dict[$_] -and $dev_msisupported_dict[$_] -eq 0) { $dev_descr_dict[$_] }
            }
        }

        filter print_devices_without_MSI {
            begin { '--------------------- Devices with not configured MSI-mode ---------------------' }
            process {
                if(!$dev_msiprops_dict[$_] -or $dev_msisupported_dict[$_] -eq $null) { $dev_descr_dict[$_] }
            }
        }

        $dev_descr_dict.Keys | print_devices_with_MSI_turned_on
        $dev_descr_dict.Keys | print_devices_with_MSI_turned_off
        $dev_descr_dict.Keys | print_devices_without_MSI
    }
    elseif($args[0] -eq 'off') {
        # turning MSI-mode off

        filter turn_MSI_off {
            begin { '--------------------- Turning MSI-mode off ---------------------' }
            process {
                if($dev_msiprops_dict[$_] -and $dev_msisupported_dict[$_] -eq 1) {
                    $dev_descr_dict[$_]
                    [Microsoft.Win32.RegistryKey]$rk = $dev_msiprops_dict[$_]
                    $rk.SetValue('MSISupported', 0, 'DWord')
                    $dev_msisupported_dict[$_] = 0
                }
            }
        }

        $dev_descr_dict.Keys | turn_MSI_off
    }
    elseif($args[0] -eq 'on') {
        # turning MSI-mode on

        filter turn_MSI_on {
            begin { '--------------------- Turning MSI-mode on ---------------------' }
            process {
                if(!$dev_msiprops_dict[$_]) {
                    $dev_descr_dict[$_]
                    [Microsoft.Win32.RegistryKey]$rk = $dev_irqman_dict[$_]
                    $rk = $rk.CreateSubKey('MessageSignaledInterruptProperties')
                    $dev_msiprops_dict[$_] = $rk
                    $rk.SetValue('MSISupported', 1, 'DWord')
                    $dev_msisupported_dict[$_] = 1
                }
                elseif($dev_msisupported_dict[$_] -ne 1) {
                    $dev_descr_dict[$_]
                    [Microsoft.Win32.RegistryKey]$rk = $dev_msiprops_dict[$_]
                    $rk.SetValue('MSISupported', 1, 'DWord')
                    $dev_msisupported_dict[$_] = 1
                }
            }
        }

        $dev_descr_dict.Keys | turn_MSI_on
    }
    elseif($args[0] -eq 'reg') {
        # print backup reg-file content

        filter print_MSI_registry {
            begin { 'Windows Registry Editor Version 5.00'; '' }
            process {
                if(!$dev_msiprops_dict[$_]) {
                    '[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\PCI\{0}\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties]' -f $_
                }
                elseif($dev_msisupported_dict[$_] -eq $null) {
                    '[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\PCI\{0}\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties]' -f $_
                    '"MSISupported"=-'
                }
                else {
                    '[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\PCI\{0}\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties]' -f $_
                    '"MSISupported"=dword:0000000{0}' -f $dev_msisupported_dict[$_]
                }
                ''
            }
        }

        $dev_descr_dict.Keys | print_MSI_registry
    }
}
finally {
# clenaup
    foreach($rk in $dev_irqman_dict.Values) { $rk.Close() }
    foreach($rk in $dev_msiprops_dict.Values) { if($rk) { $rk.Close() } }
    $dev_irqman_dict.Clear(); $dev_irqman_dict = $null
    $dev_msiprops_dict.Clear(); $dev_msiprops_dict = $null
    $dev_descr_dict.Clear(); $dev_descr_dict = $null
    $dev_msisupported_dict.Clear(); $dev_msisupported_dict = $null

    $pci_rk.Close(); $pci_rk = $null
}