---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSFRunspace
---

# Invoke-PSFRunspace

## Synopsis

Execute a scriptblock in parallel.

## Syntax

### __AllParameterSets

```
Invoke-PSFRunspace [-ScriptBlock] <scriptblock> [-InputObject <Object>] [-AsTask] [-Name <string>]
 [-OutputStyle <string>] [-ThrottleLimit <int>] [-Variables <hashtable>] [-Functions <hashtable>]
 [-Modules <Object[]>] [-ImportPSFramework] [-NoStreams]
 [-InitialSessionState <initialsessionstate>] [<CommonParameters>]
```

## Description

Execute a scriptblock in parallel.

This command offers two separate "modes" of operation:
- Similar to "ForEach-Object -Parallel" within a PowerShell pipeline.
- Similar to "Start-ThreadJob", in that it returns a task object you can collect reults from later.

In the former scenario, it offers redirecting all the streams (verbose, warning, errors, ...) for each task into the main runspace.
Supports importing variables into the background runspaces using the "$using:"-statement

## Examples

### EXAMPLE 1

```powershell
Get-ADUser -Filter * | Invoke-PSFRunspace { $_ | Get-ADPrincipalGroupMembership }
```

Retrieve all users from Active Directory, then retrieve their group memberships

### EXAMPLE 2

```powershell
Get-ADUser -Filter * | Invoke-PSFRunspace { $_ | Get-ADPrincipalGroupMembership } -OutputStyle Result
```

Retrieve all users from Active Directory, then retrieve their group memberships, returning a report object, mapping each user to their group memberships.

### EXAMPLE 3

```powershell
$task = Get-ADUser -Filter * | Invoke-PSFRunspace { $_ | Get-ADPrincipalGroupMembership }
PS C:\> $task.CollectResult()
```

First start searching for all users' group memberships.
Then later collect all the results in convenient result datasets, mapping input to output and including all errors / warnings / etc.

## Parameters

### AsTask

Rather than wait for the processing to complete, return an object representing the overall execution.
To collect the results, call one of the following methods on the object:
- Collect(): Wait until everything is completed and collect the output.
- CollectCurrent(): Collect the output of tasks that have completed so far
- CollectResult(): Wait until everything is completed and collect report objects for each item, including the different streams, input and output
- CollectCurrentResult(): Collect report objects for each task already completed, including the different streams, input and output

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

### Functions

Any functions to import into the background runspace.
Maps name to code.
Code can be either text or scriptblock:
- @{ 'Get-Example' = (Get-Command Get-Example).Definition }
- @{ 'Get-Example' = [scriptblock]::Create((Get-Command Get-Example).Definition) }

Note:
In a secured environment, where PowerShell Constrained Language Mode has been deployed, only the scriptblock-variant will work!

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{}'
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

### ImportPSFramework

Import the PSFramework into the background runspaces.

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

### InitialSessionState

A full initial session state object you preconfigured to operate the background tasks.
Note: Variables, type references & method invocations must work for this command to succeed.

```yaml
Type: System.Management.Automation.Runspaces.InitialSessionState
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

### InputObject

The items for which to execute the scriptblock.
One instance per item, whether piped or provided explicitly.

```yaml
Type: System.Object
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

### Modules

Any modules to include in the background runspaces.

```yaml
Type: System.Object[]
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

### Name

Name of the runspace workload.
Documentary only.
Defaults to: <undefined>

```yaml
Type: System.String
DefaultValue: <undefined>
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

### NoStreams

Do not redirect background streams into the streams of Invoke-PSFRunspace.
Has no effect when using either "-AsTask" or "-OutputStyle Result".

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

### OutputStyle

How should output be processed.
- Output: Produce the output of each task as output of this command.
Redirect all background-streams into this command's streams unless combined ith "-NoStreams"
- Result: Each task is completed with a results object, including the different streams, input and output
Has no effect when used with "-AsTask"
Defaults to: Output

```yaml
Type: System.String
DefaultValue: Output
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

### ScriptBlock

The code to execute in parallel.

```yaml
Type: System.Management.Automation.ScriptBlock
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

### ThrottleLimit

How man tasks are executed in parallel.
Defaults to: 5

```yaml
Type: System.Int32
DefaultValue: 5
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

Any variables to provide to the background runspaces.
Maps name to value.
You can also import variables into the background runspaces by using the "$using:"-statement

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{}'
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


