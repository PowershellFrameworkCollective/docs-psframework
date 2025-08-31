---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# New-PSFSupportPackage

## SYNOPSIS
Creates a package of troubleshooting information that can be used by developers to help debug issues.

## SYNTAX

### Path (Default)
```
New-PSFSupportPackage [-Path <String>] [-TaskRetentionCount <Int32>] [-Force] [-Include <SupportData>]
 [-Exclude <SupportData>] [-Variables <String[]>] [-ExcludeError] [-EnableException] [<CommonParameters>]
```

### Task
```
New-PSFSupportPackage -TaskName <String> [-TaskRetentionCount <Int32>] [-Force] [-Include <SupportData>]
 [-Exclude <SupportData>] [-Variables <String[]>] [-ExcludeError] [-EnableException] [<CommonParameters>]
```

## DESCRIPTION
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

## EXAMPLES

### EXAMPLE 1
```
New-PSFSupportPackage
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file on the current user's desktop.

### EXAMPLE 2
```
New-PSFSupportPackage -Path .
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file in the current path.

### EXAMPLE 3
```
New-PSFSupportPackage -TaskName MyScript
```

Creates a large support pack in order to help troubleshoot whatever went wrong in the current session.
The support pack will be written to a zip file in the dedicated debug path for this task.
By default, that path will be: %AppData%\PowerShell\PSFramework\Debug\MyScript

## PARAMETERS

### -Path
The folder where to place the output xml in.
Defaults to your desktop.

```yaml
Type: String
Parameter Sets: Path
Aliases:

Required: False
Position: Named
Default value: "$($env:USERPROFILE)\Desktop"
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaskName
Automatically write the debug dump to a managed debug dump folder associated with this task name.
By default, this path will be:
%AppData%\PowerShell\PSFramework\Debug\%TaskName%
This parameter is intended to have a script automatically create a debug dump in case of failure.
In that scenario, it is still necessary to call this command, for example during a trap statement before killing the script in failure.

```yaml
Type: String
Parameter Sets: Task
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TaskRetentionCount
The number of debug dumps associated with the chosen TaskName that will be retained.
Any excess debug dumps will be deleted, starting with the oldest.
Defaults to the value of the "Utility.SupportPackage.TaskDumpLimit" configuration setting, which by default is 10.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Get-PSFConfigValue -FullName 'Utility.SupportPackage.TaskDumpLimit')
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Create the folder for the output path if needed.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Include
What to include in the export.
By default, all is included.

```yaml
Type: SupportData
Parameter Sets: (All)
Aliases:
Accepted values: None, Message, ErrorMessage, Messages, Screenshot, OperatingSystem, CPU, Ram, Environment, PSVersion, History, Module, SnapIns, Assemblies, PSResource, Exceptions, Critical, ExtensionData, All

Required: False
Position: Named
Default value: All
Accept pipeline input: False
Accept wildcard characters: False
```

### -Exclude
Anything not to include in the export.
Use this to explicitly exclude content you do not wish to be part of the dump (for example for data protection reasons).

```yaml
Type: SupportData
Parameter Sets: (All)
Aliases:
Accepted values: None, Message, ErrorMessage, Messages, Screenshot, OperatingSystem, CPU, Ram, Environment, PSVersion, History, Module, SnapIns, Assemblies, PSResource, Exceptions, Critical, ExtensionData, All

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Variables
Name of additional variables to attach.
This allows you to add the content of variables to the support package, if you believe them to be relevant to the case.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExcludeError
By default, the content of $Error is included, as it often can be helpful in debugging, even with error handling using the message system.
However, there can be rare instances where this will explode the total export size to gigabytes, in which case it becomes necessary to skip this.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableException
This parameters disables user-friendly warnings and enables the throwing of exceptions.
This is less user friendly, but allows catching exceptions in calling scripts.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: Silent

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
