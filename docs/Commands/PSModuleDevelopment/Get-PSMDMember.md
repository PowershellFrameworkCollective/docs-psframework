---
document type: cmdlet
external help file: PSModuleDevelopment-Help.xml
HelpUri: https://go.microsoft.com/fwlink/?LinkID=113322
Locale: en-US
Module Name: PSModuleDevelopment
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Get-PSMDMember
---

# Get-PSMDMember

## Synopsis

Gets the properties and methods of objects.

## Syntax

### __AllParameterSets

```
Get-PSMDMember [[-Name] <string[]>] [-InputObject <psobject>] [-MemberType <PSMemberTypes>]
 [-View <PSMemberViewTypes>] [-ArgumentType <string>] [-ReturnType <string>] [-Static] [-Force]
 [<CommonParameters>]
```

## Description

The `Get-Member` cmdlet gets the members, the properties and methods, of objects.

To specify the object, use the **InputObject** parameter or pipe an object to `Get-Member`.
To get information about static members, the members of the class, not of the instance, use the **Static** parameter.
To get only certain types of members, such as **NoteProperties**, use the **MemberType** parameter.

`Get-Member` returns a list of members that's sorted alphabetically.
Methods are listed first, followed by the properties.

## Examples

### Get the members of process objects

```powershell
```


### Get members of service objects

```powershell
```


### Get extended members of service objects

```powershell
```


### Get script properties of event log objects

```powershell
```


### Get objects with a specified property

```powershell
```


### Get members for an array

```powershell
```


### Determine which object properties you can set

```powershell
```


### List the properties of an object in the order they were created

```powershell
```


## Parameters

### ArgumentType

{{ Fill ArgumentType Description }}

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

### Force

Adds the intrinsic members and the compiler-generated **get_** and **set_** methods to the display.
The following list describes the properties that are added when you use the **Force** parameter:

- `psbase`: The original properties of the .NET object without extension or adaptation.
These are
  the properties defined for the object class.
- `psadapted`: The properties and methods defined in the PowerShell extended type system.
- `psextended`: The properties and methods that were added in the `Types.ps1xml` files or using the
  `Add-Member` cmdlet.
- `psobject`: The adapter that converts the base object to a PowerShell **PSObject** object.
- `pstypenames`: A list of object types that describe the object, in order of specificity.
When
  formatting the object, PowerShell searches for the types in the `Format.ps1xml` files in the
  PowerShell installation directory (`$PSHOME`).
It uses the formatting definition for the first
  type that it finds.

By default, `Get-Member` gets these properties in all views except **Base** and **Adapted**, but
doesn't display them.

```yaml
Type: System.Management.Automation.SwitchParameter
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

Specifies the object whose members are retrieved.

Using the **InputObject** parameter isn't the same as piping an object to `Get-Member`.
The
differences are as follows:

- When you pipe a collection of objects to `Get-Member`, `Get-Member` gets the members of the
  individual objects in the collection, such as the properties of each string in an array of
  strings.
- When you use **InputObject** to submit a collection of objects, `Get-Member` gets the members of
  the collection, such as the properties of the array in an array of strings.

```yaml
Type: System.Management.Automation.PSObject
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

### MemberType

Specifies the member type that this cmdlet gets.
The default is `All`.

The acceptable values for this parameter are:

- `AliasProperty`
- `CodeProperty`
- `Property`
- `NoteProperty`
- `ScriptProperty`
- `Properties`
- `PropertySet`
- `Method`
- `CodeMethod`
- `ScriptMethod`
- `Methods`
- `ParameterizedProperty`
- `MemberSet`
- `Event`
- `Dynamic`
- `All`

These values are defined as a flag-based enumeration.
You can combine multiple values together to
set multiple flags using this parameter.
The values can be passed to the **MemberType** parameter as
an array of values or as a comma-separated string of those values.
The cmdlet will combine the
values using a binary-OR operation.
Passing values as an array is the simplest option and also
allows you to use tab-completion on the values.

For information about these values, see
[PSMemberTypes Enumeration](/dotnet/api/system.management.automation.psmembertypes).

Not all objects have every type of member.
If you specify a member type that the object doesn't
have, PowerShell returns a null value.
To get related types of members, such as all extended
members, use the **View** parameter.
If you use the **MemberType** parameter with the **Static** or
**View** parameters, `Get-Member` gets the members that belong to both sets.

```yaml
Type: System.Management.Automation.PSMemberTypes
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Type
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

Specifies the names of one or more properties or methods of the object.
`Get-Member` gets only the
specified properties and methods.

If you use the **Name** parameter with the **MemberType**, **View**, or **Static** parameter,
`Get-Member` gets only the members that satisfy the criteria of all parameters.

To get a static member by name, use the **Static** parameter with the **Name** parameter.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
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

### ReturnType

{{ Fill ReturnType Description }}

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

### Static

Indicates that this cmdlet gets only the static properties and methods of the object.
Static
properties and methods are defined on the class of objects, not on any particular instance of the
class.

If you use the **Static** parameter with the **View** or **Force** parameters, the cmdlet ignores
those parameters.
If you use the **Static** parameter with the **MemberType** parameter,
`Get-Member` gets only the members that belong to both sets.

```yaml
Type: System.Management.Automation.SwitchParameter
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

### View

Specifies that this cmdlet gets only particular types properties and methods.
Specify one or more of
the values.
The default is **Adapted**, **Extended**.

The acceptable values for this parameter are:

- Base.
Gets only the original properties and methods of the .NET object (without extension or
  adaptation).
- Adapted.
Gets only the properties and methods defined in the PowerShell extended type system.
- Extended.
Gets only the properties and methods that were added in a `Types.ps1xml` files or by
  using the `Add-Member` cmdlet.
- All.
Gets the members in the Base, Adapted, and Extended views.

The **View** parameter determines the members retrieved, not just the display of those members.

To get particular member types, such as script properties, use the **MemberType** parameter.
If you
use the **MemberType** and **View** parameters in the same command, `Get-Member` gets the members
that belong to both sets.
If you use the **Static** and **View** parameters in the same command, the
**View** parameter is ignored.

```yaml
Type: System.Management.Automation.PSMemberViewTypes
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

## Notes

PowerShell includes the following aliases for `Get-Member`:

- All platforms:
  - `gm`

You can get information about a collection object either using the **InputObject** parameter or by
piping the object, preceded by a comma, to `Get-Member`.

You can use the `$this` automatic variable in script blocks that define the values of new properties
and methods.
The `$this` variable refers to the instance of the object to which the properties and
methods are being added.
For more information about the `$this` variable, see
[about_Automatic_Variables](../Microsoft.PowerShell.Core/About/about_Automatic_Variables.md).

If you pass an object representing a _type_, like a type literal such as `[int]`, `Get-Member`
return information about the `[System.RuntimeType]` type.
However, when you use the **Static**
parameter, `Get-Member` returns the static members of the specific type represented by the
`System.RuntimeType` instance.


## Links

Microsoft.PowerShell.PlatyPS.Model.Links Microsoft.PowerShell.PlatyPS.Model.Links


