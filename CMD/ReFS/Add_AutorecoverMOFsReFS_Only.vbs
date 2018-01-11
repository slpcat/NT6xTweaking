' Made by Jan1 from MDL
' http://forums.mydigitallife.info/members/155114-Jan1

' Registry specifications
Const strDefKey = &H80000002 ' HKEY_LOCAL_MACHINE
Const strSubKeyName = "SOFTWARE\Microsoft\WBEM\CIMOM"
Const strValueName = "Autorecover MOFs"
Const strAddValue = "%windir%\system32\wbem\refs.mof"

' Obtain registry object
Set objReg = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\default:StdRegProv")

' Query existing value
If objReg.GetMultiStringValue(strDefKey, strSubKeyName, strValueName, arrValues) <> 0 Then WScript.Quit(1)

' Check if the value to be added is already present
For Each strItem in arrValues
	If strItem = strAddValue Then WScript.Quit(0)
Next

' Add value to array
ReDim Preserve arrValues(UBound(arrValues) + 1)
arrValues(UBound(arrValues)) = strAddValue

' Write array to registry
If objReg.SetMultiStringValue(strDefKey, strSubKeyName, strValueName, arrValues) <> 0 Then WScript.Quit(1)
