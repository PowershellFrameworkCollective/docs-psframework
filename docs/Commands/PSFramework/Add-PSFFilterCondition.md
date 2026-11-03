---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Add-PSFFilterCondition
---

# Add-PSFFilterCondition

## Synopsis

Add a filter Condition to a Condition Set.

## Syntax

### ObjectName

```
Add-PSFFilterCondition -ConditionSet <ConditionSet> -Name <string[]> [-Module <string>]
 [<CommonParameters>]
```

### ObjectObject

```
Add-PSFFilterCondition -ConditionSet <ConditionSet> -Condition <Condition[]> [<CommonParameters>]
```

### NameName

```
Add-PSFFilterCondition -SetModule <string> -SetName <string> -Name <string[]> [-Module <string>]
 [<CommonParameters>]
```

### NameObject

```
Add-PSFFilterCondition -SetModule <string> -SetName <string> -Condition <Condition[]>
 [<CommonParameters>]
```

## Description

Add a filter Condition to a Condition Set.

## Examples

### EXAMPLE 1

```powershell
Add-PSFFilterCondition -ConditionSet $barFilter -Name 'FromCellar'
```

Adds the Condition "FromCellar" to the Condition Set stored in $barFilter.
The Condition is chosen from the same module as the the Condition Set.

## Parameters

### Condition

The condition object to add to the Condition Set.

```yaml
Type: PSFramework.Filter.Condition[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ObjectObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ConditionSet

The Condition Set object to add to.

```yaml
Type: PSFramework.Filter.ConditionSet
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ObjectName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ObjectObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Module

Name of the Module the Condition being added comes from.
Defaults to the Module of the Condition Set if not specified

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ObjectName
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

Name of the Condition to add to the Condition Set.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: ObjectName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SetModule

Module of the Condition Set to which to add to.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: NameObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SetName

Name of the Condition Set to which to add to.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NameName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: NameObject
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


