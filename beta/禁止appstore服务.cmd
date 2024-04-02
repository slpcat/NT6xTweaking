rem  AppXSvc不能禁止否则，个性化设置报错
rem sc config AppXSvc start= auto
sc config InstallService start= DISABLED
sc config NcbService start= DISABLED
