---
sidebar_position: 6
---

# Scopes

## Introduction

Install-Module and Install-PSResource both offer two scopes to select where to install to:
`AllUsers` and `CurrentUser`.

These same options exist with `Install-PSFModule` but ... with the remoting capabilities and non-Windows OSes, a more flexible system became necessary.
For example, here is how `AllUsers` is implemented in `PSFramework.NuGet`:

```powershell
$code = {
    if ($PSVersionTable.PSVersion.Major -le 5) {
        return "$([Environment]::GetFolderPath("ProgramFiles"))\WindowsPowerShell\Modules"
    }
    if ($IsWindows) {
        return "$([Environment]::GetFolderPath("ProgramFiles"))\PowerShell\Modules"
    }
    '/usr/local/share/powershell/Modules'
}
$scopeParam = @{
    Name = 'AllUsers'
    ScriptBlock = $code
    Description = 'Default path for modules visible to all users.'
}
Register-PSFModuleScope @scopeParam
```

This way, even while installing to multiple remote systems _in parallel_ (`Install-PSFModule` multithreads using Runspaces), each computer will have it installed to the correct location, Windows or not.

## Static Scopes

Of course, a static scope - one where no code is executed - can be defined as well:

```powershell
Register-PSFModuleScope -Name Personal -Path C:\code\Modules -Description 'Personal local modules, not redirected to OneDrive documents'
Install-PSFModule -Name EntraAuth -Scope Personal
```

And to avoid having to do that again each time you start PowerShell - and to avoid having to put it into your $profile and force the module import into your console start - you can make PowerShell remember your choice:

```powershell
Register-PSFModuleScope -Name Personal -Path C:\code\Modules -Description 'Personal local modules, not redirected to OneDrive documents' -Persist
```

:::info
Persisting only works for static scopes, not for dynamic scopes.
:::

## Overriding defaults

This same can be used to override the default scopes if desired.
By default, when not specifying a scope or ComputerName, it will use the `CurrentUser` scope, no matter how that scope is configured.

```powershell
# This too can be persisted
Register-PSFModuleScope -Name CurrentUser -Path C:\code\Modules -Description 'Personal local modules, not redirected to OneDrive documents' -Persist

# Will now install to C:\code\Modules
Install-PSFModule -Name EntraAuth
```
