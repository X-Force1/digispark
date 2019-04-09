$ie = New-Object -ComObject InternetExplorer.Application
$ie.Navigate("http://fakeupdate.net/win10u/")
$ie.Visible = $true
$sw = @'
[DllImport("user32.dll")]
public static extern int ShowWindow(int hwnd, int nCmdShow);
'@

$type = Add-Type -Name ShowWindow2 -MemberDefinition $sw -Language CSharpVersion3 -Namespace Utils -PassThru
$type::ShowWindow($ie.hwnd, 3) # 3 = maximize 

#Clear Run
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
exit
