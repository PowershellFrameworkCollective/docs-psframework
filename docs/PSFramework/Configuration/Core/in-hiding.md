---
sidebar_position: 4
---

# In Hiding - Keeping secrets from your users.

## Synopsis

It is possible to hide configuration settings from your users.

## Description

Not all configuration settings need be easily accessible to your users.
Similar to how hidden files will only be shown when using the `-Force` parameter on `Get-ChildItem`,
hidden configuration settings will only be shown when using the `-Force` parameter on `Get-PSFConfig`.

In order to hide a setting, use the `-Hidden` switch when defining it with `Set-PSFConfig`.

## Example

```powershell
Set-PSFConfig MyModule.Setting.Name 42 -Hidden
```

With this, the setting `MyModule.Setting.Name` has been marked hidden and will not show up casually:

```powershell
#Returns nothing
Get-PSFConfig MyModule.*
```

However, it can still be searched if you are determined:

```powershell
Get-PSFConfig MyModule.* -Force`
```
