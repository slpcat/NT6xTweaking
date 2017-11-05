cls
echo 开始恢复445端口...
reg add HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters /v SMBDeviceEnabled /t REG_DWORD /d 1 /f
echo 恢复4455端口结束,按任意键返回!
pause >nul