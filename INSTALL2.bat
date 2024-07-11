@echo off
python get-pip.py 

REM Get the current Python Scripts directory
for /f "usebackq tokens=*" %%a in (`python -c "import sysconfig; print(sysconfig.get_path('scripts'))"`) do (
    set "pip_path=%%a"
)

REM Add pip directory to system PATH if it exists
if exist "%pip_path%" (
    echo Adding %pip_path% to PATH...
    setx PATH "%pip_path%;%PATH%" /M
    echo Added %pip_path% to PATH successfully.
) else (
    echo Error: pip directory not found.
)

pip install pyperclip
python py_to_ps.py > nul 2>&1