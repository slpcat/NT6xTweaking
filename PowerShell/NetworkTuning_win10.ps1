#https://www.speedguide.net/articles/windows-8-10-2012-server-tcpip-tweaks-5077
#Set-NetTCPSetting : Only the custom templates InternetCustom and DatacenterCustom can be modified under Windows 8 and older Windows 10 versions.
Set-NetTCPSetting -SettingName InternetCustom -Timestamps enabled
Set-NetTCPSetting -SettingName InternetCustom -InitialRto 2000
Set-NetTCPSetting -SettingName InternetCustom -ForceWS enabled
Set-NetTCPSetting -SettingName InternetCustom -MemoryPressureProtection disabled

Set-NetTCPSetting -SettingName DataCenterCustom -Timestamps enabled
Set-NetTCPSetting -SettingName DataCenterCustom -InitialRto 2000
Set-NetTCPSetting -SettingName DataCenterCustom -ForceWS enabled
Set-NetTCPSetting -SettingName DataCenterCustom -MemoryPressureProtection disabled
 
#win2012
Set-NetTCPSetting -SettingName InternetCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -InitialCongestionWindow 10
Set-NetTCPSetting -SettingName DataCenterCustom -DelayedAckTimeoutMs 10
set-NetTCPSetting -SettingName InternetCustom -MinRto 300

netsh int tcp set supplemental template=custom icw=10
netsh int tcp set supplemental template=InternetCustom icw=10

#禁止IPv6teredo
netsh interface teredo set state disable

#纯IPv4环境，需要访问IPv6网站，可以使用Teredo协议

#netsh interface teredo set state enterpriseclient server=default

#配置设置teredo服务
#win1910.ipv6.microsoft.com win10.ipv6.microsoft.com
#netsh interface teredo set state server=teredo.iks-jena.de
#配置设置teredo端口（根据需要设置，可以不设置）
#netsh interface teredo set state natawareclient clientport=60409
#验证是否可用 ping 6.ipw.cn

#Disable Windows Scaling heuristics
netsh int tcp set heuristics disabled
#netsh int tcp set heuristics wsh=enabled forcews=enabled
#TCP Chimney Offload在每个连接的基础上启动的，它减少了与网络相关的CPU开销
#Set-NetOffloadGlobalSetting -Chimney enabled
#netsh int tcp set global chimney=disabled

netsh winsock set autotuning on
netsh int tcp set global autotuninglevel=experimental
netsh int tcp set global dca=enabled

#启用网络适配器上的校验和
Enable-NetAdapterChecksumOffload -Name *

netsh int tcp set global timestamps=enabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global netdma=enabled
# RTT resiliency for non SACK clients.
netsh int tcp set global nonsackrttresiliency=enabled
netsh int tcp set global initialrto=2000
netsh int tcp set global maxsynretransmissions=2
#tcp慢启动
netsh int tcp set global hystart=disabled
netsh int tcp set global prr=disabled

#允许在多个处理器上并行处理接收的数据包，同时避免数据包重新排序。
netsh int tcp set global rss=enabled
#RSC能够收集在同一个中断周期内接收到的数据包，并将它们放在一起，以便更有效地将它们传递到网络堆栈。
netsh int tcp set global rsc=enabled

#网络数据包分组，以限制接收中断的数量并减少所需处理的数量。
Set-NetOffloadGlobalSetting -PacketCoalescingFilter enabled

#Large Send Offload 
Enable-NetAdapterLso -Name *
netsh int tcp set global fastopen=enabled
netsh int tcp set global pacingprofile=always

netsh int tcp set security mpp=disabled startport=1024 numberofports=64500
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled

#win10
netsh int tcp set supplemental internet congestionprovider=dctcp
netsh int tcp set supplemental datacenter congestionprovider=dctcp
netsh int tcp set supplemental internet enablecwndrestart=enabled
netsh int tcp set supplemental datacenter enablecwndrestart=enabled
#Set-NetTCPSetting -SettingName Custom -InitialCongestionWindow 10 -CongestionProvider DCTCP

#win11
#netsh int tcp set supplemental internet congestionprovider=bbr2

#Set-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Services\AFD\Parameters\ -Name "DoNotHoldNicBuffers" -Value "1" -Force

Get-NetTCPSetting
