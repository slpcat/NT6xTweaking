#https://www.speedguide.net/articles/windows-8-10-2012-server-tcpip-tweaks-5077
Set-NetTCPSetting -SettingName InternetCustom -Timestamps disabled
Set-NetTCPSetting -SettingName InternetCustom -InitialRto 2000
Set-NetTCPSetting -SettingName InternetCustom -ForceWS enabled
Set-NetTCPSetting -SettingName InternetCustom -MemoryPressureProtection disabled

Set-NetTCPSetting -SettingName DataCenterCustom -Timestamps disabled
Set-NetTCPSetting -SettingName DataCenterCustom -InitialRto 2000
Set-NetTCPSetting -SettingName DataCenterCustom -ForceWS enabled
Set-NetTCPSetting -SettingName DataCenterCustom -MemoryPressureProtection disabled
 
#win2012
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -DelayedAckTimeoutMs 10
set-NetTCPSetting -SettingName InternetCustom -MinRto 300

#禁止IPv6teredo
netsh interface teredo set state disable
#netsh int tcp set heuristics disabled
#netsh int tcp set global chimney=disabled
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global dca=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global netdma=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global initialrto=2000
netsh int tcp set global maxsynretransmissions=2

netsh int tcp set global rss=enabled
netsh int tcp set global rsc=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global pacingprofile=off
netsh int tcp set heuristics wsh=enabled forcews=enabled
netsh int tcp set security mpp=enabled startport=1024 numberofports=64500

#win10
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh int tcp set supplemental datacenter congestionprovider=dctcp
