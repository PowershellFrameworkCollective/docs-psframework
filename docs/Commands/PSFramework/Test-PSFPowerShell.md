---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Test-PSFPowerShell
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Test-PSFPowerShell
---

# Test-PSFPowerShell

## Synopsis

Tests for conditions in the PowerShell environment.

## Syntax

### __AllParameterSets

```
Test-PSFPowerShell [[-PSMinVersion] <version>] [[-PSMaxVersion] <version>] [[-Edition] <PSEdition>]
 [[-OperatingSystem] <OperatingSystem>] [[-ComputerName] <ComputerParameter>]
 [[-Credential] <pscredential>] [-Elevated] [<CommonParameters>]
```

## Description

This helper command can evaluate various runtime conditions, such as:
- PowerShell Version
- PowerShell Edition
- Operating System
- Elevation
This makes it easier to do conditional code.
It also makes it easier to simulate code-paths during pester tests, by mocking this command.

## Examples

### EXAMPLE 1

```powershell
Test-PSFPowerShell -PSMinVersion 5.0
```

Will return $false, unless the executing powershell version is at least 5.0

### EXAMPLE 2

```powershell
Test-PSFPowerShell -Edition Core
```

Will return $true, if the current powershell session is a PowerShell core session.

### EXAMPLE 3

```powershell
Test-PSFPowerShell -Elevated
```

Will return $false if on windows and not running as admin.
Will return $true otherwise.

### EXAMPLE 4

```powershell
Test-PSFPowerShell -PSMinVersion 6.1 -OperatingSystem Windows
```

Will return $false unless executed on a PowerShell 6.1 console running on windows.

## Parameters

### ComputerName

The computer on which to test local PowerShell conditions.
If this parameter is not specified, it tests the current PowerShell process and hosting OS.
Accepts established PowerShell sessions.

```yaml
Type: PSFramework.Parameter.ComputerParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Credential

The credentials to use when connecting to a remote computer.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Edition

PowerShell must be running in the specifioed edition (Core or Desktop)

```yaml
Type: PSFramework.FlowControl.PSEdition
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Elevated

PowerShell must be running with elevation.

Note:
This test is only supported on Windows.
On other OS it will automatically succede and assume root privileges.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### OperatingSystem

PowerShell must be running on the specified OS.

```yaml
Type: PSFramework.FlowControl.OperatingSystem
DefaultValue: ''
SupportsWildcards: false
Aliases:
- OS
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PSMaxVersion

PowerShell most not be runnign on a version higher than this.

```yaml
Type: System.Version
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PSMinVersion

PowerShell must be running under at least this version.

```yaml
Type: System.Version
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


