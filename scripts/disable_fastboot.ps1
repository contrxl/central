#Modifies registry to set fastboot to disabled

New-ItemProperty -LiteralPath "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" -Name "HiberbootEnabled" -Value 0 -PropertyType DWORD -Force -ea SilentlyContinue
