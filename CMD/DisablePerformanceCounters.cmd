@echo off
"%windir%\system32\lodctr.exe" /d:wsearchidxpi 
"%windir%\system32\lodctr.exe" /d:wmiaprpl
"%windir%\system32\lodctr.exe" /d:usbhub
"%windir%\system32\lodctr.exe" /d:ugthrsvc
"%windir%\system32\lodctr.exe" /d:ugatherer
"%windir%\system32\lodctr.exe" /d:termservice
"%windir%\system32\lodctr.exe" /d:tcpip
"%windir%\system32\lodctr.exe" /d:spooler
"%windir%\system32\lodctr.exe" /d:"smsvchost 5.0.0.0"
"%windir%\system32\lodctr.exe" /d:"smsvchost 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:"smsvchost 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:"servicemodelservice 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:tapisrv
"%windir%\system32\lodctr.exe" /d:"windows workflow foundation 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:"windows workflow foundation 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:"windows workflow foundation 5.0.0.0"
"%windir%\system32\lodctr.exe" /d:"servicemodeloperation 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:"servicemodeloperation 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:"servicemodelendpoint 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:"servicemodelendpoint 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:rdyboost
"%windir%\system32\lodctr.exe" /d:perfproc
"%windir%\system32\lodctr.exe" /d:perfos
"%windir%\system32\lodctr.exe" /d:perfnet
"%windir%\system32\lodctr.exe" /d:perfdisk
"%windir%\system32\lodctr.exe" /d:outlook
"%windir%\system32\lodctr.exe" /d:msscntrs
"%windir%\system32\lodctr.exe" /d:"msdtc bridge 5.0.0.0"
"%windir%\system32\lodctr.exe" /d:"msdtc bridge 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:"msdtc bridge 3.0.0.0"
"%windir%\system32\lodctr.exe" /d:msdtc
"%windir%\system32\lodctr.exe" /d:lsa
"%windir%\system32\lodctr.exe" /d:esent
"%windir%\system32\lodctr.exe" /d:remoteaccess
"%windir%\system32\lodctr.exe" /d:bits
"%windir%\system32\lodctr.exe" /d:aspnet_state
"%windir%\system32\lodctr.exe" /d:asp.net_4.0.30319
"%windir%\system32\lodctr.exe" /d:asp.net
"%windir%\system32\lodctr.exe" /d:".netframework"
"%windir%\system32\lodctr.exe" /d:".NET CLR Data"
"%windir%\system32\lodctr.exe" /d:".NET CLR Networking"
"%windir%\system32\lodctr.exe" /d:".NET CLR Networking 5.0.0.0"
"%windir%\system32\lodctr.exe" /d:".NET CLR Networking 4.0.0.0"
"%windir%\system32\lodctr.exe" /d:".NET Data Provider for Oracle"
"%windir%\system32\lodctr.exe" /d:".NET Data Provider for SqlServer"
"%windir%\system32\lodctr.exe" /d:".NET Memory Cache 4.0"
"%windir%\system32\lodctr.exe" /d:".NET Memory Cache 4.1"
echo Done! 'Standard' performance counters disabled.
echo.
echo.
echo Press any key to exit...
pause >nul