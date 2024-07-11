import subprocess
import os

# Define paths
current_dir = os.path.dirname(os.path.abspath(__file__))
batch_file_path = os.path.join(current_dir, "bat_to_py.bat")
powershell_script_path = os.path.join(current_dir, "ps_to_bat.ps1")

# Check if paths are correct
if not os.path.exists(batch_file_path):
    raise FileNotFoundError(f"Batch file not found: {batch_file_path}")
if not os.path.exists(powershell_script_path):
    raise FileNotFoundError(f"PowerShell script not found: {powershell_script_path}")

# Run the PowerShell script to create the shortcut
subprocess.run(["powershell", "-ExecutionPolicy", "Bypass", "-File", powershell_script_path])
print("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000")