---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Set-PSFDynamicContentObject
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Set-PSFDynamicContentObject
---

# Set-PSFDynamicContentObject

## Synopsis

Updates a value object that can easily be accessed on another runspace.

## Syntax

### Value

```
Set-PSFDynamicContentObject -Value <Object> [-Name <string[]>] [-Object <DynamicContentObject[]>]
 [-PassThru] [-Reset] [<CommonParameters>]
```

### Queue

```
Set-PSFDynamicContentObject -Queue [-Name <string[]>] [-Object <DynamicContentObject[]>] [-PassThru]
 [-Reset] [<CommonParameters>]
```

### Stack

```
Set-PSFDynamicContentObject -Stack [-Name <string[]>] [-Object <DynamicContentObject[]>] [-PassThru]
 [-Reset] [<CommonParameters>]
```

### List

```
Set-PSFDynamicContentObject -List [-Name <string[]>] [-Object <DynamicContentObject[]>] [-PassThru]
 [-Reset] [<CommonParameters>]
```

### Dictionary

```
Set-PSFDynamicContentObject -Dictionary [-Name <string[]>] [-Object <DynamicContentObject[]>]
 [-PassThru] [-Reset] [<CommonParameters>]
```

### Cache

```
Set-PSFDynamicContentObject -Cache [-Name <string[]>] [-Object <DynamicContentObject[]>] [-PassThru]
 [-Reset] [<CommonParameters>]
```

## Description

Updates a value object that can easily be accessed on another runspace.

The Dynamic Content Object system allows the user to easily have the content of a variable updated in the background.
The update is performed by this very function.

## Examples

### EXAMPLE 1

```powershell
Set-PSFDynamicContentObject -Name Test -Value $Value
```

Sets the Dynamic Content Object named "test" to the value $Value.

### EXAMPLE 2

```powershell
Set-PSFDynamicContentObject -Name MyModule.Value -Queue
```

Sets the Dynamic Content Object named "MyModule.Value" to contain a threadsafe queue.
This queue will be safe to enqueue and dequeue from, no matter the number of runspaces accessing it simultaneously.

## Parameters

### Cache

Set the object to be a threadsafe cache.
Safe to use in multiple runspaces in parallel.
Will not apply changes if the current value is already such an object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Cache
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Dictionary

Set the object to be a threadsafe dictionary.
Safe to use in multiple runspaces in parallel.
Will not apply changes if the current value is already such an object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Dictionary
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### List

Set the object to be a threadsafe list.
Safe to use in multiple runspaces in parallel.
Will not apply changes if the current value is already such an object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: List
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

The name of the value to update.
Not case sensitive.

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

### Object

The value object to update

```yaml
Type: PSFramework.Utility.DynamicContentObject[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### PassThru

Has the command returning the object just set.

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

### Queue

Set the object to be a threadsafe queue.
Safe to use in multiple runspaces in parallel.
Will not apply changes if the current value is already such an object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Queue
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Reset

Clears the dynamic content object's collection objects.
Use this to ensure the collection is actually empty.
Only used in combination of either -Queue, -Stack, -List or -Dictionary.

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

### Stack

Set the object to be a threadsafe stack.
Safe to use in multiple runspaces in parallel.
Will not apply changes if the current value is already such an object.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Stack
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Value

The value to apply

```yaml
Type: System.Object
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Value
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


