function Install-VisualStudioVsixExtension
{
<#
.SYNOPSIS
Installs or updates a Visual Studio VSIX extension.

.DESCRIPTION
This function installs a Visual Studio VSIX extension by invoking
the Visual Studio extension installer (VSIXInstaller.exe).
The latest installer version found on the machine is used.
The extension is installed in all Visual Studio instances present on the
machine the extension is compatible with.
#>
    [CmdletBinding()]
    Param
    (
        [Alias('Name')] [string] $PackageName,
        [Alias('Url')] [string] $VsixUrl,
        [string] $Checksum,
        [string] $ChecksumType,
        [Alias('VisualStudioVersion')] [int] $VsVersion,
        [hashtable] $Options,
        [string] $File
    )
    if ($Env:ChocolateyPackageDebug -ne $null)
    {
        $VerbosePreference = 'Continue'
        $DebugPreference = 'Continue'
        Write-Warning "VerbosePreference and DebugPreference set to Continue due to the presence of ChocolateyPackageDebug environment variable"
    }
    Write-Debug "Running 'Install-VisualStudioVsixExtension' for $PackageName with VsixUrl:'$VsixUrl' Checksum:$Checksum ChecksumType:$ChecksumType VsVersion:$VsVersion Options:$Options File:$File";

    if ($VsVersion -ne 0)
    {
        Write-Warning "VsVersion is not supported yet. The extension will be installed in all compatible Visual Studio instances present."
    }

    if ($Options -ne $null -and $Options.Keys.Count -gt 0)
    {
        Write-Warning "The 'Options' parameter is not supported yet."
    }

    if ($VsixUrl -eq '')
    {
        $VsixUrl = $File
    }

    $vsixInstaller = Get-VsixInstaller -Latest
    Write-Verbose ('Found VSIXInstaller version {0}: {1}' -f $vsixInstaller.Version, $vsixInstaller.Path)

    $vsixPath = Get-VSWebFile `
        -PackageName $PackageName `
        -DefaultFileName "${PackageName}.vsix" `
        -FileDescription 'vsix file' `
        -Url $VsixUrl `
        -Checksum $Checksum `
        -ChecksumType $ChecksumType

    Write-Host ('Installing {0} using VSIXInstaller version {1}' -f $PackageName, $vsixInstaller.Version)
    $logFileName = 'VSIXInstaller_{0}_{1:yyyyMMddHHmmss}.log' -f $PackageName, (Get-Date)
    $silentArgs = "/quiet /admin /logFile:$logFileName ""$vsixPath"""
    $validExitCodes = @(0, 1001)
    $exitCode = Start-VSChocolateyProcessAsAdmin -statements $silentArgs -exeToRun $vsixInstaller.Path -validExitCodes $validExitCodes
    if ($exitCode -eq 1001)
    {
        Write-Host "Visual Studio extension '${PackageName}' is already installed."
    }
    else
    {
        Write-Host "Visual Studio extension '${PackageName}' has been installed in all supported Visual Studio instances."
    }
}