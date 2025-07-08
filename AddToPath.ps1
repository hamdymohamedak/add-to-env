if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
        [Security.Principal.WindowsBuiltInRole]::Administrator))
{
    Write-Warning "يجب تشغيل هذا السكريبت كمسؤول (Run as Administrator)!"
    Start-Sleep -Seconds 3
    Start-Process powershell.exe "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

$adbPath = Read-Host "أدخل المسار الكامل لـ adb.exe (مثال: C:\platform-tools\adb.exe)"

if (-Not (Test-Path $adbPath)) {
    Write-Host "[خطأ] لم يتم العثور على الملف: $adbPath" -ForegroundColor Red
    Pause
    exit
}

$adbDir = Split-Path $adbPath -Parent

$envKey = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
$currentPath = (Get-ItemProperty -Path $envKey -Name PATH).PATH

if ($currentPath -like "*$adbDir*") {
    Write-Host "[موجود] المسار موجود بالفعل في PATH. لا حاجة للإضافة." -ForegroundColor Yellow
} else {
    $newPath = "$currentPath;$adbDir"
    Set-ItemProperty -Path $envKey -Name PATH -Value $newPath
    Write-Host "[تمت الإضافة] تم إضافة المسار بنجاح إلى PATH" -ForegroundColor Green
    Write-Host "يرجى إعادة تشغيل الجهاز أو الطرفية (Command Prompt/PowerShell) لتطبيق التغييرات."
}

Pause
