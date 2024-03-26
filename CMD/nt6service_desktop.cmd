cls

rem WINDOWS NT6.x  服务优化批处理文件 
rem @pause 

rem auto|DEMAND|DISABLED|delayed-auto
rem SERVICE_NAME: AeLookupSvc
rem DISPLAY_NAME: Application Experience

sc config AeLookupSvc start= DEMAND


rem SERVICE_NAME: ALG
rem DISPLAY_NAME: Application Layer Gateway Service

sc config ALG start= DISABLED

rem SERVICE_NAME: AppIDSvc
rem DISPLAY_NAME: Application Identity

sc config AppIDSvc start= DEMAND

sc config AJRouter start= DISABLED

rem SERVICE_NAME: Appinfo
rem DISPLAY_NAME: Application Information

sc config Appinfo start= DEMAND


rem SERVICE_NAME: AppMgmt
rem DISPLAY_NAME: Application Management

sc config AppMgmt start= DISABLED


rem SERVICE_NAME: AppReadiness
rem DISPLAY_NAME: App Readiness

sc config AppReadiness start= DEMAND

rem SERVICE_NAME: AppXSvc
rem DISPLAY_NAME: AppX Deployment Service (AppXSVC)

sc config AppXSvc start= AUTO

rem SERVICE_NAME: AudioEndpointBuilder
rem DISPLAY_NAME: Windows Audio Endpoint Builder

sc config AudioEndpointBuilder start= AUTO

rem SERVICE_NAME: Audiosrv
rem DISPLAY_NAME: Windows Audio

sc config Audiosrv start= AUTO

rem SERVICE_NAME: AxInstSV
rem DISPLAY_NAME: ActiveX Installer (AxInstSV)

sc config AxInstSV start= DEMAND


rem SERVICE_NAME: BDESVC
rem DISPLAY_NAME: BitLocker Drive Encryption Service

sc config BDESVC start= DEMAND

sc config beep start= DISABLED


rem SERVICE_NAME: BFE
rem DISPLAY_NAME: Base Filtering Engine

sc config BFE start= AUTO


rem SERVICE_NAME: BITS
rem DISPLAY_NAME: Background Intelligent Transfer Service

sc config BITS start= DEMAND


rem SERVICE_NAME: BrokerInfrastructure
rem DISPLAY_NAME: Background Tasks Infrastructure Service

sc config BrokerInfrastructure start= AUTO

rem SERVICE_NAME: Browser
rem DISPLAY_NAME: Computer Browser

sc config Browser start= AUTO

rem SERVICE_NAME: bthserv
rem DISPLAY_NAME: Bluetooth Support Service

sc config bthserv start= DEMAND
sc config BthHFSrv start= DEMAND
sc config BcastDVRUserService start= DISABLED
sc config BcastDVRUserService_5385b start= DISABLED

rem SERVICE_NAME: CertPropSvc
rem DISPLAY_NAME: Certificate Propagation

sc config CertPropSvc start= DEMAND

rem SERVICE_NAME: COMSysApp
rem DISPLAY_NAME: COM+ System Application

sc config COMSysApp start= DEMAND


rem SERVICE_NAME: CryptSvc
rem DISPLAY_NAME: Cryptographic Services

sc config CryptSvc start= AUTO

rem SERVICE_NAME: CscService
rem DISPLAY_NAME: Offline Files

sc config CscService start= DEMAND

rem SERVICE_NAME: DcomLaunch
rem DISPLAY_NAME: DCOM Server Process Launcher

sc config DcomLaunch start= AUTO

rem SERVICE_NAME: defragsvc
rem DISPLAY_NAME: Optimize drives

sc config defragsvc start= DEMAND

rem SERVICE_NAME: DeviceAssociationService
rem DISPLAY_NAME: Device Association Service

sc config DeviceAssociationService start= DEMAND

rem SERVICE_NAME: DeviceInstall
rem DISPLAY_NAME: Device Install Service

sc config DeviceInstall start= DEMAND

rem SERVICE_NAME: Dhcp
rem DISPLAY_NAME: DHCP Client

sc config Dhcp start= auto

rem SERVICE_NAME: Dnscache
rem DISPLAY_NAME: DNS Client

sc config Dnscache start= AUTO

sc config DoSvc start= DEMAND

rem SERVICE_NAME: dot3svc
rem DISPLAY_NAME: Wired AutoConfig

sc config dot3svc start= DEMAND


rem sc config SDRSVC start= DISABLED
rem SERVICE_NAME: DPS
rem DISPLAY_NAME: Diagnostic Policy Service

sc config DPS start= DISABLED

rem SERVICE_NAME: DsmSvc
rem DISPLAY_NAME: Device Setup Manager

sc config DsmSvc start= DEMAND

rem SERVICE_NAME: EapHost
rem DISPLAY_NAME: Extensible Authentication Protocol

sc config EapHost start= DEMAND

rem SERVICE_NAME: EFS
rem DISPLAY_NAME: Encrypting File System (EFS)

sc config EFS start= DEMAND

rem SERVICE_NAME: EventLog
rem DISPLAY_NAME: Windows Event Log

sc config EventLog start= AUTO

rem SERVICE_NAME: EventSystem
rem DISPLAY_NAME: COM+ Event System

sc config EventSystem start= AUTO

rem SERVICE_NAME: Fax
rem DISPLAY_NAME: Fax

sc config Fax start= DEMAND

rem SERVICE_NAME: fdPHost
rem DISPLAY_NAME: Function Discovery Provider Host

rem sc config fdPHost start= DISABLED

rem SERVICE_NAME: FDResPub
rem DISPLAY_NAME: Function Discovery Resource Publication

rem sc config FDResPub start= DISABLED

rem SERVICE_NAME: fhsvc
rem DISPLAY_NAME: File History Service

sc config fhsvc start= DISABLED

rem SERVICE_NAME: FontCache
rem DISPLAY_NAME: Windows Font Cache Service

sc config FontCache start= auto


rem SERVICE_NAME: gpsvc
rem DISPLAY_NAME: Group Policy Client

sc config gpsvc start= DEMAND

rem SERVICE_NAME: hidserv
rem DISPLAY_NAME: Human Interface Device Service

sc config hidserv start= DISABLED

rem SERVICE_NAME: hkmsvc
rem DISPLAY_NAME: Health Key and Certificate Management

sc config hkmsvc start= DEMAND

sc config HomeGroupListener start= DISABLED

rem SERVICE_NAME: HomeGroupProvider
rem DISPLAY_NAME: HomeGroup Provider

sc config HomeGroupProvider start= DISABLED


rem SERVICE_NAME: IEEtwCollectorService
rem DISPLAY_NAME: Internet Explorer ETW Collector Service

rem sc config IEEtwCollectorService start= DEMAND


rem SERVICE_NAME: IKEEXT
rem DISPLAY_NAME: IKE and AuthIP IPsec Keying Modules

sc config IKEEXT start= DISABLED


rem SERVICE_NAME: iphlpsvc
rem DISPLAY_NAME: IP Helper

sc config iphlpsvc start= DISABLED


rem SERVICE_NAME: KeyIso
rem DISPLAY_NAME: CNG Key Isolation

sc config KeyIso start= DEMAND


rem SERVICE_NAME: KMSServerService
rem DISPLAY_NAME: HEU_KMS_Service

sc config  KMS start= auto


rem SERVICE_NAME: KtmRm
rem DISPLAY_NAME: KtmRm for Distributed Transaction Coordinator

sc config KtmRm start= DEMAND

rem SERVICE_NAME: LanmanServer
rem DISPLAY_NAME: Server

sc config LanmanServer start= DISABLED


rem SERVICE_NAME: LanmanWorkstation
rem DISPLAY_NAME: Workstation

sc config LanmanWorkstation start= auto

rem SERVICE_NAME: lfsvc
rem DISPLAY_NAME: Windows Location Framework Service

sc config lfsvc start= DEMAND

rem SERVICE_NAME: lltdsvc
rem DISPLAY_NAME: Link-Layer Topology Discovery Mapper

sc config lltdsvc start= DEMAND

rem SERVICE_NAME: lmhosts
rem DISPLAY_NAME: TCP/IP NetBIOS Helper

sc config lmhosts start= DISABLED


rem SERVICE_NAME: LSM
rem DISPLAY_NAME: Local Session Manager

sc config LSM start= auto


rem SERVICE_NAME: MMCSS
rem DISPLAY_NAME: Multimedia Class Scheduler

sc config MMCSS start= DISABLED


rem SERVICE_NAME: MpsSvc
rem DISPLAY_NAME: Windows Firewall

sc config MpsSvc start= AUTO


rem SERVICE_NAME: MSDTC
rem DISPLAY_NAME: Distributed Transaction Coordinator

sc config MSDTC start= DISABLED

rem SERVICE_NAME: MSiSCSI
rem DISPLAY_NAME: Microsoft iSCSI Initiator Service

sc config MSiSCSI start= DEMAND


rem SERVICE_NAME: msiserver
rem DISPLAY_NAME: Windows Installer

sc config msiserver start= DEMAND


rem SERVICE_NAME: MsKeyboardFilter
rem DISPLAY_NAME: Microsoft Keyboard Filter

sc config MsKeyboardFilter start= DISABLED


rem SERVICE_NAME: napagent
rem DISPLAY_NAME: Network Access Protection Agent

sc config napagent start= DEMAND

rem SERVICE_NAME: NcaSvc
rem DISPLAY_NAME: Network Connectivity Assistant

sc config NcaSvc start= DEMAND

rem SERVICE_NAME: NcbService
rem DISPLAY_NAME: Network Connection Broker

sc config NcbService start= DEMAND


rem SERVICE_NAME: NcdAutoSetup
rem DISPLAY_NAME: Network Connected Devices Auto-Setup

sc config NcdAutoSetup start= DEMAND

rem SERVICE_NAME: Netlogon
rem DISPLAY_NAME: Netlogon

sc config Netlogon start= DEMAND


rem SERVICE_NAME: Netman
rem DISPLAY_NAME: Network Connections

sc config Netman start= DEMAND


rem SERVICE_NAME: netprofm
rem DISPLAY_NAME: Network List Service

sc config netprofm start= AUTO


rem SERVICE_NAME: NetTcpPortSharing
rem DISPLAY_NAME: Net.Tcp Port Sharing Service

rem sc config NetTcpPortSharing start= DISABLED


rem SERVICE_NAME: NlaSvc
rem DISPLAY_NAME: Network Location Awareness

sc config NlaSvc start= AUTO


rem SERVICE_NAME: nsi
rem DISPLAY_NAME: Network Store Interface Service

sc config nsi start= auto


rem SERVICE_NAME: ose
rem DISPLAY_NAME: Office  Source Engine

sc config ose start= DEMAND

rem SERVICE_NAME: p2pimsvc
rem DISPLAY_NAME: Peer Networking Identity Manager

sc config p2pimsvc start= DISABLED

rem SERVICE_NAME: p2psvc
rem DISPLAY_NAME: Peer Networking Grouping

sc config p2psvc start= DISABLED

rem SERVICE_NAME: PcaSvc
rem DISPLAY_NAME: Program Compatibility Assistant Service

sc config PcaSvc start= DISABLED

rem SERVICE_NAME: PeerDistSvc
rem DISPLAY_NAME: BranchCache

sc config PeerDistSvc start= DEMAND

rem SERVICE_NAME: pla
rem DISPLAY_NAME: Performance Logs & Alerts

sc config pla start= DEMAND

rem SERVICE_NAME: PlugPlay
rem DISPLAY_NAME: Plug and Play

sc config PlugPlay start= DEMAND

rem SERVICE_NAME: PNRPAutoReg
rem DISPLAY_NAME: PNRP Machine Name Publication Service

sc config PNRPAutoReg start= DEMAND

rem SERVICE_NAME: PNRPsvc
rem DISPLAY_NAME: Peer Name Resolution Protocol

sc config PNRPsvc start= DISABLED

rem SERVICE_NAME: PolicyAgent
rem DISPLAY_NAME: IPsec Policy Agent

sc config PolicyAgent start= DEMAND

rem SERVICE_NAME: Power
rem DISPLAY_NAME: Power

sc config Power start= auto

rem SERVICE_NAME: PrintNotify
rem DISPLAY_NAME: Printer Extensions and Notifications

sc config PrintNotify start= DEMAND

rem SERVICE_NAME: ProfSvc
rem DISPLAY_NAME: User Profile Service

sc config ProfSvc start= auto

rem SERVICE_NAME: QWAVE
rem DISPLAY_NAME: Quality Windows Audio Video Experience

sc config QWAVE start= DISABLED

rem SERVICE_NAME: RasAuto
rem DISPLAY_NAME: Remote Access Auto Connection Manager

sc config RasAuto start= DEMAND

rem SERVICE_NAME: RasMan
rem DISPLAY_NAME: Remote Access Connection Manager

sc config RasMan start= DEMAND

rem SERVICE_NAME: RemoteAccess
rem DISPLAY_NAME: Routing and Remote Access

sc config RemoteAccess start= DISABLED

rem SERVICE_NAME: RemoteRegistry
rem DISPLAY_NAME: Remote Registry

sc config RemoteRegistry start= DISABLED

rem SERVICE_NAME: RpcEptMapper
rem DISPLAY_NAME: RPC Endpoint Mapper

sc config RpcEptMapper start= auto

rem SERVICE_NAME: RpcLocator
rem DISPLAY_NAME: Remote Procedure Call (RPC) Locator

sc config RpcLocator start= DEMAND

rem SERVICE_NAME: RpcSs
rem DISPLAY_NAME: Remote Procedure Call (RPC)

sc config RpcSs start= auto

rem SERVICE_NAME: SamSs
rem DISPLAY_NAME: Security Accounts Manager

sc config SamSs start= auto

rem SERVICE_NAME: SCardSvr
rem DISPLAY_NAME: Smart Card

sc config SCardSvr start= DISABLED

rem SERVICE_NAME: ScDeviceEnum
rem DISPLAY_NAME: Smart Card Device Enumeration Service

sc config ScDeviceEnum start= DISABLED

rem SERVICE_NAME: Schedule
rem DISPLAY_NAME: Task Scheduler

rem sc config Schedule start= DISABLED

rem SERVICE_NAME: SCPolicySvc
rem DISPLAY_NAME: Smart Card Removal Policy

sc config SCPolicySvc start= DISABLED

rem SERVICE_NAME: seclogon
rem DISPLAY_NAME: Secondary Logon

sc config seclogon start= auto


rem SERVICE_NAME: SENS
rem DISPLAY_NAME: System Event Notification Service

sc config SENS start= auto

rem SERVICE_NAME: SensrSvc
rem DISPLAY_NAME: Sensor Monitoring Service

sc config SensrSvc start= DEMAND

rem SERVICE_NAME: SessionEnv
rem DISPLAY_NAME: Remote Desktop Configuration

sc config SessionEnv start= DEMAND


rem SERVICE_NAME: SharedAccess
rem DISPLAY_NAME: Internet Connection Sharing (ICS)

sc config SharedAccess start= DISABLED


rem SERVICE_NAME: ShellHWDetection
rem DISPLAY_NAME: Shell Hardware Detection

sc config ShellHWDetection start= DEMAND


rem SERVICE_NAME: smphost
rem DISPLAY_NAME: Microsoft Storage Spaces SMP

sc config smphost start= DEMAND


rem SERVICE_NAME: SNMPTRAP
rem DISPLAY_NAME: SNMP Trap

sc config SNMPTRAP start= DISABLED


rem SERVICE_NAME: Spooler
rem DISPLAY_NAME: Print Spooler

rem sc config Spooler start= DISABLED

rem SERVICE_NAME: sppsvc
rem DISPLAY_NAME: Software Protection

sc config sppsvc start= delayed-auto


rem SERVICE_NAME: SSDPSRV
rem DISPLAY_NAME: SSDP Discovery

sc config SSDPSRV start= DISABLED


rem SERVICE_NAME: SstpSvc
rem DISPLAY_NAME: Secure Socket Tunneling Protocol Service

sc config SstpSvc start= DISABLED


rem SERVICE_NAME: StiSvc
rem DISPLAY_NAME: Windows Image Acquisition (WIA)

sc config StiSvc start= DEMAND

rem SERVICE_NAME: StorSvc
rem DISPLAY_NAME: Storage Service

sc config StorSvc start= DEMAND

rem SERVICE_NAME: svsvc
rem DISPLAY_NAME: Spot Verifier

sc config svsvc start= DEMAND

rem SERVICE_NAME: swprv
rem DISPLAY_NAME: Microsoft Software Shadow Copy Provider

sc config swprv start= DEMAND

rem SERVICE_NAME: SysMain
rem DISPLAY_NAME: Superfetch

sc config SysMain start= auto


rem SERVICE_NAME: SystemEventsBroker
rem DISPLAY_NAME: System Events Broker

sc config SystemEventsBroker start= auto

rem SERVICE_NAME: TabletInputService
rem DISPLAY_NAME: Touch Keyboard and Handwriting Panel Service

sc config TabletInputService start= DEMAND

rem SERVICE_NAME: TapiSrv
rem DISPLAY_NAME: Telephony

sc config TapiSrv start= DEMAND

rem SERVICE_NAME: TermService
rem DISPLAY_NAME: Remote Desktop Services

sc config TermService start= DEMAND

rem SERVICE_NAME: Themes
rem DISPLAY_NAME: Themes

sc config Themes start= AUTO

rem SERVICE_NAME: THREADORDER
rem DISPLAY_NAME: Thread Ordering Server

sc config THREADORDER start= DEMAND

rem SERVICE_NAME: TimeBroker
rem DISPLAY_NAME: Time Broker

sc config TimeBroker start= DEMAND

rem SERVICE_NAME: TrkWks
rem DISPLAY_NAME: Distributed Link Tracking Client

sc config TrkWks start= DISABLED

rem SERVICE_NAME: TrustedInstaller
rem DISPLAY_NAME: Windows Modules Installer

sc config TrustedInstaller start= DEMAND

rem SERVICE_NAME: TunMirror
rem DISPLAY_NAME: TunMirror

sc config TunMirror start= DEMAND

rem SERVICE_NAME: UI0Detect
rem DISPLAY_NAME: Interactive Services Detection

sc config UI0Detect start= DEMAND

rem SERVICE_NAME: UmRdpService
rem DISPLAY_NAME: Remote Desktop Services UserMode Port Redirector

sc config UmRdpService start= DEMAND

rem SERVICE_NAME: upnphost
rem DISPLAY_NAME: UPnP Device Host

sc config upnphost start= DISABLED

rem SERVICE_NAME: VaultSvc
rem DISPLAY_NAME: Credential Manager

sc config VaultSvc start= DEMAND

rem SERVICE_NAME: vds
rem DISPLAY_NAME: Virtual Disk

sc config vds start= DEMAND

rem SERVICE_NAME: vmicguestinterface
rem DISPLAY_NAME: Hyper-V 来宾服务接口

sc config vmicguestinterface start= DEMAND

rem SERVICE_NAME: vmicheartbeat
rem DISPLAY_NAME: Hyper-V Heartbeat Service

sc config vmicheartbeat start= DEMAND

rem SERVICE_NAME: vmickvpexchange
rem DISPLAY_NAME: Hyper-V Data Exchange Service

sc config vmickvpexchange start= DEMAND

rem SERVICE_NAME: vmicrdv
rem DISPLAY_NAME: Hyper-V Remote Desktop Virtualization Service

sc config vmicrdv start= DEMAND

rem SERVICE_NAME: vmicshutdown
rem DISPLAY_NAME: Hyper-V Guest Shutdown Service

sc config vmicshutdown start= DEMAND

rem SERVICE_NAME: vmictimesync
rem DISPLAY_NAME: Hyper-V Time Synchronization Service

sc config vmictimesync start= DEMAND

rem SERVICE_NAME: vmicvss
rem DISPLAY_NAME: Hyper-V Volume Shadow Copy Requestor

sc config vmicvss start= DEMAND

rem SERVICE_NAME: VSS
rem DISPLAY_NAME: Volume Shadow Copy

sc config VSS start= DISABLED

rem SERVICE_NAME: W32Time
rem DISPLAY_NAME: Windows Time

sc config W32Time start= AUTO

rem SERVICE_NAME: wbengine
rem DISPLAY_NAME: Block Level Backup Engine Service

sc config wbengine start= DEMAND

rem SERVICE_NAME: WbioSrvc
rem DISPLAY_NAME: Windows Biometric Service

sc config WbioSrvc start= DEMAND

rem SERVICE_NAME: Wcmsvc
rem DISPLAY_NAME: Windows Connection Manager

sc config Wcmsvc start= auto

rem SERVICE_NAME: wcncsvc
rem DISPLAY_NAME: Windows Connect Now - Config Registrar

sc config wcncsvc start= auto

rem SERVICE_NAME: WcsPlugInService
rem DISPLAY_NAME: Windows Color System

sc config WcsPlugInService start= DEMAND

rem SERVICE_NAME: WdiServiceHost
rem DISPLAY_NAME: Diagnostic Service Host

sc config WdiServiceHost start= DISABLED

rem SERVICE_NAME: WdiSystemHost
rem DISPLAY_NAME: Diagnostic System Host

sc config WdiSystemHost start= DISABLED

rem SERVICE_NAME: WdNisSvc
rem DISPLAY_NAME: Windows Defender Network Inspection Service

rem sc config WdNisSvc start= DISABLED
sc delete WdNisSvc

rem SERVICE_NAME: WebClient
rem DISPLAY_NAME: WebClient

sc config WebClient start= DISABLED

rem SERVICE_NAME: Wecsvc
rem DISPLAY_NAME: Windows Event Collector

sc config Wecsvc start= DEMAND

rem SERVICE_NAME: WEPHOSTSVC
rem DISPLAY_NAME: Windows Encryption Provider Host Service

sc config WEPHOSTSVC start= DEMAND


rem SERVICE_NAME: wercplsupport
rem DISPLAY_NAME: Problem Reports and Solutions Control Panel Support

sc config wercplsupport start= DISABLED

rem SERVICE_NAME: WerSvc
rem DISPLAY_NAME: Windows Error Reporting Service

sc config WerSvc start= DISABLED

rem SERVICE_NAME: WiaRpc
rem DISPLAY_NAME: Still Image Acquisition Events

sc config WiaRpc start= DEMAND

rem SERVICE_NAME: LicenseManager
rem DISPLAY_NAME: Windows 许可证管理器服务

sc config LicenseManager start= auto

rem SERVICE_NAME: WinDefend
rem DISPLAY_NAME: Windows Defender Service

rem sc config WinDefend start= DISABLED
sc delete WinDefend

rem SERVICE_NAME: WinHttpAutoProxySvc
rem DISPLAY_NAME: WinHTTP Web Proxy Auto-Discovery Service

sc config WinHttpAutoProxySvc start= DEMAND

rem SERVICE_NAME: winmgmt
rem DISPLAY_NAME: Windows Management Instrumentation

sc config winmgmt start= auto

rem SERVICE_NAME: WinRM
rem DISPLAY_NAME: Windows Remote Management (WS-Management)

sc config WinRM start= DISABLED

rem SERVICE_NAME: WlanSvc
rem DISPLAY_NAME: WLAN AutoConfig

sc config WlanSvc start= auto

rem SERVICE_NAME: wlidsvc
rem DISPLAY_NAME: Microsoft Account Sign-in Assistant

sc config wlidsvc start= DEMAND

rem SERVICE_NAME: wmiApSrv
rem DISPLAY_NAME: WMI Performance Adapter

sc config wmiApSrv start= DEMAND

rem SERVICE_NAME: WMPNetworkSvc
rem DISPLAY_NAME: Windows Media Player Network Sharing Service

sc config WMPNetworkSvc start= auto

rem SERVICE_NAME: workfolderssvc
rem DISPLAY_NAME: Work Folders

sc config workfolderssvc start= DEMAND

rem SERVICE_NAME: WPCSvc
rem DISPLAY_NAME: Family Safety

sc config WPCSvc start= DEMAND

rem SERVICE_NAME: WPDBusEnum
rem DISPLAY_NAME: Portable Device Enumerator Service

rem sc config WPDBusEnum start= DISABLED

rem SERVICE_NAME: wscsvc
rem DISPLAY_NAME: Security Center

sc config wscsvc start= AUTO

rem SERVICE_NAME: WSearch
rem DISPLAY_NAME: Windows Search

sc config WSearch start= DISABLED

rem SERVICE_NAME: WSService
rem DISPLAY_NAME: Windows Store Service (WSService)

sc config WSService start= DISABLED

rem SERVICE_NAME: wuauserv
rem DISPLAY_NAME: Windows Update
rem AppStore need running

sc config wuauserv start= DEMAND
rem sc config uhssvc start= DISABLED

rem SERVICE_NAME: wudfsvc
rem DISPLAY_NAME: Windows Driver Foundation - User-mode Driver Framework

sc config wudfsvc start= auto

rem SERVICE_NAME: WwanSvc
rem DISPLAY_NAME: WWAN AutoConfig

sc config WwanSvc start= DEMAND

rem SERVICE_NAME: wcncsvc
rem DISPLAY_NAME: Windows Connect Now – Config Registrar
sc config wcncsvc start= AUTO

rem third party service 
rem SERVICE_NAME: AdobeARMservice
rem DISPLAY_NAME: Adobe Acrobat Update Service

sc config AdobeARMservice start= DISABLED

rem SERVICE_NAME: AdobeFlashPlayerUpdateSvc
rem DISPLAY_NAME: Adobe Flash Player Update Service

sc config AdobeFlashPlayerUpdateSvc start= DISABLED

rem SERVICE_NAME: SENS
rem DISPLAY_NAME: System Event Notification Service

sc config Sens start= AUTO

rem SERVICE_NAME: Sense
rem DISPLAY_NAME: Windows Defender Advanced Threat Protection Service
sc config Sense start= DISABLED
sc delete Sense

sc config SgrmBroker start= DEMAND

rem SERVICE_NAME: BaiduYunUtility
rem DISPLAY_NAME: BaiduYunUtility

sc config BaiduYunUtility start= DISABLED

rem SERVICE_NAME: ose64
rem DISPLAY_NAME: Office 64 Source Engine

sc config ose64 start= DISABLED

rem SERVICE_NAME: DiagTrack
rem DISPLAY_NAME: Diagnostics Tracking Service

sc config DiagTrack start= DISABLED

rem IE F12工具使用
sc config diagnosticshub.standardcollector.service start= DEMAND
sc config dmwappushservice start= disabled

rem SERVICE_NAME: SshBroker
rem DISPLAY_NAME: SSH Server Broker
sc config SshBroker start= DISABLED

rem SERVICE_NAME: SshProxy
rem DISPLAY_NAME: SSH Server Proxy
sc config SshProxy start= DISABLED

rem SERVICE_NAME: wisvc
rem DISPLAY_NAME: Windows 预览体验服务
sc config wisvc start= DISABLED

rem SERVICE_NAME: RetailDemo
rem DISPLAY_NAME: 零售演示服务

sc config RetailDemo start= DISABLED

sc config SecurityHealthService start= DISABLED

sc config PolicyAgent start= DISABLED

sc config XboxNetApiSvc start= DISABLED

sc config TextInputManagementService start= DISABLED

rem SERVICE_NAME: WpnUserService_2e754
rem DISPLAY_NAME: Windows 推送通知用户服务_2e754
rem sc config WpnService start= DISABLED
rem sc config WpnUserService start= DISABLED
rem sc config CDPSvc start= DISABLED
rem sc config CDPUserSvc start= DISABLED
rem sc config UserDataSvc start= DISABLED
rem sc config UnistoreSvc start= DISABLED
rem sc config DevicesFlow  start= AUTO
rem sc config DevicesFlowUserSvc start= AUTO
rem sc config MessagingService start= DISABLED
rem sc config PimIndexMaintenanceSvc start= DISABLED
rem sc config PrintWorkflowUserSvc start= DISABLED


rem DELETE SPY-SERVICES Win10
sc delete DiagTrack
sc delete MapsBroker
sc delete RetailDemo
rem sc delete diagnosticshub.standardcollector.service
sc delete WMPNetworkSvc
sc delete OneSyncSvc
sc delete edgeupdate
sc delete edgeupdatem

rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\CDPUserSvc_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\MessagingService_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\OneSyncSvc_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\PimIndexMaintenanceSvc_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\UnistoreSvc_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\UserDataSvc_  
rem    exclude_registry=\REGISTRY\MACHINE\SYSTEM\ControlSet001\services\WpnUserService_  
