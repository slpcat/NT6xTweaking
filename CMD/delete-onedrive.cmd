taskkill /f /im OneDrive.exe
rd /s /q %USERPROFILE%\OneDrive\
rd /s /q %LOCALAPPDATA%\Microsoft\OneDrive\
rd /s /q %PROGRAMDATA%\Microsoft\OneDrive\
rd /s /q %PROGRAMDATA%\Microsoft\MapData\
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d 1 /f
