---
sidebar_position: 5
---

# Persistence: Purge

## Synopsis

Shows how to get rid of persisted settings.

## Description

Having settings that are automatically applied each time is all nice and dandy.
Until you want to get rid of them, that is.

Diggig through the registry and file system yourself isn't exactly convenient though.
Thus the command `Unregister-PSFConfig` was born:

```powershell
# Remove a single setting
Unregister-PSFConfig -FullName MyModule.Smtp.Server

# Clear all settings of the module
Unregister-PSFConfig -Module MyModule
```

> Note: This does not change settings in the current session. It merely prevents future sessions from receiving these sessions.

## Scope

By default, the user's registry node is targeted. Using the `-Scope` parameter, any (or all) other [locations](persistence-location.md) can be targeted.

## Finding persisted settings to purge

So far, this expects knowledge over what settings were persisted to begin with.
Fortunately there is a command that will list those settings:

```powershell
Get-PSFConfig -Persisted
```

So, clearing all persisted settings can be done thus:

```powershell
Get-PSFConfig -Persisted | Unregister-PSFConfig
```
