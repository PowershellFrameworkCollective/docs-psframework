---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Stop-PSFRunspaceWorkflow

## SYNOPSIS
Stop a running Runspace Workflow.

## SYNTAX

```
Stop-PSFRunspaceWorkflow [[-Name] <String[]>] [[-InputObject] <RSWorkflow[]>] [<CommonParameters>]
```

## DESCRIPTION
Stop a running Runspace Workflow.
This shuts down all running runspaces of all associated workers.
Queues will remain unaffected, and the Workflow remains registered and available.

To fully remove it, use Remove-PSFRunspaceWorkflow instead.

## EXAMPLES

### EXAMPLE 1
```
$workflow | Stop-PSFRunspaceWorkflow
```

Stops the specified Runspace Workflow.

## PARAMETERS

### -Name
The name of the Runspace Workflow to stop.

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
The Runspace Workflow object to stop.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[https://psframework.org/documentation/documents/psframework/runspace-workflows.html](https://psframework.org/documentation/documents/psframework/runspace-workflows.html)

