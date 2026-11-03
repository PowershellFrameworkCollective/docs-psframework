---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Register-PSFMessageTransform
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Register-PSFMessageTransform
---

# Register-PSFMessageTransform

## Synopsis

Registers a scriptblock that can transform message content.

## Syntax

### Target

```
Register-PSFMessageTransform -TargetType <string> -ScriptBlock <scriptblock> [<CommonParameters>]
```

### Exception

```
Register-PSFMessageTransform -ExceptionType <string> -ScriptBlock <scriptblock> [<CommonParameters>]
```

### TargetFilter

```
Register-PSFMessageTransform -ScriptBlock <scriptblock> -TargetTypeFilter <string>
 [-FunctionNameFilter <Object>] [-ModuleNameFilter <Object>] [<CommonParameters>]
```

### ExceptionFilter

```
Register-PSFMessageTransform -ScriptBlock <scriptblock> -ExceptionTypeFilter <string>
 [-FunctionNameFilter <Object>] [-ModuleNameFilter <Object>] [<CommonParameters>]
```

## Description

Registers a scriptblock that can transform message content.
This can be used to convert some kinds of input.
Specifically:

Target:
When specifying a target, this target may require some conversion.
For example, an object containing a live connection may need to have a static copy stored instead,
as otherwise its export on a different runspace may cause access violations.

Exceptions:
Some exceptions may need transforming.
For example some APIs might wrap the actual exception into a common wrapper.
In this scenario you may want the actual exception in order to provide more specific information.

In all instances, the scriptblock will be called, receiving only the relevant object as its sole input.

Note: This transformation is performed synchronously on the active runspace.
Complex scriptblocks may delay execution times when a matching object is passed.

## Examples

### EXAMPLE 1

```powershell
Register-PSFMessageTransform -TargetType 'mymodule.category.classname' -ScriptBlock $ScriptBlock
```

Whenever a target object of type 'mymodule.category.classname' is specified, invoke $ScriptBlock (with the object as sole argument) and store the result as target instead.

### EXAMPLE 2

```powershell
Register-PSFMessageTransform -ExceptionType 'mymodule.category.exceptionname' -ScriptBlock $ScriptBlock
```

Whenever an exception or error record of type 'mymodule.category.classname' is specified, invoke $ScriptBlock (with the object as sole argument) and store the result as exception instead.
If the full error record is specified, only the updated exception will be inserted

### EXAMPLE 3

```powershell
Register-PSFMessageTransform -TargetTypeFilter 'mymodule.category.*' -ScriptBlock $ScriptBlock
```

Adds a transform for all target objects that are of a type whose full name starts with 'mymodule.category.'
All target objects matching that typename will be run through the specified scriptblock, which in return generates the new target object.

## Parameters

### ExceptionType

The full typename of the exception object to apply the scriptblock to.
All objects of that typename will be processed through that scriptblock.
Note: In case of error records, the type of the Exception Property is inspected.
The error record as a whole will not be touched, except for having its exception exchanged.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Exception
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ExceptionTypeFilter

A filter for the typename of the exception object to transform.
Supports wildcards, but not regex.
WARNING: Adding too many filter-type transforms may impact overall performance, try to avoid using them!

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionFilter
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### FunctionNameFilter

Default: "*"
Allows filtering by function name, in order to consider whether the function is affected.
Supports wildcards, but not regex.
WARNING: Adding too many filter-type transforms may impact overall performance, try to avoid using them!

```yaml
Type: System.Object
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: TargetFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ModuleNameFilter

Default: "*"
Allows filtering by module name, in order to consider whether the function is affected.
Supports wildcards, but not regex.
WARNING: Adding too many filter-type transforms may impact overall performance, try to avoid using them!

```yaml
Type: System.Object
DefaultValue: '*'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ExceptionFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: TargetFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptBlock

The scriptblock that performs the transformation.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TargetType

The full typename of the target object to apply the scriptblock to.
All objects of that typename will be processed through that scriptblock.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Target
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TargetTypeFilter

A filter for the typename of the target object to transform.
Supports wildcards, but not regex.
WARNING: Adding too many filter-type transforms may impact overall performance, try to avoid using them!

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: TargetFilter
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


