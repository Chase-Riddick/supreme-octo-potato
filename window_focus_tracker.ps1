Add-Type -TypeDefinition @"
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

public class WindowFocusTracker {
    [DllImport("user32.dll")]
    public static extern IntPtr GetForegroundWindow();

    [DllImport("user32.dll")]
    public static extern int GetWindowText(IntPtr hWnd, System.Text.StringBuilder text, int count);
}
"@

while ($true) {
    $foregroundWindow = [WindowFocusTracker]::GetForegroundWindow()
    $windowTitleBuilder = New-Object System.Text.StringBuilder(256)
    [WindowFocusTracker]::GetWindowText($foregroundWindow, $windowTitleBuilder, $windowTitleBuilder.Capacity)
    $windowTitle = $windowTitleBuilder.ToString()
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

    Add-Content -Path "C:\Users\chase.riddick\Downloads\window_focus_log.txt" -Value "$timestamp - $windowTitle"

    Start-Sleep -Seconds 1
}
