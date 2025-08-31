# Scenario: Persisted Cache

## Synopsis

A strategic guide to implementing the persisted cache feature.

## Description

The configuration system can be used to manage data caches.
It offers a simple abstraction to handle import/export of cached settings.
It also offers access to that cache across the entire process, irrespective of scope or runspace.

### Strengths

+ Automatic path management
+ Can integrate caches provided from multiple locations into a single, coherent picture.
+ Runspace-Unaware - a dedicated background runspace could maintain live data, while consuming runspaces could read from it.

### Weaknesses

+ Requires managing write conflicts in runspaced scenarios.

## Implementation

The implementation consists of four basic steps:

+ [Initializing](../Core/initialize.md) cached settings
+ [Importing cached data](../Persistence/persistence-module-cache.md)
+ Using configuration settings
+ [Exporting updated cached data](../Persistence/persistence-module-cache.md)

### Example

```powershell
# Initializing settings
Set-PSFConfig -Module MyModule -Name Example1 -Value 42 -Validation integer -Initialize -Description "Some arbitrary example setting that will not be part of the cache"
Set-PSFConfig -Module MyModule -Name Example2 -Value $true -Validation bool -Initialize -Description "Some arbitrary example setting that will not be part of the cache"

Set-PSFConfig -Module MyModule -Name Example3 -Value @() -ModuleExport -Hidden -Initialize -Description "Some arbitrary example setting that WILL be part of the cache"
Set-PSFConfig -Module MyModule -Name Example4 -Value @() -ModuleExport -Hidden -Initialize -Description "Some arbitrary example setting that WILL be part of the cache"
Set-PSFConfig -Module MyModule -Name Example5 -Value @() -ModuleExport -Hidden -Initialize -Description "Some arbitrary example setting that WILL be part of the cache"

# Importing existing cache
Import-PSFConfig -ModuleName MyModule

# Access cache value in code
Get-PSFConfigValue -FullName MyModule.Example3

# (later)Exporting the current in-memory settings marked for cache-persistence
Export-PSFConfig -ModuleName MyModule
```

### Resources

+ It is recommended, to set cached settings to `-Hidden`, [hiding](../Core/in-hiding.md) them from random user access.
+ The cache mechanism is handled more fully in the guide [Persistence: Module Cache](../Persistence/persistence-module-cache.md).
+ The [initialization process](../Core/initialize.md) is an intricate event affecting most scenarios.

### It's a runspace world

Using the cache in a runspaced scenario generally risks conflict, since each import in each runspace overwrites the current cache values with the persisted ones.
There are two basic ways to handle this:

+ Always update the persisted cache using `Export-PSFConfig` immediately after the in-memory version is changed.
This is easier to implement and minimizes the risk of collision.
+ Make cache updates / persistence the task of a dedicated runspace.
The `PSFramework` contains two solutions to implement dedicated runspace mechanisms:
Managed Runspaces (Solution documentation pending, uses the commands [Get-PSFRunspace](../../../Commands/PSFramework/Get-PSFRunspace.md), [Register-PSFRunspace](../../../Commands/PSFramework/Register-PSFRunspace.md), [Start-PSFRunspace](../../../Commands/PSFramework/Start-PSFRunspace.md) and [Stop-PSFRunspace](../../../Commands/PSFramework/Stop-PSFRunspace.md)) and Scheduled PowerShell Tasks (Solution Documentation pending, uses the commands [Disable-PSFTaskEngineTask](../../../Commands/PSFramework/Disable-PSFTaskEngineTask.md), [Enable-PSFTaskEngineTask](../../../Commands/PSFramework/Enable-PSFTaskEngineTask.md), [Get-PSFTaskEngineTask](../../../Commands/PSFramework/Get-PSFTaskEngineTask.md), [Register-PSFTaskEngineTask](../../../Commands/PSFramework/Register-PSFTaskEngineTask.md) and [Test-PSFTaskEngineTask](../../../Commands/PSFramework/Test-PSFTaskEngineTask.md)).
