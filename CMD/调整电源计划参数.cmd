﻿rem win7不支持別名

rem 启用电源计划“平衡”
rem powercfg.exe -setactive 381b4222-f694-41f0-9685-ff5bb260df2e

rem 启用电源计划“卓越性能”
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

rem AHCI链路电源管理 HIPM/DIPM 无win7

powercfg -attributes 0012ee47-9041-4b5d-9b77-535fba8b1442 0b2d69d7-a2a1-449c-9680-f91c70521c60 -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_disk 0b2d69d7-a2a1-449c-9680-f91c70521c60 4

rem 增加了低功耗模式自适应选项，可以设置SSD空闲后进入休眠状态的时间，设置的短一些可以让硬盘有更多机会休眠，降低功耗和发热量，设置的长一些则可以让硬件减少休眠，让硬盘更多地处于工作状态，节省唤醒时间，可以提升一定的性能。
powercfg -attributes 0012ee47-9041-4b5d-9b77-535fba8b1442 dab60367-53fe-4fbc-825e-521d069d2456 -ATTRIB_HIDE

rem 添加Primary NVMe Idle Timeout项目，是设置NVMe固态硬盘空闲超过这个某个时长后，进入节能模式。
powercfg -attributes 0012ee47-9041-4b5d-9b77-535fba8b1442 d639518a-e56d-4345-8af2-b9f32fb26109 -ATTRIB_HIDE

rem 功耗状态切换的延迟容忍时间
powercfg -attributes 0012ee47-9041-4b5d-9b77-535fba8b1442 fc95af4d-40e7-4b6d-835a-56d131dbc80e -ATTRIB_HIDE


rem 在此时间后关闭硬盘 20分钟
powercfg -setacvalueindex scheme_current sub_disk DISKIDLE 1200
powercfg -setdcvalueindex scheme_current sub_disk DISKIDLE 1200
powercfg -setacvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 1200
powercfg -setdcvalueindex scheme_current 0012ee47-9041-4b5d-9b77-535fba8b1442 6738e2c4-e8a5-4a42-b16a-e040e769756e 1200

rem 在此时间后显示器变暗 3分钟
powercfg -setacvalueindex scheme_current 7516b95f-f776-4464-8c53-06167f40cc99 17aaa29b-8b43-4b94-aafe-35f64daaf1ee 180 

rem 在此时间后关闭显示器 15分钟
powercfg -setacvalueindex scheme_current 7516b95f-f776-4464-8c53-06167f40cc99 3c0bc021-c8a8-4e07-a973-6b14cbcb2b7e 900

rem 中断路由控制设置 任何处理器 無win7
powercfg -setacvalueindex scheme_current sub_intsteer MODE 1

rem 启用USB选择性暂停设置
powercfg -setacvalueindex scheme_current 2a737441-1930-4402-8d77-b2bebba308a3 48e6b7a6-50f5-4782-a5d4-53bb8f07e226 1

rem PCIE电源管理 最高性能
powercfg -setacvalueindex scheme_current sub_pciexpress ASPM 0
powercfg -setacvalueindex scheme_current 501a4d13-42af-4429-9fd1-a8218c268e20 ee12f906-d277-404b-b6da-e5fa1a576df5 0

rem 禁用cpu核心停泊（core parking）
powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
powercfg -setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 0cc5b647-c1df-4637-891a-dec35c318583 100

rem 禁用cpu节流（throttle）
powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
powercfg -setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb 0

rem 最小处理器状态 10%
powercfg -setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 893dee8e-2bef-41e0-89c6-b55d0929964c 10

rem 最大处理器状态 100%
powercfg -setacvalueindex scheme_current 54533251-82be-4824-96c1-47b60b740d00 bc5038f7-23e0-4960-96da-33abaf5935ec 100
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100
powercfg -setdcvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 100

rem 性能策略 低延迟低空载功耗
powercfg -setacvalueindex scheme_current sub_processor PERFINCPOL 2
powercfg -setacvalueindex scheme_current sub_processor PERFDECPOL 1
powercfg -setacvalueindex scheme_current sub_processor PERFINCTHRESHOLD 10
powercfg -setacvalueindex scheme_current sub_processor PERFDECTHRESHOLD 8

rem  disable utility distribution 
powercfg -setacvalueindex scheme_current sub_processor DISTRIBUTEUTIL 0

rem JavaScript计时器频率
powercfg -setacvalueindex scheme_current b14a8f96-7b67-4e78-8192-b890b1a62b8a 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1
powercfg -setacvalueindex scheme_current 02f815b5-a5cf-4c84-bf20-649d1f75d3d8 4c793e7d-a264-42e1-87d3-7a0d2f523ccd 1

rem 系统从不睡眠
powercfg -setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0

rem 禁止使用唤醒定时器
powercfg -setacvalueindex scheme_current 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d 0

rem 设置立刻生效
powercfg -setactive scheme_current  
