cls
echo 开始关闭445端口...
sc config lanmanserver start=disabled
sc config lmhosts start=disabled
reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled /t REG_DWORD /d 0 /f
echo 关闭445端口结束,按任意键返回!
pause >nul