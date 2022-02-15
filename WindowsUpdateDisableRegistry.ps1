#Create Registry Sub-Folders

New-item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ 
New-item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ 

#Create Registry keys

New-item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ -Name DisableWindowsUpdateAccess
New-item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ -Name NoAutoUpdate

#Set the Registry key values

Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\ -Name DisableWindowsUpdateAccess -Value 1
Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ -Name NoAutoUpdate -Value 1
