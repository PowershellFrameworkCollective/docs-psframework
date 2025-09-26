---
sidebar_position: 2
---

# Installing PSFramework.NuGet

Generally, when documenting a module, we would skip the "How to install this?" step, as that is presumed completed.
With the very module designed to _help_ you with installing modules however, this becomes critical, as otherwise we risk leaving you facing the very problem you were looking for a solution for!

There are essentially two scenarios here:

1. Live install it from the internet
2. Offline transfer to an internal computer

## 1: From the Internet

There are three ways to install it from the internet:

+ A bootstrap script
+ The classic Package Management Tools with `Install-Module`
+ The newer Package Management Tools with `Install-PSResource`

> Bootstrap

Let's be honest here:
The main motivation most people will have to use this project is to get a simple, "Just make this work" effect.

The bootstrap way is exactly that.
It requires no setup, it requires no other tools than an arbitrary PowerShell console, and that's it:

```powershell
Invoke-WebRequest 'https://raw.githubusercontent.com/PowershellFrameworkCollective/PSFramework.NuGet/refs/heads/master/bootstrap.ps1' -UseBasicParsing | Invoke-Expression
```

This solution will load a bootstrap script from github (see url above) and then download all that is needed from the PowerShellGallery (without requiring the usual Package Management Tools).

> Install-Module

The classic way using a command available on every computer running PowerShell:

```powershell
Install-Module PSFramework.NuGet -Scope CurrentUser
```

Problem:
This may require some setting up - the very thing `PSFramework.NuGet` tries to help you with - so you may face a classic chicken/egg problem.

> Install-PSResource

This is automatically available on PowerShell version 7.4 or later:

```powershell
Install-PSResource PSFramework.NuGet
```

It offers better performance than `Install-Module` and needs no further setting up.
But it means you already installed the latest PowerShell version, rather than having to deal with the defaults offered out of the box.
Something not available to everybody.

## 2. Offline Transfer

To deploy `PSFramework.NuGet` to a computer without internet access, we need to execute two steps:

1. Download the modules needed to a folder
2. Copy modules to the other computer

> Download the modules needed to a folder

On an internet facing computer you have previously prepared (see "1: From the Internet"), download the modules needed like this:

```powershell
Save-PSFModule PSFramework.NuGet -Path .
```

This will download everything you need into the current folder your console is in.

:::info
Tip: Selecting an empty folder for this makes it easier to pick up what you need and not forget a dependency.
:::

> Copy modules to the other computer

Copy _all_ the folders (and their contents) to the target computer - via whatever way you transport files into your offline environment - and then place them where PowerShell looks for modules.

:::info
On a Windows computer, this is usually `C:\Program Files\WindowsPowerShell\Modules`
:::

You can find out where PowerShell looks for modules by querying the `PSModulePath` within a PowerShell console:

```powershell
$env:PSModulePath -split ";"
```

Any of the paths listed here will do, paths that point to a directory in your user profile only affect you, others - such as those under `Program Files` - will apply to all users on the computer.
