rem 第一句
mountvol X: /s
rem 第二句
copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
rem 第三句
bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
rem 第四句
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
rem 第五句
bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
rem 第六句
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO,DISABLE-VBS
rem 第七句
bcdedit /set vsmlaunchtype off
rem 第八句
bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
rem 第九句
mountvol X: /d 作者：StevenGZQ https://www.bilibili.com/read/cv22719638/ 出处：bilibili