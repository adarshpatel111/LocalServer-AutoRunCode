' VSCODE_Run.vbs(VBScript)

' Create an instance of the WScript.Shell object to interact with the system shell
Set WshShell = CreateObject("WScript.Shell")

' Set the current directory to the specified path
WshShell.CurrentDirectory = "C:\Path\To\Desire\Folder"

' Run the npm command to start the development environment and redirect both stdout and stderr to a log file
' The command runs npm in a hidden window (0) without waiting for it to finish (False)
' for run the code replace "run dev" with any command but dont use npm because when we used this C:\Program Files\nodejs\npm.cmd it automaticlly use npm 
WshShell.Run """C:\Program Files\nodejs\npm.cmd"" run dev > output.log 2>&1", 0, False
