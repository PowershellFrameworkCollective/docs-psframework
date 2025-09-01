---
sidebar_position: 2
---

# Computer Parameter Class

## Synopsis

The computer parameter class is used to accept input that points at a computer.

## Description

The computer parameter class is used to accept input that points at a computer.

Out of the box it supports a wide range of objects identifying a computer (including specifically the output of `Get-ADComputer`).
These can be expanded upon, allowing even to accept named PSCustomObject items.

## Example

```powershell
[CmdletBinding()]
param (
    [string]
    $ComputerName
)
```

would become

```powershell
[CmdletBinding()]
param (
    [PSFComputer]
    $ComputerName
)
```

Within the function, no changes are necessary, unless string methods on the object are used. The command now understands PSSession objects, ADComputers, DNS resolution objects, ...

> Full Example

Whether `[string[]]` or `[PSFComputer[]]`, the code inside the command remains unaffected:

```powershell
function Get-OSInfo {
    [CmdletBinding()]
    param (
        [PSFComputer[]]
        $ComputerName,

        [pscredential]
        $Credential
    )

    $param = @{}
    if ($ComputerName) { $param.ComputerName = $ComputerName }
    if ($Credential) { $param.Credential = $Credential }

    Invoke-Command @param -ScriptBlock { Get-CimInstance win32_OperatingSystem }
}
```

## Reusing Sessions

`[PSFComputer]` accepts, among many other types, fully established PSRemoting sessions.
It would be great if they could be re-used, but `Invoke-Command`'s `-ComputerName` parameter will only use the text and establish a new session instead.
It would be possible to differentiate between each input, whether it is a session or not, but that would be bothersome and PSFramework is about making your coding life easier...

Fortunately, there is an `Invoke-PSFCommand` function to help out:

```powershell
function Get-OSInfo {
    [CmdletBinding()]
    param (
        [PSFComputer[]]
        $ComputerName,

        [pscredential]
        $Credential
    )

    $param = @{}
    if ($ComputerName) { $param.ComputerName = $ComputerName }
    if ($Credential) { $param.Credential = $Credential }

    Invoke-PSFCommand @param -ScriptBlock { Get-CimInstance win32_OperatingSystem }
}
```

With that, PSRemoting sessions are reused and new sessions are only established as needed.

## Properties

The object as the function sees it has the following properties:

```text
Name:        ComputerName
Description: The name of the host to use. Effectively the interpreted value of the input specified.
Mandatory:   Yes (will always be present)
```

```text
Name:        IsLocalhost
Description: Whether the computer points at the local machine.
Mandatory:   Yes (will always be present)
```

```text
Name:        Type
Description: What type of item was provided. Will be `Default` unless specific connection objects (CimSessions, PSSessions or SMO Server Objects) were specified.
Mandatory:   Yes (will always be present)
```

```text
Name:        InputObject
Description: The original input object the user specified. Allows reusing session objects.
Mandatory:   Yes (will always be present)
```

## Supported Input Types

+ string
+ DNS Name
+ SQL Instance names
+ PSSession objects
+ SQL Connection Strings
+ DNS Resolution objects
+ Ping Replys
+ IPAddresses
+ ADComputer objects
+ CimSession objects
+ ...

## Extending Support to new types

New supported types can be added at runtime by the user or by other modules as they are imported.

This allows having one module understand the output of commands from another, without the two being aware of each other.

Example on how to add a custom object as accepted input:

```powershell
$object = [PSCustomObject]@{
    PSTypeName = "Foo.Bar"
    Name       = "MyHost"
}
Register-PSFParameterClassMapping -ParameterClass Computer -TypeName Foo.Bar -Properties Name
[PSFComputer]$object
```
