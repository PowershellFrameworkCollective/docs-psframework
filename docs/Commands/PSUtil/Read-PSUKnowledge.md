---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Read-PSUKnowledge
---

# Read-PSUKnowledge

## Synopsis

Searches for knowledge.

## Syntax

### __AllParameterSets

```
Read-PSUKnowledge [[-Name] <string>] [-Tags <string[]>] [-Pattern <string>] [-Book <string>]
 [-Online] [<CommonParameters>]
```

## Description

Searches for knowledge.
Generally, knowledge must first be generated using Write-PSUKnowledge.
This allows these functions to server as a searchable notes section right within your console.

However, there might be some other ways to seek knowledge ...

## Examples

### EXAMPLE 1

```powershell
Read-PSUKnowledge
```

Lists all knowledge entries.

### EXAMPLE 2

```powershell
Read-PSUKnowledge -Tags DNS
```

Lists all knowledge entries with the tag "DNS"

### EXAMPLE 3

```powershell
read -p ldap
```

Lists all knowledge entries with the string "ldap" in name or text.

## Parameters

### Book

The book to search in.
By default you only have one and don't need to worry about this.

```yaml
Type: System.String
DefaultValue: '*'
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

### Name

The name of the knowledge entry.

```yaml
Type: System.String
DefaultValue: '*'
SupportsWildcards: false
Aliases:
- Page
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

### Online

Mysterious parameter.
I wonder what it does ...

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

### Pattern

Search Name and text of the page by using this regex pattern.

```yaml
Type: System.String
DefaultValue: .
SupportsWildcards: false
Aliases:
- p
- f
- filter
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

### Tags

Tags to search by.
At least one of the specified tags must be contained.

```yaml
Type: System.String[]
DefaultValue: ''
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


