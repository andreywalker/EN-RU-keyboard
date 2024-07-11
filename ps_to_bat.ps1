$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut("$env:USERPROFILE\Desktop\run_python_script.lnk")
$BatchFilePath = Join-Path -Path (Split-Path -Parent $MyInvocation.MyCommand.Definition) -ChildPath "bat_to_py.bat"
$Shortcut.TargetPath = $BatchFilePath
$Shortcut.WorkingDirectory = (Split-Path -Parent $BatchFilePath)
$Shortcut.Hotkey = "ALT+Z"
$Shortcut.Save()

$FILE=Get-Item "$env:USERPROFILE\Desktop\run_python_script.lnk" -Force
$FILE.attributes='Hidden'

Start-Sleep -Seconds 5