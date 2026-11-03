---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/New-PSFSupportPackage
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: New-PSFSupportPackage
---

# New-PSFSupportPackage

## Synopsis

Creates a package of troubleshooting information that can be used by developers to help debug issues.

## Syntax

### Path

```
New-PSFSupportPackage [-Path <string>] [-TaskRetentionCount <int>] [-Force] [-Include <SupportData>]
 [-Exclude <SupportData>] [-Variables <string[]>] [-ExcludeError] [-EnableException]
 [<CommonParameters>]
```

### Task

```
New-PSFSupportPackage -TaskName <string> [-TaskRetentionCount <int>] [-Force]
 [-Include <SupportData>] [-Exclude <SupportData>] [-Variables <string[]>] [-ExcludeError]
 [-EnableException] [<CommonParameters>]
```

## Description

This function creates an extensive debugging package that can help with reproducing and fixing issues.

The file will be created on the desktop by default and will contain quite a bit of information:
- OS Information
- Hardware Information (CPU, Ram, things like that)
- .NET Information
- PowerShell Information
- Your input history
- The In-Memory message log
- The In-Memory error log
- Screenshot of the console buffer (Basically, everything written in your current console, even if you have to scroll upwards to see it).

Use "Register-PSFSupportDataProvider" to add more information to include in the support package.
The zip-file contains a debug file with the extension ".clidat".
Use Import-PSFClixml to read this file.

## Examples

### EXAMPLE 1

```powershell
New-PSFSupportPackage
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file on the current user's desktop.

### EXAMPLE 2

```powershell
New-PSFSupportPackage -Path .
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file in the current path.

### EXAMPLE 3

```powershell
New-PSFSupportPackage -TaskName MyScript
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file in the dedicated debug path for this task.
By default, that path will be: %AppData%\PowerShell\PSFramework\Debug\MyScript

## Parameters

### EnableException

This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- Silent
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

### Exclude

Anything not to include in the export.
Use this to explicitly exclude content you do not wish to be part of the dump (for example for data protection reasons).

```yaml
Type: PSFramework.Utility.SupportData
DefaultValue: None
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

### ExcludeError

By default, the content of $Error is included, as it often can be helpful in debugging, even with error handling using the message system.
However, there can be rare instances where this will explode the total export size to gigabytes, in which case it becomes necessary to skip this.

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

### Force

Create the folder for the output path if needed.

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

### Include

What to include in the export.
By default, all is included.

```yaml
Type: PSFramework.Utility.SupportData
DefaultValue: All
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

### Path

The folder where to place the output xml in.
Defaults to your desktop.

```yaml
Type: System.String
DefaultValue: '"$($env:USERPROFILE)\Desktop"'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Path
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TaskName

Automatically write the debug dump to a managed debug dump folder associated with this task name.
By default, this path will be:
%AppData%\PowerShell\PSFramework\Debug\%TaskName%
This parameter is intended to have a script automatically create a debug dump in case of failure.
In that scenario, it is still necessary to call this command, for example during a trap statement before killing the script in failure.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Task
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TaskRetentionCount

The number of debug dumps associated with the chosen TaskName that will be retained.
Any excess debug dumps will be deleted, starting with the oldest.
Defaults to the value of the "Utility.SupportPackage.TaskDumpLimit" configuration setting, which by default is 10.

```yaml
Type: System.Int32
DefaultValue: (Get-PSFConfigValue -FullName 'PSFramework.Utility.SupportPackage.TaskDumpLimit')
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

### Variables

Name of additional variables to attach.
This allows you to add the content of variables to the support package, if you believe them to be relevant to the case.

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


