# Check if running as Administrator
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
        [Security.Principal.WindowsBuiltInRole]::Administrator))
{
    Write-Warning "This script must be run as Administrator!"
    Start-Sleep -Seconds 3
    Start-Process powershell.exe "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Prompt user for the folder path
$folderPath = Read-Host "Enter the folder path to add to system PATH (e.g., C:\scrcpy-win64-v3.3.1)"

# Check if the folder exists
if (-Not (Test-Path $folderPath)) {
    Write-Host "[Error] Folder not found: $folderPath" -ForegroundColor Red
    Pause
    exit
}

# Access system environment variable
$envKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
$currentPath = (Get-ItemProperty -Path $envKey -Name PATH).PATH

# Check if the folder is already in PATH
if ($currentPath -like "*$folderPath*") {
    Write-Host "[Exists] The folder is already in the PATH. No changes made." -ForegroundColor Yellow
} else {
    $newPath = "$currentPath;$folderPath"
    Set-ItemProperty -Path $envKey -Name PATH -Value $newPath
    Write-Host "[Success] Folder was successfully added to system PATH." -ForegroundColor Green
}

# Notify the system of environment variable change
$signature = @'
[DllImport("user32.dll", SetLastError = true)]
public static extern IntPtr SendMessageTimeout(IntPtr hWnd, uint Msg, UIntPtr wParam, string lParam, uint fuFlags, uint uTimeout, out UIntPtr lpdwResult);
'@

Add-Type -MemberDefinition $signature -Name 'Win32SendMessageTimeout' -Namespace 'Win32Functions'

[UIntPtr]$result = [UIntPtr]::Zero
[Win32Functions.Win32SendMessageTimeout]::SendMessageTimeout([IntPtr]0xffff, 0x1A, [UIntPtr]::Zero, "Environment", 0x2, 5000, [ref]$result) | Out-Null

Write-Host "Please open a **new** Command Prompt or PowerShell to use the updated PATH."
Pause
