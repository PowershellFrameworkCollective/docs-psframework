---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Register-PSFModuleScope

## SYNOPSIS
Provide a scope you can install modules to.

## SYNTAX

### Path
```
Register-PSFModuleScope -Name <String> -Path <String> [-Mode <String>] [-Description <String>] [-Persist]
 [<CommonParameters>]
```

### Scriptblock
```
Register-PSFModuleScope -Name <String> -ScriptBlock <ScriptBlock> [-Description <String>] [<CommonParameters>]
```

## DESCRIPTION
Provide a scope you can install modules to.
Those are used by Install-PFModule to pick what path to install to.

## EXAMPLES

### EXAMPLE 1
```
Register-PSFModuleScope -Name WinPSAllUsers -Path 'C:\Program Files\WindowsPowerShell\Modules'
```

Registers the module-scope "WinPSAllusers" with the default path for Modules in Windows PowerShell.
This would allow installing modules for Windows PowerShell from PowerShell 7.

## PARAMETERS

### -Name
Name of the scope.
Must be unique, otherwise it will overwrite an existing scope.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
Path where modules should be stored.

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mode
Specifying a mode will add the path provided to the PSModulePath variable for this session.
- Append: Adds the path as the last option, making it the last location PowerShell will look for modules.
- Prepend: Adds the path as the first option, making it take precedence over all other module paths.

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
Logic determining, where modules should be stored.
This scriptblock will not receive any parameters.
Used to dynamically determine the path, may be executed against remote computers,
when installing to remote computers.
Keep in mind that dependencies may not be available.

```yaml
Type: ScriptBlock
Parameter Sets: Scriptblock
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
A description to add to the module scope registered.
Purely for documentation purposes.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Persist
Remember the configured scope.
For the current user, even when starting a new console, this scope will still exist.
This will NOT remember the "Mode" parameter - configure your PSModulePath environment evariable separately, if desired.
Not compatible with a ScriptBlock-based setting.

```yaml
Type: SwitchParameter
Parameter Sets: Path
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
