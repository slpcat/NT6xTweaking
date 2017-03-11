Set-NetTCPSetting -SettingName InternetCustom -CongestionProvider CTCP
Set-NetTCPSetting -SettingName InternetCustom -Timestamps enabled
Set-NetTCPSetting -SettingName InternetCustom -InitialRto 1000
Set-NetTCPSetting -SettingName InternetCustom -ForceWS enabled
Set-NetTCPSetting -SettingName InternetCustom -MemoryPressureProtection enabled

Set-NetTCPSetting -SettingName DataCenterCustom -CongestionProvider CTCP
Set-NetTCPSetting -SettingName DataCenterCustom -Timestamps enabled
Set-NetTCPSetting -SettingName DataCenterCustom -InitialRto 1000
Set-NetTCPSetting -SettingName DataCenterCustom -ForceWS enabled
Set-NetTCPSetting -SettingName DataCenterCustom -MemoryPressureProtection enabled
 
#win2012
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName InternetCustom -DelayedAckTimeoutMs 10
Set-NetTCPSetting -SettingName InternetCustom -DelayedAckFreq 0

Set-NetTCPSetting -SettingName DataCenterCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -DelayedAckTimeoutMs 10
Set-NetTCPSetting -SettingName DataCenterCustom -DelayedAckFreq 0

#win7
netsh interface tcp set global congestionprovider=ctcp

#win2012 
netsh int tcp set supplemental custom 20 10 dctcp enabled 10

netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global netdma=enabled
netsh int tcp set global nonsackrttresiliency=enabled
netsh int tcp set global initialrto=1000
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set heuristics wsh=disabled