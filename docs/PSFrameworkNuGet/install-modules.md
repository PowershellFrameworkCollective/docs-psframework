---
sidebar_position: 3
---

# Installing Modules

## Installation

### Simple Installation

```powershell
Install-PSFModule 'MyModule'
```

In opposite to the builtin tools, `Install-PSFModule` is going to return information about all modules deployed, including all dependencies.
For example, when installing the module `JEAnalyzer`, this might be the returned result:

```powershell
Install-PSFModule -Name JEAnalyzer
```

```text
Computername Module      Version  Success Message
------------ ------      -------  ------- -------
Server1      JEAnalyzer  1.3.19   True
Server1      PSFramework 1.13.406 True    Module already deployed
```

### Deploy via remoting

`Install-PSFModule` can install modules to remote computers, by using PowerShell Remoting.
In this case, it will download all required modules to the local computer running the console, and then deploy them to the remote computers as needed in parallel.

:::info
Only local computer running the command needs repository access.
:::

```powershell
Install-PSFModule 'MyModule' -ComputerName server1, server2
```

You can also establish a remoting session beforehand and use that, allowing you full control over how you connect to the remote computer, including the option to use SSH-based PS Remoting.

```powershell
$sessions = New-PSSession -VMName $servers -Credential $cred
Install-PSFModule 'MyModule' -ComputerName $sessions -ThrottleLimit 10
```

:::info
This remote deployment feature is cross-plattform compatible:
You can install from Windows to Linux or from Linux to Windows, so long as you manage a remoting session.

Even deploying to a mix between the two in one command is fully supported.
:::

### Picking a Repository

You can - as before with the builtin tools - select a specific [repository](repositories.md) to install from:

```powershell
Install-PSFModule 'MyModule' -Repository internal
```

This will only look for the requested module in [repositories](repositories.md) with that name.
If multiple repositories exist - one for PowerShellGet, another for PSResourceGet (see below) - it will default to the newer version.

To select which version to use, specify the `-Type` parameter:

```powershell
Install-PSFModule 'MyModule' -Repository internal -Type V2
```

### Other usages

:::info
Each of these options can be combined as desired
:::

> SkipDependenciesCheck

This will only install the specified module and none of its dependencies:

```powershell
Install-PSFModule 'MyModule' -SkipDependenciesCheck
```

:::info
This will now work even on PowerShellGet V2 or older, when used through `Install-PSFModule`.
:::

> [Scope](scopes.md)

While the full measure of what can be done with [scopes](scopes.md) is a topic for an [entire article](scopes.md) all on its own, a quick primer here seems needed.
The `-Scope` determines just where the module will be installed.

The default locations chosen are:

+ When installing locally, in the user specific path (On Windows: The documents folder). This is true, whether the console is running "As Admnistrator" or not.
+ When installing remotely, in the path for all users on that system (On Windows: Program Files). It uses the PowerShell version in the remote session to determine the correct location (So even if the local PowerShell console is running PowerShell 7+, if the remoting session runs under 5.1, it will deploy to the path suitable for 5.1).

There is a special scope predefined: `AllUsersWinPS`.
Using this scope allows the user to install a module in a path all PowerShell versions can handle, irrespective of whether the current console is on 5.1 or later:

```powershell
Install-PSFModule 'MyModule' -Scope AllUsersWinPS
```

> AuthenticodeCheck

By default, the code-signing of the installed modules is ignored.
It can be done, however:

```powershell
Install-PSFModule 'MyModule' -AuthenticodeCheck
```

With this, all signable files must be signed by a trusted certificate.
This does _not_ verify that the module can run on the local computer!
In a secured environment, policies might require specific certificates, so being trusted may not be enough.

> AcceptLicense

:::warning
There is actually no parameter to accept a specific license.
This will _always_ be included in each request, it is assumed you are aware of the licenses of the modules you are installing and consent to their conditions.
:::

### Saving Modules

Not always do you immediately install a module and make it available for everybody.
Sometimes, simply downloading to a specific path it is just what you want - for example, to do a manual validation, or to include it with a specific project.

Traditionally, you would be using `Save-Module` or `Save-PSResource` for this.
Now, we use `Save-PSFModule` instead:

```powershell
Save-PSFModule 'MyModule' -Path .
```

> Remote Deployment

As with `Install-PSFModule` it is possible to store the modules on a remote computer, instead of locally:

```powershell
Save-PSFModule 'MyModule' -Path C:\Scripts\Modules -ComputerName server1, server2, $session
```

## Remote Deployment Configuration

Using the `PSFramework` [Configuration System](../PSFramework/Configuration/overview.md), it is possible to define, how remote deployments are handled.
Specifically:

+ The default throttling limit, defining how many remote deployments happen in parallel.
+ The default Remoting Configuration to use, when creating new remoting sessions.

> Throttling Limit

Up to how many remote computers to deploy to in parallel.

+ Setting Name: `PSFramework.NuGet.Remoting.Throttling`
+ Default Value: 5

> Default Configuration

The PSSessionConfiguration to use when initializing new PS remoting sessions

+ Setting Name: `PSFramework.NuGet.Remoting.DefaultConfiguration`
+ Default Value: "Microsoft.PowerShell"

:::info
This setting has no effect when providing already established remoting sessions to the `-ComputerName` parameter.
:::

## Install-Module vs. Install-PSResource

:::info
PSFramework.NuGet is a wrapper around the official Microsoft Package Management Modules: `PowerShellGet` (`Install-Module`) and `Microsoft.PowerShell.PSResourceGet` (`Install-PSResource`).
It tries its best to make sure you do no have to care about which version you are using behind the scenes, by automatically enabling and selecting the tools actually available and retrofitting capabilities the older version never had.

When you want to explicitly select which version to use - generally through the `-Type` parameter - they are referred to as ...

+ `V2`: PowerShellGet
+ `V3`: Microsoft.PowerShell.PSResourceGet

In case both modules are available, PSFramework.Nuget will generally prefer using PSResourceGet by default.
:::
