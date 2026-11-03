---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: 
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDHelp
---

# Get-PSMDHelp

## Synopsis

Displays localized information about Windows PowerShell commands and concepts.

## Syntax

### AllUsersView

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] [-Full] [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

### Parameters

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] -Parameter <string> [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

### Online

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] -Online [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

### ShowWindow

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] -ShowWindow [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

### DetailedView

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] -Detailed [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

### Examples

```
Get-PSMDHelp [[-Name] <string>] [[-Language] <string>] -Examples [-Category <string[]>]
 [-Component <string[]>] [-SetLanguage <string>] [-Path <string>] [-Functionality <string[]>]
 [-Role <string[]>] [<CommonParameters>]
```

## Description

The Get-PSMDHelp function is a wrapper around get-help that allows localizing help queries.
This is especially useful when developing modules with help in multiple languages.

## Examples

### EXAMPLE 1

```powershell
Get-PSMDHelp Get-Help "en-us" -Detailed
```

Gets the detailed help text of Get-Help in English

## Parameters

### Category

Displays help only for items in the specified category and their aliases.
Valid values are Alias, Cmdlet,
Function, Provider, Workflow, and HelpFile.
Conceptual topics are in the HelpFile category.

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

### Component

Displays commands with the specified component value, such as "Exchange." Enter a component name.
Wildcards are permitted.

This parameter has no effect on displays of conceptual ("About_") help.

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

### Detailed

Adds parameter descriptions and examples to the basic help display.

This parameter is effective only when help files are for the command are installed on the computer.
It has no effect on displays of conceptual ("About_") help.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DetailedView
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Examples

Displays only the name, synopsis, and examples.
To display only the examples, type "(Get-PSMDHelpEx <cmdlet-name>).Examples".

This parameter is effective only when help files are for the command are installed on the computer.
It has no effect on displays of conceptual ("About_") help.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Examples
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Full

Displays the entire help topic for a cmdlet, including parameter descriptions and attributes, examples, input and output object types, and additional notes.

This parameter is effective only when help files are for the command are installed on the computer.
It has no effect on displays of conceptual ("About_") help.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllUsersView
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Functionality

Displays help for items with the specified functionality.
Enter the functionality.
Wildcards are permitted.

This parameter has no effect on displays of conceptual ("About_") help.

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

### Language

Set the language of the help returned.
Use 5-digit language codes such as "en-us" or "de-de".
Note: If PowerShell does not have help in the language specified, it will either return nothing or default back to English

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Gets help about the specified command or concept.
Enter the name of a cmdlet, function, provider, script, or
workflow, such as "Get-Member", a conceptual topic name, such as "about_Objects", or an alias, such as "ls".
Wildcards are permitted in cmdlet and provider names, but you cannot use wildcards to find the names of
function help and script help topics.

To get help for a script that is not located in a path that is listed in the Path environment variable, type
the path and file name of the script .

If you enter the exact name of a help topic, Get-Help displays the topic contents.
If you enter a word or word
pattern that appears in several help topic titles, Get-Help displays a list of the matching titles.
If you
enter a word that does not match any help topic titles, Get-Help displays a list of topics that include that
word in their contents.

The names of conceptual topics, such as "about_Objects", must be entered in English, even in non-English versions of Windows PowerShell.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Online

Displays the online version of a help topic in the default Internet browser.
This parameter is valid only for
cmdlet, function, workflow and script help topics.
You cannot use the Online parameter in Get-Help commands in
a remote session.

For information about supporting this feature in help topics that you write, see about_Comment_Based_Help
(http://go.microsoft.com/fwlink/?LinkID=144309), and "Supporting Online Help"
(http://go.microsoft.com/fwlink/?LinkID=242132), and "How to Write Cmdlet Help"
(http://go.microsoft.com/fwlink/?LinkID=123415) in the MSDN (Microsoft Developer Network) library.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Online
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Parameter

Displays only the detailed descriptions of the specified parameters.
Wildcards are permitted.

This parameter has no effect on displays of conceptual ("About_") help.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Parameters
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Path

Gets help that explains how the cmdlet works in the specified provider path.
Enter a Windows PowerShell provider path.

This parameter gets a customized version of a cmdlet help topic that explains how the cmdlet works in the
specified Windows PowerShell provider path.
This parameter is effective only for help about a provider cmdlet
and only when the provider includes a custom version of the provider cmdlet help topic  in its help file.
To
use this parameter, install the help file for the module that includes the provider.

To see the custom cmdlet help for a provider path, go to the provider path location and enter a Get-Help
command or, from any path location, use the Path parameter of Get-Help to specify the provider path.
You can
also find custom cmdlet help online in the provider help section of the help topics.
For example, you can find
help for the New-Item cmdlet in the Wsman:\*\ClientCertificate path
(http://go.microsoft.com/fwlink/?LinkID=158676).

For more information about Windows PowerShell providers, see about_Providers
(http://go.microsoft.com/fwlink/?LinkID=113250).

```yaml
Type: System.String
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

### Role

Displays help customized for the specified user role.
Enter a role.
Wildcards are permitted.

Enter the role that the user plays in an organization.
Some cmdlets display different text in their help files
based on the value of this parameter.
This parameter has no effect on help for the core cmdlets.

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

### SetLanguage

Sets the language of the current and all subsequent help queries.
Use 5-digit language codes such as "en-us" or "de-de".
Note: If PowerShell does not have help in the language specified, it will either return nothing or default back to English

```yaml
Type: System.String
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

### ShowWindow

Displays the help topic in a window for easier reading.
The window includes a "Find" search feature and a
"Settings" box that lets you set options for the display, including options to display only selected sections
of a help topic.

The ShowWindow parameter supports help topics for commands (cmdlets, functions, CIM commands, workflows,
scripts) and conceptual "About" topics.
It does not support provider help.

This parameter is introduced in Windows PowerShell 3.0.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ShowWindow
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


