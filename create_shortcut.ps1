$shell = New-Object -ComObject WScript.Shell
$desktopPath = [Environment]::GetFolderPath('Desktop')
$shortcut = $shell.CreateShortcut("$desktopPath\Emma English Lab.lnk")
$shortcut.TargetPath = "C:\Users\atnne\Documents\english-app\english-app.html"
$shortcut.Save()
Write-Output "Done: $desktopPath\Emma English Lab.lnk"
