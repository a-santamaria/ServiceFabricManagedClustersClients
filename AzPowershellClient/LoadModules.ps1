param(
    [Parameter(Mandatory=$false)] 
    [Switch] $DownloadLatest
)


$scriptDir = Split-Path $script:MyInvocation.MyCommand.Path

Write-Host "directory: $scriptDir"

$zipName = "AzPackages.zip"
$url = "https://github.com/a-santamaria/ServiceFabricManagedClustersClients/blob/master/AzPowershellClient/" +  $zipName + "?raw=true"
$zipPath = Join-Path $scriptDir $zipName
$packagePath = Join-Path $scriptDir "AzPackages"

if ($DownloadLatest.IsPresent)
{
    
    if (Test-Path $zipPath)
    {
        Write-Host "hola"
        Write-Host "removing old zip $zipPath"
        Remove-Item $zipPath -Force
    }

    if (Test-Path $packagePath)
    {
        Write-Host "removing old package $packagePath already exists. Using it to load modules"
        Remove-Item $packagePath -Force -Recurse
    }
}

elseif (-Not (Test-Path $zipPath))
{
    Write-Host "downloading from $url to $zipPath"
    Invoke-WebRequest -Uri $url -OutFile $zipPath
}

if (Test-Path $packagePath)
{
    Write-Host "$packagePath already exists. Using it to load modules"
}
elseif (Test-Path $zipPath)
{
    Write-Host "extract from $zipPath to $packagePath"
    Expand-Archive -Path $zipPath -DestinationPath $packagePath
}
else
{
    Write-Error "path $zipPath not found"
    return
}

$accountsModule = Join-Path $packagePath "Az.Accounts\Az.Accounts.psd1"
$sfModule = Join-Path $packagePath "Az.ServiceFabric\Az.ServiceFabric.psd1"
Import-Module $accountsModule
Import-Module $sfModule

$m = Get-Module Az.ServiceFabric
$m.ExportedCommands.GetEnumerator() | Where-Object { $_.Value -match "Managed" }

