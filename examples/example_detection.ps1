#Check if device name contains "Win10STD-*"

$deviceName = hostname
try {
    if ($deviceName -like "Win10STD-*) {
        Write-Host "Device OK!"
        Exit 0
    }
    Write-Host "Device needs renamed!"
    Exit 1
} Catch {
        Write-Host "Error identifying hostname!"
}
