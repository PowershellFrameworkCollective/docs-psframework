---
sidebar_position: 5
---

# Installing PowerShellGet

One of the classic problems:
To use `Install-Module` you first need to either bootstrap the preinstalled version or update to the latest version of PowerShellGet.
However, the bootstrap requires internet (problematic on an offline server) and the module update required PowerShellGet to already work - the classic Chicken-Egg problem.

So lets fix this:

```powershell
# Bootstrap Binaries for old Versions
Install-PSFPowerShellGet -Type V2Binaries -ComputerName server1, server2, server3

# Install Latest V2
Install-PSFPowerShellGet -Type V2Latest -ComputerName $sessions

# Install Latest V3
Install-PSFPowerShellGet -Type V3Latest -ComputerName $sessions
```

:::info
None of these require internet access, so long as `PSFramework.NuGet` is available.
:::

On that note, it is equally possible to distribute `PSFramework.NuGet` at scale, but that requires a PowerShell repository to be available.

```powershell
# Install PSFramework.NuGet on all machines
Install-PSFModule -Name PSFramework.NuGet -ComputerName $sessions
```
