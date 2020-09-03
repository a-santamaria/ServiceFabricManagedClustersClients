# Service Fabric Managed Clusters Clients
Azure clients to create and manage ManagedClusters and NodeTypes from the command line.

- [Az Powershell Client](#az-powershell-client-azservicefabric)
- [Azure CLI (az sf)](#azure-cli-az-sf)

## Az Powershell Client (Az.ServiceFabric)

The updated module with support for managed clusters will be released on 9/22/2020 [S175](https://github.com/Azure/azure-powershell/milestone/109).
This is a provisional way of loading Az.ServiceFabric with managed clusters cmdlets before the official release is available.

### Download and load Modules

- Open a powershell window, download [LoadModules.ps1](./AzPowershellClient/LoadModules.ps1) and run

    ```powershell
    New-Item -ItemType Directory sfmcClients
    cd sfmcClients
    Invoke-WebRequest -Uri "https://github.com/a-santamaria/ServiceFabricManagedClustersClients/blob/master/AzPowershellClient/LoadModules.ps1?raw=true" -OutFile LoadModules.ps1
    .\LoadModules.ps1
    ```

    LoadModules will download [AzPackages.zip](./AzPowershellClient/AzPackages.zip) to the current folder, then it will extract it and load the modules

### Update with the latest

- Close any powershell session that has loaded the moduels and open a new one, go to sfmcClients folder and run LoadModules.ps1 with -DownloadLatest

    ```powershell
    cd sfmcClients
    .\LoadModules.ps1 -DownloadLatest
    ```

### Documentation and Examples

• CRUD Managed Cluster
Command	  | Help Document
------------- | -------------
Create | [New-AzServiceFabricManagedCluster.md](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/New-AzServiceFabricManagedCluster.md)
Get | [Get-AzServiceFabricManagedCluster.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Get-AzServiceFabricManagedCluster.md )
Update | [Set-AzServiceFabricManagedCluster.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Set-AzServiceFabricManagedCluster.md )
Delete | [Remove-AzServiceFabricManagedCluster.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Remove-AzServiceFabricManagedCluster.md )

• Managed Cluster Actions
Command	  | Help Document
------------- | -------------
Add Client Cert | [Add-AzServiceFabricManagedClusterClientCertificate.md](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Add-AzServiceFabricManagedClusterClientCertificate.md)
Remove Client Cert | [Remove-AzServiceFabricManagedClusterClientCertificate.md](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Remove-AzServiceFabricManagedClusterClientCertificate.md)
    
• CRUD Managed Node type
Command	  | Help Document
------------- | -------------
Create| [New-AzServiceFabricManagedNodeType.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/New-AzServiceFabricManagedNodeType.md )
Get| [Get-AzServiceFabricManagedNodeType.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Get-AzServiceFabricManagedNodeType.md )
Update| [Set-AzServiceFabricManagedNodeType.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Set-AzServiceFabricManagedNodeType.md )
Delete| [Remove-AzServiceFabricManagedNodeType.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Remove-AzServiceFabricManagedNodeType.md )
    
• Managed Node type Actions
Command	  | Help Document
------------- | -------------
Restart nodes | [Restart-AzServiceFabricManagedNodeType.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Restart-AzServiceFabricManagedNodeType.md )
Reimage nodes | [Set-AzServiceFabricManagedNodeType.md -Reimage](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Set-AzServiceFabricManagedNodeType.md)
Delete nodes | [Remove-AzServiceFabricManagedNodeType.md  -NodeName ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Remove-AzServiceFabricManagedNodeType.md)
Add Vm Cert Secret | [Add-AzServiceFabricManagedNodeTypeVMSecret.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Add-AzServiceFabricManagedNodeTypeVMSecret.md )
Add Vm Extension | [Add-AzServiceFabricManagedNodeTypeVMExtension.md ](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Add-AzServiceFabricManagedNodeTypeVMExtension.md )
Delete Vm Extension | [Remove-AzServiceFabricManagedNodeTypeVMExtension.md](https://github.com/a-santamaria/azure-powershell/blob/sf_managedclusters/src/ServiceFabric/ServiceFabric/help/Remove-AzServiceFabricManagedNodeTypeVMExtension.md)


## Azure CLI (az sf)

Coming soon. The updated module with support for managed clusters will be release on 09/22/2020.