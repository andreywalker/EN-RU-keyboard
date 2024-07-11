@echo off
set SCRIPT_DIR=%~dp0
python "%SCRIPT_DIR%main.py" > nul 2>&1
