---
document type: cmdlet
external help file: PSUtil-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSUtil
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Write-PSUKnowledge
---

# Write-PSUKnowledge

## Synopsis

Writes a piece of knowledge into the designated book.

## Syntax

### __AllParameterSets

```
Write-PSUKnowledge [-Name] <string> [-Text] <string> [[-Tags] <string[]>] [[-Book] <string>]
 [-EnableException] [<CommonParameters>]
```

## Description

Writes a piece of knowledge into the designated book.
This can be later retrieved using Read-PSUKnowledge.

"Books" are an arbitrary label grouping one or multiple pieces of text ("pages").
You could separate them by category (e.g.
"Active Directory" or "Exchagne Online") or by computer (e.g.
"Desktop", "Notebook", ...).

## Examples

### EXAMPLE 1

```powershell
Set-PSUKnowledge -Name 'DNS Queries' -Text $nslookupExplained -Tags dns, network, infrastructure
```

Defines a new page named "DNS Queries" with the text contained in $nslookupExplained.
It also adds a few tags to make searching for it later easier.

## Parameters

### Book

The book to write the content to.
Defaults to the book specified under the 'PSUtil.Knowledge.DefaultBook' configuration setting.
It will look for books in your library path, which can be specified under 'PSUtil.Knowledge.LibraryPath'.

```yaml
Type: System.String
DefaultValue: (Get-PSFConfigValue -FullName 'PSUtil.Knowledge.DefaultBook')
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

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

### Name

The name of the page to write.

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Tags

Additional tags to include.
Tags help find content later on.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Text

The page / text to write.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Page
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


