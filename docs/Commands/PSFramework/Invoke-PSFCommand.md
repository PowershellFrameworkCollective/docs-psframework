---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/docs/Commands/PSFramework/Invoke-PSFCommand
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Invoke-PSFCommand
---

# Invoke-PSFCommand

## Synopsis

An Invoke-Command wrapper with integrated session management.

## Syntax

### __AllParameterSets

```
Invoke-PSFCommand [[-ComputerName] <ComputerParameter[]>] [-ScriptBlock] <scriptblock>
 [[-ArgumentList] <Object[]>] [[-Credential] <pscredential>] [[-ThrottleLimit] <int>]
 [-HideComputerName] [<CommonParameters>]
```

## Description

This wrapper command around Invoke-Command allows conveniently calling remote calls.

- It uses the PSFComputer parameter class, and is thus a lot more flexible in accepted input
- It automatically reuses sessions specified for input
- It automatically establishes new sessions, tracks usage and retires sessions that have timed out.

Using this command, it is no longer necessary to first establish a connection and then manually handle the session object.
Just point the command at the computer and it will remember.
It also reuses sessions across multiple commands that call it.

Note:
Special connection conditions (like a custom application name, alternative authentication schemes, etc.) are not supported and require using New-PSSession to establish the connection.
Once that session has been established, the session object can be used with this command and will be used for command invocation.

## Examples

### EXAMPLE 1

```powershell
Invoke-PSFCommand -ScriptBlock $ScriptBlock
```

Runs the $scriptblock against the local computer.

### EXAMPLE 2

```powershell
Invoke-PSFCommand -ScriptBlock $ScriptBlock (Get-ADComputer -Filter "name -like 'srv-db*'")
```

Runs the $scriptblock against all computers in AD with a name that starts with "srv-db".

## Parameters

### ArgumentList

The arguments to pass into the scriptblock.

```yaml
Type: System.Object[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ComputerName

The computer(s) to invoke the command on.
Accepts all kinds of things that legally point at a computer, including DNS names, ADComputer objects, IP Addresses, SQL Server connection strings, CimSessions or PowerShell Sessions.
It will reuse PSSession objects if specified (and not include them in its session management).

```yaml
Type: PSFramework.Parameter.ComputerParameter[]
DefaultValue: $env:COMPUTERNAME
SupportsWildcards: false
Aliases:
- Session
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

### Credential

Credentials to use when establishing connections.
Note: These will be ignored if there already exists an established connection.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
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

### HideComputerName

Indicates that this cmdlet omits the computer name of each object from the output display.
By default, the name of the computer that generated the object appears in the display.

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

### ScriptBlock

The code to execute.

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

### ThrottleLimit

Specifies the maximum number of concurrent connections that can be established to run this command.
If you omit this parameter or enter a value of 0, the default value, 32, is used.

```yaml
Type: System.Int32
DefaultValue: 32
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


