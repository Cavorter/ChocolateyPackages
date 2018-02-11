Set-StrictMode -Version 5
$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'
. $PSScriptRoot\..\extensions\ConvertTo-ArgumentString.ps1

ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'a b c' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2')

ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @()
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'a b c' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @()

ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'a b c' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1')

ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{} -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @() -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1') -FinalUnstructuredArguments @('fua1', 'fua2')
ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'a b c' } -Syntax VSIXInstaller -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1', 'fua2')

ConvertTo-ArgumentString -Arguments @{ foo = $null; x = 'bar'; gizmo = 'a b c' } -Syntax Willow -InitialUnstructuredArguments @('iua1', 'iua2') -FinalUnstructuredArguments @('fua1', 'fua2')
