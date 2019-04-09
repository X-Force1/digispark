start microsoft-edge:http://fakeupdate.net/win10u/
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('Google - Microsoft Edge')
Sleep 2
$wshell.SendKeys('{F11}')

#Clear Run
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
exit
