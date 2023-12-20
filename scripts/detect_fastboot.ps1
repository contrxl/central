#Detect if machine has fastboot/fast startup enabled.

$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
$Name = "HiberbootEnabled"
$Type = "DWORD"
$Value = 0

try {
    $Reg = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    if ($Reg -eq $Value) {
        Write-Output "Fastboot disabled!"
        Exit 0
    }
    Write-Warning "Fastboot enabled!"
    Exit 1
} catch {
        Write-Warning "Could not detect!"
        Exit 1
}
