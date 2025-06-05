@echo off
cls
setlocal enabledelayedexpansion
mkdir "%tmp%\SW" >nul 2>&1


:: Check if ran as Admin
net session >nul 2>&1 || (echo. & echo Run Script As Admin & echo. & pause & exit)


:# General Power
echo.
echo 1/5 - General Settings
powercfg /change standby-timeout-ac 0 >nul 2>&1
powercfg /change standby-timeout-dc 0 >nul 2>&1
powercfg /change monitor-timeout-ac 0 >nul 2>&1
powercfg /change monitor-timeout-dc 0 >nul 2>&1
powercfg /hibernate off >nul 2>&1
powercfg /change hibernate-timeout-ac 0 >nul 2>&1
powercfg /change hibernate-timeout-dc 0 >nul 2>&1
powercfg /change standby-hibernate-ac off >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v PowerThrottlingOff /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EnergyEstimationEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v EventProcessorEnabled /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v HibernateEnabled /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v IgnoreCsComplianceCheck /t REG_DWORD /d 1 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v DisableMediaSenseEventLog /t REG_DWORD /d 1 /f >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\ModernSleep" /v ModernSleepEnabled /t REG_DWORD /d 0 /f >nul 2>&1
::Enable High-Performance
powercfg /s SCHEME_MIN >nul 2>&1
::Diable Core Parking
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR CPMINCORES 100 >nul 2>&1
powercfg -setacvalueindex SCHEME_MIN SUB_PROCESSOR CPMAXCORES 100 >nul 2>&1
powercfg -setactive SCHEME_MIN >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb" /v Attributes /t REG_DWORD /d 0 /f >nul 2>&1




:# Network Interfaces
echo 2/5 - Network Interfaces
set "RegPath=HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}"
for /F "tokens=1*" %%A in ('reg query "%RegPath%" ^| findstr "000"') do (

:: Disable - Power Saving
reg add %%A /t REG_SZ /v "*EEE" /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v "*WakeOnMagicPacket" /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v "*WakeOnPattern" /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v "*SelectiveSuspend" /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v "*ModernStandbyWoLMagicPacket" /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v EnablePME /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v EnableExtraPowerSaving /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v AdvancedEEE /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v AutoPowerSaveModeEnabled /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v EnableEDT /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v EnableGreenEthernet /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v EEELinkAdvertisement /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v ENPWMode /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v GPPSW /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v PowerSavingMode /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v ULPMode /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v HumanProximityDetection /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v S5WakeOnLan /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v MIMOPowerSaveMode /d 3 /f >nul 2>&1

:: USB SF Mode
reg add %%A /t REG_SZ /v UsbSwFast /d 1 /f >nul 2>&1

:: USB Switch Mode - 3
reg add %%A /t REG_SZ /v ForcedUsbMode /d 8 /f >nul 2>&1

::BeamCap - TxRx and HT Beam TxRx
reg add %%A /t REG_SZ /v BeamformCap /d 54 /f >nul 2>&1

:: Disable - Reduce network speed to 10/100
reg add %%A /t REG_SZ /v GigaLite /d 0 /f >nul 2>&1

:: Disable - Logging of Adapter State
reg add %%A /t REG_SZ /v LogDisconnectEvent /d 0 /f >nul 2>&1
reg add %%A /t REG_SZ /v LogLinkStateEvent /d 16 /f >nul 2>&1
)



:# USB Devices
echo 3/5 - USB Devices
setlocal enabledelayedexpansion
set "baseKey1=HKLM\SYSTEM\ControlSet001\Enum\USB"
set "baseKey2=HKLM\SYSTEM\CurrentControlSet\Enum\USB"
set "searchValues=EnableSelectiveSuspend DeviceSelectiveSuspended EnhancedPowerManagementEnabled IdleInWorkingState SelectiveSuspendEnabled"
for %%b in ("%baseKey1%" "%baseKey2%") do (
    for /f "tokens=*" %%k in ('reg query "%%~b" /s /f "Device Parameters" /k') do (
        if "%%k" neq "" (
            for %%v in (%searchValues%) do (
                reg query "%%k" /v %%v >nul 2>&1
                if !errorlevel! == 0 reg add "%%k" /v %%v /t REG_DWORD /d 0 /f >nul 2>&1

                reg query "%%k\WDF" >nul 2>&1
                if !errorlevel! == 0 (
                    reg query "%%k\WDF" /v %%v >nul 2>&1
                    if !errorlevel! == 0 reg add "%%k\WDF" /v %%v /t REG_DWORD /d 0 /f >nul 2>&1
                )
            )
        )
    )
)
endlocal


:# Keep NIC on, when DNS/Internet drops
echo 4/5 - Keep NICs on
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v fMinimizeConnections /t REG_DWORD /d 0 /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v fSoftDisconnectConnections /t REG_DWORD /d 0 /f >nul 2>&1



:# NICs - [Disable] Allow the computer to turn off this device to save power
::
:: ** Could not make this work in batch
:: ** Works on 10, but not 11
::
echo 5/5 - Disable - Allow the computer to turn off this device to save power
setlocal
set "filePath=%tmp%\SW\power.ps1"
echo $adapters = Get-WmiObject Win32_NetworkAdapter ^| Where-Object { $_.NetEnabled -eq $true } > "%filePath%"
echo foreach ($adapter in $adapters) { >> "%filePath%"
echo     $pnpInstanceId = $adapter.PNPDeviceID >> "%filePath%"
echo     $powerMgtObj = Get-WmiObject -Namespace root\wmi -Class MSPower_DeviceEnable ^| Where-Object { $_.InstanceName -like "*$pnpInstanceId*" } 2^> $null >> "%filePath%"
echo     if ($powerMgtObj) { >> "%filePath%"
echo         $powerMgtObj.Enable = $False >> "%filePath%"
echo         $powerMgtObj.Put() ^> ^$null 2^>^&1 >> "%filePath%"
echo     } >> "%filePath%"
echo } >> "%filePath%"
PowerShell -ExecutionPolicy Bypass -File "%TMP%\SW\power.ps1"
endlocal



echo.
echo.
echo Reboot to Apply Changes
echo.
echo.
pause
