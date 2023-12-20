#Rename a device to "Win10STD-%serialnumber%" (Requires a device restart!)

$serialNumber = (Get-WmiObject -class win32_bios).SerialNumber
$deviceNewName = "Win10STD-$serialNumber"
Rename-Computer -NewName $deviceNewName -Force
