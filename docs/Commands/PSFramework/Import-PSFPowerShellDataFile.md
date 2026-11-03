---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Import-PSFPowerShellDataFile
---

# Import-PSFPowerShellDataFile

## Synopsis

A wrapper command around Import-PowerShellDataFile

## Syntax

### ByPath

```
Import-PSFPowerShellDataFile [[-Path] <string[]>] [-Psd1Mode <string>] [-Unsafe]
 [<CommonParameters>]
```

### ByLiteralPath

```
Import-PSFPowerShellDataFile [-LiteralPath <string[]>] [-Psd1Mode <string>] [-Unsafe]
 [<CommonParameters>]
```

## Description

A wrapper command around Import-PowerShellDataFile
This enables use of the command on PowerShell 3+ as well as during JEA endpoints.

Note: The protective value of Import-PowerShellDataFile is only offered when run on PS5+.
This is merely meant to provide compatibility in the scenarios, where the original command would fail!
If you care about PowerShell security, update to the latest version (in which case this command is still as secure as the default command, as that is what will actually be run).

Also supports importing Json files.

## Examples

### EXAMPLE 1

```powershell
Import-PSFPowerShellDataFile -Path .\data.psd1
```

Safely loads the data stored in data.psd1

### EXAMPLE 2

```powershell
Import-PSFPowerShellDataFile -Path .\data.json
```

Safely loads the data stored in data.json

## Parameters

### LiteralPath

The path from which to load the data file.
In opposite to the Path parameter, input here will not be interpreted.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- PSPath
ParameterSets:
- Name: ByLiteralPath
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

The path from which to load the data file.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByPath
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Psd1Mode

How psd1 files should be parsed.
Available modes:
- Classic: Only safe documents will be executed, and only the first hashtable will be processed.
        This option is only available on PowerShell v5 or later.
In older versions, this mode is automatically
  converted to "Safe"
 	- Safe: Only safe documents without executable code are processed, but any number of hashtables
  will be processed.
At the root level of the document, only hashtables or an array containing only
  hashtables may exist.
- Unsafe: Psd1 file is basically processed as if it were a ps1 file.
Both safe and unsafe modes respect Constrained Language Mode.

Defaults to "Classic"

```yaml
Type: System.String
DefaultValue: Classic
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

### Unsafe

This parameter has been deprecated and should no longer be used.
Use "-Psd1Mode Unsafe" instead.
Disables the protective value of Import-PowerShellDataFile.
This effectively runs the provided powershell scriptfile as untrusted scriptfile, no matter the environment.
By default, Import-PowerShellDataFile would only process the first hashtable, while unsafe mode allows files with multiple hashtables or more dynamic content.

Note: In environments with tight security constraints, the file imported will be executed in constrained lnguage mode, even if the source file is trusted.
Specifically, path-based rules will be ignored and .cab files will have no effect, but directly signed and trusted files will remain unconstrained.

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


