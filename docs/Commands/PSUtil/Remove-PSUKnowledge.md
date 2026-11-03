---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Remove-PSUKnowledge
---

# Remove-PSUKnowledge

## Synopsis

Removes pages from the books of your holy console library of knowledge.

## Syntax

### __AllParameterSets

```
Remove-PSUKnowledge [-Name] <string[]> [[-Book] <string>] [<CommonParameters>]
```

## Description

Removes pages from the books of your holy console library of knowledge.
Contribute new knowledge by using Write-PSUKnowledge or search it by using Read-PSUKnowlege.

## Examples

### EXAMPLE 1

```powershell
Remove-PSUKnowledge -Name 'DNS for Dummies'
```

Rips out the page 'DNS for Dummies' from your default book.

## Parameters

### Book

The book of knowledge to deface.
Defaults to the book specified under the 'PSUtil.Knowledge.DefaultBook' configuration setting.
It will look for books in your library path, which can be specified under 'PSUtil.Knowledge.LibraryPath'.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSUtil.Knowledge.DefaultBook')
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the page to rip out.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases:
- page
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


