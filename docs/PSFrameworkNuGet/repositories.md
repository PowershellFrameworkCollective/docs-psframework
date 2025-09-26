---
sidebar_position: 4
---

# Repositories

## Listing, Creating and Updating

### Listing

You can list all currently available repositories using ...

```powershell
Get-PSFRepository
```

```text
Name      Type Status Trusted Priority Uri
----      ---- ------ ------- -------- ---
PSGallery V3   OK     True    50       https://www.powershellgallery.com/api/v2
PSGallery V2   OK     True    100      https://www.powershellgallery.com/api/v2
Fabrikam  V2   OK     True    100      C:\Scripts\Repository
```

:::info
Priority:
As this example shows, even repositories for PowerShellGet V2 (`Install-Module`, etc.) now have a `Priority` field.
When installing modules without specifying the repository to use, it will use the priority numbers across Get versions.
In case of a priority tie, V3 will take precedence over V2.
:::

### Creating

You can define a new repository by command or - see chapter below - [by Configuration](../PSFramework/Configuration/overview.md).

Example:

```powershell
Set-PSFRepository -Name Internal -Priority 80 -Trusted $true -Uri '\\contoso.com\IT\PowerShell\Repository' -Type Any
```

This will create an internal repository under `'\\contoso.com\IT\PowerShell\Repository'` named `internal`.

### Updating

Repositories can be updated in the same manner, that they are created:

```powershell
Set-PSFRepository -Name Internal -Trusted $false
```

:::info
Unless persisted, updates applied will be rolled back on next import, if the original definition was persisted.
:::

### Persisting

All calls to `Set-PSFRepository` may be made persistent using the `-Persist` parameter.
But what does that actually mean?

By default, if you create or modify a repository, this is passed through to the underlying PowerShellGet or PSResourceGet modules, depending on type (V2: PowerShellGet | V3: PSResourceGet).
These modules already maintain and persist their repository settings, which means the repository once created will still be there on the next launch, even without `-Persist`.
What then does `-Persist` do?

It registers the repository setting using the [PSFramework Configuration System](../PSFramework/Configuration/overview.md).
This means, on each module import, that desired setting is loaded and reapplied if needed.

Without `-Persist`, the repository can afterwards be manipulated, changed or removed without issue.
_With_ `-Persist` however, the configured setting will be reapplied - or, if needed, the entire repository recreated - to match that configured state.

### Type

The `-Type` parameter defines, what kind of repository gets created or updated:

+ Any: Will register as V3 if available, otherwise V2. Will not update to V3 if already on V2.
+ Update: Will register under highest version available, upgrading from older versions if already available on old versions
+ All: Will register on ALL available versions
+ V2: Will only register on V2. V3 - if present and configured - will be unregistered.
+ V2Preferred: Will only register on V2. If V2 does not exist, existing V3 repositories will be allowed.
+ V3: Will only register on V3. If V2 is present, it will be unregistered, irrespective of whether V3 is available.

## Credentials

Working with private repositories can be a bit of an annoyance.
Especially when you need to remember to always provide credentials with each request.

So, let's make this pain go away:

```powershell
# For the current session
Set-PSFRepository -Name AzDevOps -Credential $patCred

# Remember it going forward
Set-PSFRepository -Name AzDevOps -Credential $patCred -Persist
```

When defining `-Credential` for a repository, all future requests against that repository will automatically use those credentials, unless the command call explicitly specifies its own credentials.

## Deploy repositories by policy

Another pain is teaching each and every computer on where to get their modules.
Fortunately you can deploy them by using the [PSFramework Configuration System](../PSFramework/Configuration/overview.md).
There are several options to that, whether deploying a configuration file to the expected location, a registry key or even environment variables.

Example configuration Set for the repository-name "AzDevOps":

```text
PSFramework.NuGet.Repositories.AzDevOps.Uri: <url>
PSFramework.NuGet.Repositories.AzDevOps.Priority: 40
PSFramework.NuGet.Repositories.AzDevOps.Type: Any
PSFramework.NuGet.Repositories.AzDevOps.Trusted: 1
```

Or an example deployed to HKLM:

```text
Key: HKLM:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Default
```

Values:

|Name|Type|Value|
|---|---|---|
|PSFramework.NuGet.Repositories.AzDevOps.Uri|REG_SZ|String:`<url>`|
|PSFramework.NuGet.Repositories.AzDevOps.Priority|REG_SZ|Int:40|
|PSFramework.NuGet.Repositories.AzDevOps.Type|REG_SZ|String:Any|
|PSFramework.NuGet.Repositories.AzDevOps.Trusted|REG_SZ|Int:1|

:::info
These settings are applied as you import `PSFramework.NuGet`.
Without that, just trying to directly run the old `Install-Module` or `Install-PSResource` commands is not going to work out.

As `PSFramework.NuGet` wraps around the official modules, it registers those reposiories _to_ those modules, making them also visible to the native tools.
:::
