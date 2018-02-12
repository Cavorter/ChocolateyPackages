Set-StrictMode -Version 5
$ErrorActionPreference = 'Stop'
$DebugPreference = 'Continue'
. $PSScriptRoot\..\extensions\Parse-Parameters.ps1

$packageParameters = Parse-Parameters '--add Microsoft.VisualStudio.Workload.Data;includeOptional --add Microsoft.VisualStudio.Workload.ManagedDesktop'
$packageIdsList = @($packageParameters['add'])
$packageIdsList | ForEach-Object { $_ -split ';' | Select-Object -First 1 }

$packageParameters = Parse-Parameters '--add Microsoft.VisualStudio.Workload.Data'
$packageIdsList = @($packageParameters['add'])
$packageIdsList | ForEach-Object { $_ -split ';' | Select-Object -First 1 }

$packageIdsList = @()
$packageIdsList | ForEach-Object { $_ -split ';' | Select-Object -First 1 }
