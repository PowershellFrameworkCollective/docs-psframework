---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFTempProvider
---

# Register-PSFTempProvider

## Synopsis

Register a plugin extending the ability to define and manage temporary items.

## Syntax

### __AllParameterSets

```
Register-PSFTempProvider [-Name] <string> [-ExistsScript] <scriptblock>
 [-DeleteScript] <scriptblock> [[-CreationScript] <scriptblock>] [<CommonParameters>]
```

## Description

Register a plugin extending the ability to define and manage temporary items.
The Temporary Item Provider implements the logic that makes a temporary item category possible.
Want to be able to define temporary user acounts?
Well, this is where you tell the system how that is supposed to work!

Example implementation:

Register-PSFTempProvider -Name TempFile -CreationScript {
	param ($Data)
	$newPath = Join-Path (Get-PSFPath temp) (Get-Random)
	New-Item -Path $newPath -ItemType File
} -ExistsScript {
	param ($Data, $CreationData)
	Test-Path $CreationData.FullName
} -DeleteScript {
	param ($Data, $CreationData)
	Remove-Item $CreationData.FullName
}

## Examples

### EXAMPLE 1

```powershell
Register-PSFTempProvider -Name 'aduser' -ExistsScript $existsScript -DeleteScript $deleteScript -CreationScript $creationScript
```

Registers a provider to create temporary ad users

## Parameters

### CreationScript

A scriptblock that is run during New-PSFTempItem.
It receives a single argument - $Data, as provided to the command - and is expected to perform any creation tasks that might be needed.
It should either return nothing, or return a single object, not a list of values.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: '{ }'
SupportsWildcards: false
Aliases: []
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

### DeleteScript

Scriptblock that will delete the temp item it is applied to.
Receives two arguments: $Data and $CreationData
The former is what was specified when running New-PSFTempItem, the latter what was returned as its result.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ExistsScript

A scriptblock that validates, whether a given item still exists.
Receives two arguments: $Data and $CreationData
The former is what was specified when running New-PSFTempItem, the latter what was returned as its result.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the Provider, which is referenced by temp items during their creation.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


