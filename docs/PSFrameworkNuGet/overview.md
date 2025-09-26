---
sidebar_position: 1
---

# PSFramework.NuGet

Getting the right PowerShell module to right location can be a lot more challenging that it should be.
The builtin tools do not work out of the box, getting them to work usually involves solving a chicken/egg problem PowerShell neophytes are ill equipped to solve.

Even worse when you are on a computer without internet access.

This is the project to make the pain go away.
Simply importing this module will unblock all configuration blockers needed to get modules flowing!

> Key Features

+ Unlock Package Management Tools just by importing
+ Deploy powershell repositories via Group Policy, Intune, Config File, Environment Variable or other mechanisms
+ Simplify credential use for repositories requiring authentication
+ Remote deploy Package Management Tools
+ **Remote deploy modules from a jump host, removing the need to deploy repositories on every servers**
+ Transport arbitrary files in the same way you do modules

> Usage

For example, when you wanted to install a module, depending on which version you had available, you would originally call:

+ PowerShellGet v1-2: `Install-Module`
+ PowerShellGet v3+ (Microsoft.PowerShell.PSResourceGet): `Install-PSResource`

With the `PSFramework.NuGet` module, in both scenarios you would instead use:

```powershell
Install-PSFModule 'MyModule'
```

But now you can also do something like this:

```powershell
Install-PSFModule 'MyModule' -ComputerName server1, server2
```

Or this:

```powershell
$sessions = New-PSSession -VMName server1, server2, -Credential $cred
Install-PSFModule 'MyModule' -ComputerName $sessions
```
