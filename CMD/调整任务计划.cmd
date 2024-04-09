schtasks /change /TN "\Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319" /DISABLE
schtasks /change /TN "\Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64" /DISABLE
schtasks /change /TN "\Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 64 Critical" /DISABLE
schtasks /change /TN "\Microsoft\Windows\.NET Framework\.NET Framework NGEN v4.0.30319 Critical" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Active Directory Rights Management Services Client\AD RMS Rights Policy Template Management (Automated)" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Active Directory Rights Management Services Client\AD RMS Rights Policy Template Management (Manual)" /DISABLE
schtasks /change /TN "\Microsoft\Windows\AppID\EDP Policy Manager" /Disable
schtasks /change /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\AitAgent" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\MareBackup" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser Exp" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Application Experience\SdbinstMergeDbTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ApplicationData\appuriverifierdaily" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ApplicationData\appuriverifierinstall" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ApplicationData\CleanupTemporaryState" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Bluetooth\UninstallDeviceTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\BrokerInfrastructure\BgTaskRegistrationMaintenanceTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\AikCertEnrollTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\CryptoPolicyTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\KeyPreGenTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\SystemTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /Disable
schtasks /change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Chkdsk\ProactiveScan" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Chkdsk\SyspartRepair" /DISABLE
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\HypervisorFlightingTask"
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
schtasks /delete /f /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
schtasks /change /TN "\Microsoft\Windows\Data Integrity Scan\Data Integrity Scan for Crash Recovery" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleCommand" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceAccountChange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceLocationRightsChange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePeriodic24" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePolicyChange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceSettingChange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterUserDevice" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Diagnosis\UnexpectedCodepath" /DISABLE
schtasks /change /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup" /DISABLE
schtasks /delete /f /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
schtasks /delete /f /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver"
schtasks /change /TN "\Microsoft\Windows\DiskFootprint\Diagnostics"  /DISABLE
schtasks /change /TN "\Microsoft\Windows\DiskFootprint\StorageSense"  /DISABLE
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Device Setup\Metadata Refresh" /DISABLE
schtasks /delete /f /TN "\Microsoft\Windows\Device Setup\Metadata Refresh"
schtasks /change /TN "\Microsoft\Windows\DUSM\dusmtask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\EDP\EDP App Launch Task" /DISABLE
schtasks /change /TN "\Microsoft\Windows\EDP\EDP Auth Task" /DISABLE
schtasks /change /TN "\Microsoft\Windows\EDP\EDP Inaccessible Credentials Task" /DISABLE
schtasks /change /TN "\Microsoft\Windows\EDP\StorageCardEncryption Task" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ExploitGuard\ExploitGuard MDM policy Refresh" /DISABLE
schtasks /change /TN "\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate"  /DISABLE
schtasks /change /TN "\Microsoft\Windows\ErrorDetails\ErrorDetailsUpdate"  /DISABLE
schtasks /change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE
schtasks /change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /Disable
schtasks /change /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /DISABLE
schtasks /change /TN "\Microsoft\Windows\LanguageComponentsInstaller\Installation" /DISABLE
schtasks /change /TN "\Microsoft\Windows\License Manager\TempSignedLicenseExchange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Location\Notifications" /Disable
schtasks /change /TN "\Microsoft\Windows\Location\WindowsActionDialog" /Disable
schtasks /change /TN "\Microsoft\Windows\Maintenance\WinSAT" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Maps\MapsToastTask" /Disable
schtasks /change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /Disable
schtasks /change /TN "\Microsoft\Windows\Management\Provisioning\Cellular" /Disable
schtasks /change /TN "\Microsoft\Windows\Management\Provisioning\Logon" /Disable
schtasks /change /TN "\Microsoft\Windows\Media Center\ActivateWindowsSearch" /DISABLE 
schtasks /change /TN "\Microsoft\Windows\Media Center\ConfigureInternetTimeService" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\DispatchRecoveryTasks" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\ehDRMInit" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\InstallPlayReady" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\mcupdate" /DISABLE 
schtasks /change /TN "\Microsoft\Windows\Media Center\MediaCenterRecoveryTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\ObjectStoreRecoveryTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\OCURActivate" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\OCURDiscovery" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PBDADiscovery" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW1" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW2" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PeriodicScanRetry" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PvrRecoveryTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\PvrScheduleTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\RecordingRestart" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\RegisterSearch" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\ReindexSearchRoot" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\SqlLiteRecoveryTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Media Center\UpdateRecordPath" /DISABLE
schtasks /change /TN "\Microsoft\Windows\MUI\LPRemove" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Multimedia\SystemSoundsService" /Disable
schtasks /change /TN "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" /DISABLE
schtasks /change /TN "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" /DISABLE
schtasks /change /TN "\Microsoft\Windows\MemoryDiagnostic\CorruptionDetector" /DISABLE
schtasks /change /TN "\Microsoft\Windows\MemoryDiagnostic\DecompressionFailureDetector" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser" /DISABLE
schtasks /change /TN "\Microsoft\Windows\NetCfg\BindingWorkItemQueueHandler" /Disable
schtasks /delete /f /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
schtasks /change /TN "\Microsoft\Windows\Offline Files\Background Synchronization" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Offline Files\Logon Synchronization" /DISABLE
schtasks /change /TN "\Microsoft\Windows\PLA\新的数据收集器集" /DISABLE
schtasks /change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /DISABLE
rem schtasks /change /TN "\Microsoft\Windows\PI\Secure-Boot-Update" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Plug and Play\Device Install Group Policy" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Plug and Play\Device Install Reboot Required" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Plug and Play\Sysprep Generalize Drivers" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Printing\EduPrintProv" /DISABLE
schtasks /change /TN "\Microsoft\Windows\PushToInstall\Registration" /DISABLE
schtasks /change /TN "\Microsoft\Windows\RAC\RacTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Ras\MobilityManager" /DISABLE
schtasks /change /TN "\Microsoft\Windows\RecoveryEnvironment\VerifyWinRE" /DISABLE
schtasks /change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\RemovalTools\MRT_HB" /DISABLE
schtasks /change /TN "\Microsoft\Windows\RetailDemo\CleanupOfflineContent" /DISABLE
rem schtasks /change /TN "\Microsoft\Windows\SettingSync\BackgroundUploadTask" /Disable
rem schtasks /change /TN "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /Disable
rem schtasks /change /TN "\Microsoft\Windows\Setup\SetupCleanupTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Shell\CreateObjectTask" /ENABLE
schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyUpload" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE
rem schtasks /change /TN "\Microsoft\Windows\SkyDrive\Idle Sync Maintenance Task" /Disable
rem schtasks /change /TN "\Microsoft\Windows\SkyDrive\Routine Maintenance Task" /Disable
rem schtasks /change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /Disable
rem schtasks /change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /Disable
rem schtasks /change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /Disable
schtasks /change /TN "\Microsoft\Windows\SpacePort\SpaceAgentTask" /Disable
schtasks /change /TN "\Microsoft\Windows\SpacePort\SpaceManagerTask" /Disable
schtasks /change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /Disable
schtasks /change /TN "\Microsoft\Windows\Sysmain\ResPriStaticDbSync" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\SystemRestore\SR" /DISABLE
schtasks /change /TN "\Microsoft\Windows\TextServicesFramework\MsCtfMonitor" /DISABLE
schtasks /change /TN "\Microsoft\Windows\TPM\Tpm-HASCertRetr" /Disable
schtasks /change /TN "\Microsoft\Windows\TPM\Tpm-Maintenance" /Disable
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Policy Install"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Resume On Boot"
schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan Static Task"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_Display"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker_ReadyToReboot"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
rem schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Refresh Settings"
schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\Report policies"
schtasks /delete /f /TN "\Microsoft\Windows\UpdateOrchestrator\USO_UxBroker"
schtasks /delete /f /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation"
schtasks /change /TN "\Microsoft\Windows\UPnP\UPnPHostConfig" /DISABLE
schtasks /change /TN "\Microsoft\Windows\User Profile Service\HiveUploadTask" /Disable
schtasks /change /TN "\Microsoft\Windows\WaaSMedic\PerformRemediation" /Disable
schtasks /change /TN "\Microsoft\Windows\WCM\WiFiTask" /Disable
schtasks /change /TN "\Microsoft\Windows\WDI\ResolutionHost" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Wininet\CacheTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\WindowsBackup\ConfigNotification" /DISABLE
schtasks /delete /f /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
schtasks /change /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /DISABLE
schtasks /change /TN "\Microsoft\Windows\WOF\WIM-Hash-Management" /DISABLE
schtasks /change /TN "\Microsoft\Windows\WOF\WIM-Hash-Validation" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /Disable
schtasks /change /TN "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /Disable
schtasks /change /TN "\Microsoft\Windows\Workplace Join\Automatic-Device-Join" /Disable
rem schtasks /delete /f /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
rem schtasks /delete /f /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
rem schtasks /delete /f /TN "\Microsoft\Windows\WindowsUpdate\sih"
rem schtasks /delete /f /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
rem schtasks /delete /f /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
rem schtasks /delete /f /TN "\Microsoft\Windows Defender\MP Scheduled Scan"
rem schtasks /delete /f /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance"
rem schtasks /delete /f /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup"
rem schtasks /delete /f /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
rem schtasks /delete /f /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification"
schtasks /change /TN "\Microsoft\Windows\WS\Badge Update" /Disable
schtasks /change /TN "\Microsoft\Windows\WS\Sync Licenses"
schtasks /change /TN "\Microsoft\Windows\WS\WSRefreshBannedAppsListTask" /Disable
schtasks /change /TN "\Microsoft\Windows\WS\WSTask" /Disable
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack" /DISABLE
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn"  /DISABLE
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /DISABLE
schtasks /change /TN "\Microsoft\Office\Office ClickToRun Service Monitor" /DISABLE
schtasks /change /TN "\Microsoft\Office\Office Automatic Updates" /DISABLE
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /DISABLE
schtasks /Change /TN "\Microsoft\Office\OfficeTelemetry\OfficeTelemetryAgentLogOn2016" /Disable
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /DISABLE
schtasks /change /TN "\User_Feed_Synchronization-{D8B1424E-3CC8-4325-927B-8F9A930247AF}" /DISABLE
schtasks /change /TN "\User_Feed_Synchronization-{6DF692D3-0523-4E8C-898C-B4FEEA9BAA71}" /DISABLE
schtasks /change /TN "\User_Feed_Synchronization-{514683FC-1A07-4B3E-A871-61612233821B}" /DISABLE
schtasks /change /TN "\User_Feed_Synchronization-{F70AD09E-71DF-441E-B9FA-9F1576EE10E6}" /DISABLE
schtasks /change /TN "\GoogleUpdateTaskMachineUA" /DISABLE 
schtasks /change /TN "\GoogleUpdateTaskMachineCore" /DISABLE
schtasks /change /TN "\AdobeAAMUpdater-1.0-%computername%-%username%"  /DISABLE
schtasks /change /TN "\Adobe Flash Player Updater" /DISABLE
schtasks /change /TN "\Microsoft\XblGameSave\XblGameSaveTask" /DISABLE
schtasks /change /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon" /DISABLE
REM The stubborn task Microsoft\Windows\SettingSync\BackgroundUploadTask can be Disabled using a simple bit change.
REM Please note that the key changes for each machine!! I have explained how to disable it in a later post.
schtasks /change /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask" /DISABLE
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Chkdsk\SyspartRepair" /DISABLE
schtasks /change /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /DISABLE
schtasks /change /TN "\MicrosoftEdgeUpdateTaskMachineCore" /DISABLE
schtasks /change /TN "\MicrosoftEdgeUpdateTaskMachineUA" /DISABLE

REM Delete telemetry SCHTASKS
  SCHTASKS /Delete /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\Office ClickToRun Service Monitor" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetry\AgentFallBack2016" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetry\OfficeTelemetryAgentLogOn2016" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetry\OfficeTelemetryAgentLogOn2016" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /F
  SCHTASKS /Delete /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Application Experience\AitAgent" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Autochk\Proxy" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\DiskFootprint\Diagnostics" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Maintenance\WinSAT" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\ActivateWindowsSearch" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\ConfigureInternetTimeService" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\DispatchRecoveryTasks" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\ehDRMInit" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\InstallPlayReady" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\mcupdate" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\MediaCenterRecoveryTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\ObjectStoreRecoveryTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\OCURActivate" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\OCURDiscovery" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\PBDADiscovery" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW1" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\PBDADiscoveryW2" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\PvrRecoveryTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\RegisterSearch" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\PvrScheduleTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\ReindexSearchRoot" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\SqlLiteRecoveryTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Media Center\UpdateRecordPath" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Shell\FamilySafetyUpload" /F
rem  SCHTASKS /Delete /TN "\Microsoft\Windows\PI\Sqm-Tasks" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\ApplicationExperience\Microsoft Compatibility Appraiser" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\ApplicationExperience\ProgramDataUpdater" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\ApplicationExperience\StartupAppTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement\Consolidator" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement\KernelCeipTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Customer Experience Improvement\UsbCeip" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Location\Notifications" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Location\WindowsActionDialog" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Maps\MapsToastTask" /F
  SCHTASKS /Delete /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /F
