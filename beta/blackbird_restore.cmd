sc config BTAGService start= DEMAND
sc config BluetoothUserService start= DEMAND
sc config bthserv start= DEMAND
sc config BthAvctpSvc start= DEMAND
sc config BthHFSrv start= DEMAND
sc config WlanSvc start= AUTO
sc config DeviceAssociationService start= DEMAND
sc config DevicesFlowUserSvc start= DEMAND

sc config InstallService start= auto
sc config DoSvc start= DEMAND
sc config W32Time start= auto
sc config WpnService start= auto
sc config WpnUserService start= auto

sc config DPS start= AUTO
