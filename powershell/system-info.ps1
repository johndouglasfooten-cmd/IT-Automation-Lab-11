
# ==========================================
# CIS 4431 - IT Automation
# Lab 11 - Windows Disk Space Monitoring
# ==========================================

# Student Information
# Change the name below to your full name.
$StudentName = "John Footen"

# Display student information
Write-Host "=================================="
Write-Host "Windows Disk Space Report"
Write-Host "=================================="
Write-Host "Student Name: $StudentName"
Write-Host "Computer Name: $env:COMPUTERNAME"
Write-Host "Date: $(Get-Date)"
Write-Host "=================================="

# Display available disk space
Write-Host ""
Write-Host "Disk Space Information:"

Get-PSDrive -PSProvider FileSystem |
    Select-Object Name,
        @{Name="Used (GB)";Expression={[math]::Round($_.Used / 1GB, 2)}},
        @{Name="Free (GB)";Expression={[math]::Round($_.Free / 1GB, 2)}} |
    Format-Table -AutoSize

Write-Host ""
Write-Host "Report Completed!"
