@echo off
python get-pip.py 
pip install pyperclip
python py_to_ps.py > nul 2>&1