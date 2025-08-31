---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Write-PSFRunspaceQueue

## SYNOPSIS
Write data to a queue of a Runspace Workflow.

## SYNTAX

### Single (Default)
```
Write-PSFRunspaceQueue -Name <String> -Value <Object> [-Close] [-WorkflowName <String[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### SingleCurrent
```
Write-PSFRunspaceQueue -Name <String> -Value <Object> [-UseCurrent] [-Close] [<CommonParameters>]
```

### Multi
```
Write-PSFRunspaceQueue -Name <String> -BulkValues <Object[]> [-Close] [-WorkflowName <String[]>]
 [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

## DESCRIPTION
Write data to a queue of a Runspace Workflow.
This is generally used to provide the initial input of the first queue.

Can also be used by a worker code to provide output to more than one queue.

## EXAMPLES

### EXAMPLE 1
```
$workflow | Write-PSFRunspaceQueue -Name input -BulkValues $entries
```

Provides all values in $entries as input for the queue named "input" of the Runspace Workflow in $workflow.

## PARAMETERS

### -Name
Name of the Queue to write to.

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

### -Value
The value to write.

```yaml
Type: Object
Parameter Sets: Single, SingleCurrent
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -BulkValues
Write multiple values as separate entries.

```yaml
Type: Object[]
Parameter Sets: Multi
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UseCurrent
Write to a queue in the current runspace workflow.
Only valid when used from within the code of a Runspace Workflow worker.

```yaml
Type: SwitchParameter
Parameter Sets: SingleCurrent
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Close
Closes the queue after writing the input.
This prevents further data to be added to the queue,
and allows a worker to know, when it has fully processed input.

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

### -WorkflowName
Name of the workflow owning the queue written to.

```yaml
Type: String[]
Parameter Sets: Single, Multi
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InputObject
Workflow object that owns the queue written to.

```yaml
Type: RSWorkflow[]
Parameter Sets: Single, Multi
Aliases:

Required: False
Position: Named
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

