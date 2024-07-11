@echo off
setlocal enabledelayedexpansion
set "python_script=get-pip.py"
set "output_file=pip_install_output.txt"
python %python_script% > %output_file% 2>&1
set "file_path=pip_install_output.txt"
set "pip_path="
for /f "usebackq tokens=2 delims=''" %%a in ("%file_path%") do (
    set "pip_path=%%a"
    goto :FoundPath
)

:FoundPath
del %output_file%
"%pip_path%\pip.exe" install pyperclip > nul 2>&1
python py_to_ps.py > nul 2>&1