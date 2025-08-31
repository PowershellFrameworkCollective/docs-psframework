---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Register-PSFTypeAssemblyMapping

## SYNOPSIS
Adds a mapping path for assembly resolution when deserializing objects.

## SYNTAX

### Assembly
```
Register-PSFTypeAssemblyMapping -Name <String> -Assembly <Assembly> [<CommonParameters>]
```

### ShortName
```
Register-PSFTypeAssemblyMapping -ByShortName <String> [<CommonParameters>]
```

## DESCRIPTION
Adds a mapping path for assembly resolution when deserializing objects.

THIS ONLY APPLIES TO OBJECTS THAT USE THE PSFRAMEWORK TYPE CONVERTER!

When sending objects over process boundaries (e.g.
when remoting or using Import-/Export-PSFClixml),
objects get converted to XML and reconstituted / deserialized on the other end.
This leads to "Deserialized.*" objects that have most of the properties and none of the methods.

Using a PSTypeConverter as provided by the PSFramework, this fate can be avoided:
+ Get-PSFTypeSerializationData
+ Register-PSFTypeSerializationData
Can provide your own types a conversion path, that allows them to survive this process unharmed,
by telling PowerShell how to do the conversion.

This system is not quite perfect, however, as by default we need the exact same assembly (name, version, etc.) on both ends.
Different version numbers?
Changed the name?
Tough luck ...

This is where the Assembly Mapping feature comes in, assuming you use the default PSFramework type converter:
Use this command to tell the system that just the simple name is enough, or point an old name to a new name!

Redirection only happens when the originally expected assembly is not available.

## EXAMPLES

### EXAMPLE 1
```
Register-PSFTypeAssemblyMapping -Name '1s445vjt.n1r, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null' -Assembly ([Foo.Bar].Assembly)
```

Redirects requests for '1s445vjt.n1r, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null' to the assembly implementing the type \[Foo.Bar\].

### EXAMPLE 2
```
Register-PSFTypeAssemblyMapping -Name '^MyProject,' -Assembly ([MyProject.User].Assembly)
```

Redirects requests for assemblies starting with the name 'MyProject,' to the assembly implementing \[MyProject.User\].

### EXAMPLE 3
```
Register-PSFTypeAssemblyMapping -Name MyProject
```

All requests for the assembly with the shortname "MyProject" will now ignore assembly versions.

## PARAMETERS

### -Name
Full name or regex pattern for an assembly name.
The name of the assembly you want to point to a new assembly.

```yaml
Type: String
Parameter Sets: Assembly
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Assembly
The new assembly to use instead of the one under the previous name.

```yaml
Type: Assembly
Parameter Sets: Assembly
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ByShortName
The assembly with this specified short name uses only its short name to match the destination assembly.
Use this to ignore issues with changing assembly version numbers.

```yaml
Type: String
Parameter Sets: ShortName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
