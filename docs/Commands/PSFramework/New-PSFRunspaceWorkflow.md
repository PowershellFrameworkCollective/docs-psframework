---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# New-PSFRunspaceWorkflow

## SYNOPSIS
Creates a new runspace workflow.

## SYNTAX

```
New-PSFRunspaceWorkflow [[-Name] <String>] [-Force] [<CommonParameters>]
```

## DESCRIPTION
Creates a new runspace workflow.
The workflow object is the core element of the runspace workflow system.

It contains the workers, runspaces and queues that execute the workflow.
All workflows are stored centrally and cen be retrieved using Get-PSFRunspaceWorkflow.
To ensure proper cleanup, remember to use Remove-PSFRunspaceWorkflow when completed.

## EXAMPLES

### EXAMPLE 1
```
New-PSFRunspaceWorkflow -Name 'MyModule.MyWorkflow
```

Creates a new Runspace Workflow with the name 'MyModule.MyWorkflow'

## PARAMETERS

### -Name
The name of the workflow to create.
Must be unique in the current runspace.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
Allows overwriting an existing workflow of the same name.
Note: Doing so will terminate all processing on the previous workflow.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
