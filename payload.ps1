$ie = New-Object -ComObject InternetExplorer.Application
$ie.Navigate("http://fakeupdate.net/win10u/")
$ie.Visible = $true
$ie.fullscreen = $true;

#Clear Run
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
exit
