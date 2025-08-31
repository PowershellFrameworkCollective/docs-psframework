---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Start-PSFRunspaceWorkflow

## SYNOPSIS
Starts a Runspace Workflow.

## SYNTAX

```
Start-PSFRunspaceWorkflow [[-Name] <String[]>] [[-InputObject] <RSWorkflow[]>] [-PassThru] [<CommonParameters>]
```

## DESCRIPTION
Starts a Runspace Workflow.
This will launch all workers and their associated runspaces.

Consider queuing input first (Write-PSFRunspaceQueue) before starting the workflow.

## EXAMPLES

### EXAMPLE 1
```
Start-PSFRunspaceWorkflow -Name MailboxAnalysis
```

Starts the Runspace Workflow "MailboxAnalysis"

### EXAMPLE 2
```
Get-PSFRunspaceWorkflow | Start-PSFRunspaceWorkflow
```

Start all Runspace Worklflow.

## PARAMETERS

### -Name
Name of the Runspace Workflow to launch.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InputObject
Runspace Workflow object to launch.

```yaml
Type: RSWorkflow[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Return the runspace workflow just started.

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

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://psframework.org/documentation/documents/psframework/runspace-workflows.html](https://psframework.org/documentation/documents/psframework/runspace-workflows.html)

