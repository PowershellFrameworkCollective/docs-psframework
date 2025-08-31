---
sidebar_position: 2
---

# Persistence: Location

## Synopsis

The comprehensive lists of from where PSFramework looks for settings to import.

## Description

The PSFramework handles path management when loading and persistign configuration values.
Thanks to that, in most situations you do not need to explicitly pick one for yourself.

There are basically two elements of the configuration system that use managed paths:

+ [Automatic Import](../Core/basics.md)
+ [Module Cache](../Scenarios/scenario-cache.md)

## Automatic Import

### Registry: Per User, default (Scope: UserDefault)

The "per user, default" location is the default location on Windows for `Register-PSFConfig`.

|||
|---|---|
| Path | HKCU:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Default |
| Priority | 4 |

> Note: Registry locations are only available on Windows Computers.

### Registry: Per User, enforced (Scope: UserMandatory)

The "per user, enforced" location is similar to the "per user, default" location, except that after enforcing a setting, further attempts to change it will be ignored.
This allows a user to resist undesired configuration changes brought upon by other code and offers a way for administrators to enforce settings.

|||
|---|---|
| Path | HKCU:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Enforced |
| Priority | 2 |

> Note: Registry locations are only available on Windows Computers.

### Registry: Local Computer, default (Scope: SystemDefault)

The "local computer, default" location is the ideal location to apply sane default values by group policy.
It is superseeded by most other locations and does not enforce settings in any way.

|||
|---|---|
| Path | HKLM:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Default |
| Priority | 6 |

> Note: Registry locations are only available on Windows Computers.

### Registry: Local Computer, enforced (Scope: SystemMandatory)

The "local computer, enforced" location is the big hammer in an admin's arsenal.
Using this location - which takes precedence over all other locations - it becomes possible to enforce settings for all users on a machine.
Later attempts to change a setting thus enforced will fail.

|||
|---|---|
| Path | HKLM:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Enforced |
| Priority | 1 |

> Note: Registry locations are only available on Windows Computers.

### File: Per User, local computer (Scope: FileUserLocal)

The "File: per user, local computer" location is specific to the user and specific to the local computer.
As such, it should not be replicated to other machines.

> Note: All config files named like `"psf_config_*.json"` will be picked up and merged.

|||
|---|---|
| Path (Windows; PS Desktop) | $Env:LocalAppData\WindowsPowerShell\PSFramework\Config |
| Path (Windows; PS Core) | $Env:LocalAppData\PowerShell\PSFramework\Config |
| Path (non-Windows; Default) | $Env:XDG_CONFIG_HOME/PowerShell/PSFramework/ |
| Path (non-Windows; Alternative) | $HOME/.config/PowerShell/PSFramework/ |
| Priority | 3 |

### File: Per User, shared (Scope: FileUserShared)

The "File: per user, shared" location is specific to the user and should be shared among roamed profiles.
Using this is a good way in windows to have different settings between PS Core and PS Desktop.

> Note: All config files named like `"psf_config_*.json"` will be picked up and merged.

|||
|---|---|
| Path (Windows; PS Desktop) | $Env:AppData\WindowsPowerShell\PSFramework\Config |
| Path (Windows; PS Core) | $Env:AppData\PowerShell\PSFramework\Config |
| Path (non-Windows; Default) | $($Env:XDG_CONFIG_DIRS.Split("/")[0])/PowerShell/PSFramework/ |
| Path (non-Windows; Alternative) | $HOME/.local/share/PowerShell/PSFramework/ |
| Priority | 5 |

### File: Local Computer (Scope: FileSystem)

The file-based local computer location is one of the lowest priority location among all locations.
Use this for simple default settings on a machine, especially on non-windows machines.

> Note: All config files named like `"psf_config_*.json"` will be picked up and merged.

|||
|---|---|
| Path (Windows; PS Desktop) | $Env:ProgramData\WindowsPowerShell\PSFramework\Config |
| Path (Windows; PS Core) | $Env:ProgramData\PowerShell\PSFramework\Config |
| Path (non-Windows; Default) | $($Env:XDG_CONFIG_DIRS.Split("/")[1])/PowerShell/PSFramework/ |
| Path (non-Windows; Alternative) | /etc/xdg/PowerShell/PSFramework/ |
| Priority | 7 |

### Environment Simplified (Scope: EnvironmentSimple)

PSFramework can read configuration settings straight from environment variables.
This is notably convenient in the following scenarios:

+ Copying settings to child processes, asa they inherit environment variables from parents.
+ CI/CD pipelines can often be configured via environment variables.
+ Container deployments.

Simple environment settings support only a subset of data types:

+ Number
+ Boolean
+ DateTime timestamps
+ Strings
+ Arrays

Configuration Validation might be able to further coerce its tyoe into its intended form.

|||
|---|---|
| Naming | `PSF_<Setting Name>` |
| Priority | 9 |

### Environment Full (Scope: Environment)

PSFramework can read configuration settings straight from environment variables.
This is notably convenient in the following scenarios:

+ Copying settings to child processes, asa they inherit environment variables from parents.
+ CI/CD pipelines can often be configured via environment variables.
+ Container deployments.

The full environment settings support the full range of data types the configuration enables, but at the cost of some convenience:
Values must by type-qualified.
E.g.:

```text
Int:42
```

To convert your data into the correct format, run this one-liner:

```powershell
# Example data
$data = 42

# Convert
[PSFramework.Configuration.ConfigurationHost]::ConvertToPersistedValue($data).TypeQualifiedPersistedValue
```

|||
|---|---|
| Naming | `PSFramework_<Setting Name>` |
| Priority | 8 |

## Module Cache

The [Module Cache feature](../Scenarios/scenario-cache.md) uses the same file-based - but only the file-based - locations as the automatically imported configuration is.
The main difference is in the file name:

```text
<modulename>.<version>.json
```

It respects the same priority as the automatically imported configuration settings.
Both name and version are provided by the module when calling `Import-PSFConfig` and `Export-PSFConfig` (Version defaults to 1).
