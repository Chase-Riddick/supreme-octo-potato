# Window Focus Tracker

The Window Focus Tracker is a PowerShell script that allows you to track the currently focused window on a Windows system. It periodically captures the window title along with a timestamp and logs the information to a specified file.

## Contents

- `window_focus_tracker.ps1`: The main PowerShell script file containing the window focus tracking logic.

## How to Run

1. Open a PowerShell terminal.
2. Navigate to the directory where the `window_focus_tracker.ps1` file is located.
3. Run the script by executing the following command: `.\window_focus_tracker.ps1`.
4. The script will continuously run, capturing the window focus events and logging them to the specified log file.

Please note that you may need to modify the log file path in the script (`Add-Content -Path "C:\path\to\log\file.txt"`) to match your desired location.

**Important:** Running PowerShell scripts may require adjusting the execution policy. If you encounter an error related to script execution, you can open a PowerShell terminal as an administrator and run the command `Set-ExecutionPolicy RemoteSigned` to allow running local scripts.

## License

This script is provided under the [MIT License](LICENSE), allowing you to use and modify it according to your needs.
