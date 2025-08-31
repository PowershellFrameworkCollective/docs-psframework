---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version:
schema: 2.0.0
---

# Disable-PSFTaskEngineTask

## SYNOPSIS
Disables a task registered to the PSFramework task engine.

## SYNTAX

```
Disable-PSFTaskEngineTask [[-Name] <String[]>] [[-Task] <PsfTask[]>] [<CommonParameters>]
```

## DESCRIPTION
Disables a task registered to the PSFramework task engine.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFTaskEngineTask -Name 'mymodule.maintenance' | Disable-PSFTaskEngineTask
```

Disables the task named 'mymodule.maintenance'

## PARAMETERS

### -Name
Name of the task to disable.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Task
The task registered.
Must be a task object returned by Get-PSFTaskEngineTask.

```yaml
Type: PsfTask[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
