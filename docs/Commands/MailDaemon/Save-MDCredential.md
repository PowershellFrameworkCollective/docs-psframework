---
document type: cmdlet
external help file: MailDaemon-Help.xml
HelpUri: 
Locale: en-US
Module Name: MailDaemon
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Save-MDCredential
---

# Save-MDCredential

## Synopsis

Stores credentials securely for use by the specified account.

## Syntax

### __AllParameterSets

```
Save-MDCredential [-TargetCredential] <pscredential> [-Path] <string>
 [[-AccessAccount] <pscredential>] [[-ComputerName] <ComputerParameter[]>]
 [[-Credential] <pscredential>] [<CommonParameters>]
```

## Description

This command encrypts credentials to a protected credentials file in the file system.
This is designed to allow storing credential objects for use by scheduled task that run as SYSTEM or a service account.

## Examples

### EXAMPLE 1

```powershell
Save-MDCredential -ComputerName DC1,DC2,DC3 -TargetCredential $cred -Path "C:\ProgramData\PowerShell\Tasks\tesk1_credential.clixml"
```

Saves the credentials stored in $cred on the computers DC1, DC2, DC3 for use by the SYSTEM account

## Parameters

### AccessAccount

The account that should have access to the credential.
Defaults to the system account.
Offer a full credentials object for a regular user account.

```yaml
Type: System.Management.Automation.PSCredential
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

The computer(s) to write the credential to.

```yaml
Type: PSFramework.Parameter.ComputerParameter[]
DefaultValue: $env:COMPUTERNAME
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Credential

The credentials to use to authenticate to the target system.
NOT the credentials stored for reuse.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: ''
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

### Path

The path where to store the credential.
Always considered as local path from the computer it is registered on.

```yaml
Type: System.String
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

### TargetCredential

The credentials to encrypt and write to file.

```yaml
Type: System.Management.Automation.PSCredential
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


