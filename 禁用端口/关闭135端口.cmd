cls
echo 开始关闭135端口...
sc config DcomLaunch start=disabled
sc config RpcEptMapper start=disabled
sc config RpcSs start=disabled

reg add HKLM\SOFTWARE\Microsoft\Ole /v EnableDCOM /d N /f
reg add HKLM\SOFTWARE\Microsoft\Rpc /v "DCOM Protocols" /t REG_MULTI_SZ /d ncacn_spx\0ncacn_nb_nb\0ncacn_nb_ipx\0 /f
sc config   MSDTC start= DISABLED
echo 关闭135端口结束,按任意键返回!
pause >nul