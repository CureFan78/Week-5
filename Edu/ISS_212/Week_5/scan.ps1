
<#
.DESCRIPTION
Chris Fitch
10/12/2024
ISS 212 - CS Scripting - PowerShell Script Template
Search-SuspiciousFiles.ps1
Citations: AI Overview
#>

# Specify the directory to scan
$directory = "C:\Users\DotsA\Desktop\EDU\ISS_212\Week_5"

# Specify the file extensions to search for
$extensions = "*.txt", "*.docx", "*.xlsx, '*.exe'"

#Specify the log file path
$logFile = "C:\Users\DotsA\FileReport.log"

# Get the current date and time for the log entry
$timestamp = Get-Date

# Create the log file if it doesn't exist
if (!(Test-Path $logFile)) {
    New-Item -ItemType File -Path $logFile
}

# Search for files with the specified extensions
$files = Get-ChildItem -Path $directory -Recurse -Include $extensions

# Write the header to the log file
"File Report for $directory - $timestamp" | Out-File -FilePath $logFile -Append

# Write the file information to the log file
foreach ($file in $files) {
    "File Name: $($file.Name), Extension: $($file.Extension)" | Out-File -FilePath $logFile -Append
if ($extensions.Count -gt 0) {
            Write-Output "Potential threat detected"
            Add-Content -Path $LogFile -Value "Potential threat detected" }


}