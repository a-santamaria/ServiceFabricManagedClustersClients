# ServiceFabricManagedClustersClients
Service Fabric Managed Clusters Clients


## Az Powershell Client

This a provisional way of loading Az.ServiceFabric with managed clusters cmdlets. The new oficial module will be published on 9/15/2020

### Download and load Modules

- Open a powershell window, download [LoadModules.ps1](./AzPowershellClient/LoadModules.ps1) and run

    ```powershell
    New-Item -ItemType Directory sfmcClients
    cd sfmcClients
    Invoke-WebRequest -Uri "https://github.com/a-santamaria/ServiceFabricManagedClustersClients/blob/master/AzPowershellClient/LoadModules.ps1?raw=true" -OutFile LoadModules.ps1
    LoadModules.ps1
    ```
    LoadModules will download [AzPackages.zip](./AzPowershellClient/AzPackages.zip) to the current folder, then it will extract it and load the modules

### Update with the latest

- Close any powershell session that has loaded the moduels and open a new one
- Go to sfmcClients folder
- Tun LoadModules.ps1 with -DownloadLatest

    ```powershell
    cd sfmcClients
    LoadModules.ps1 -DownloadLatest
    ```

### Documentation