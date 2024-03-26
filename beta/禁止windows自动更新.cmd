sc config wuauserv start= DISABLED
sc config BITS start= DISABLED
sc config DoSvc start= DISABLED
sc config uhssvc start= DISABLED
sc config UsoSvc start= DISABLED


schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Policy Install" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Resume On Boot" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_Display" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_ReadyToReboot" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Refresh Settings" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\WindowsUpdate\sih" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\WindowsUpdate\sihboot" /DISABLE
schtasks /change /f /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE
