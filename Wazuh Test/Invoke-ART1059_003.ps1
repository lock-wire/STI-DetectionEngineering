# This script automates Atomic Read Team test for T1059.003


Start-Transcript C:\Users\student\Desktop\T1059_003.txt -Append

$Start_T1059_003_1=Get-Date

Invoke-AtomicTest T1059.003 -TestNumbers 1

$End_T1059_003_1=Get-Date

Stop-Transcript

Write-Host $Start_T1059_003_1.ToString("yyyy/MM/dd HH:mm:ss tt")" - "($End_T1059_003_1).AddMinutes(2).ToString("yyyy/MM/dd HH:mm:ss tt")