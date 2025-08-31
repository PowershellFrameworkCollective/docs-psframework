---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Read-PSFRunspaceQueue

## SYNOPSIS
Reads data from a queue associated with a runspace workflow.

## SYNTAX

### Default (Default)
```
Read-PSFRunspaceQueue -Name <String> [-All] [-WorkflowName <String[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### Peek
```
Read-PSFRunspaceQueue -Name <String> [-All] [-Peek] [-WorkflowName <String[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### Continual
```
Read-PSFRunspaceQueue -Name <String> [-Continual] [-WorkflowName <String[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Reads data from a queue associated with a runspace workflow.
Can be used to receive the final workflow results or to collect data outside of the default workflow.
Note: Reading data from a queue removes the item from it!

## EXAMPLES

### EXAMPLE 1
```
$workflow | Read-PSFRunspaceQueue -Name Done -All
```

Read / retrieve all items from the queue "Done" of the workflow $workflow

### EXAMPLE 2
```
Read-PSFRunspaceQueue -Name extraData
```

Read a value from "extraData" queue of the current Runspace Workflow.
Only works from within the code of a running worker.
Keep in mind that worker code automatically receives input from the specified input queue.

## PARAMETERS

### -Name
Name of the queue to read data from.

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

### -All
Retrieve all items from the queue.
By default, only the oldest entry is returned.

```yaml
Type: SwitchParameter
Parameter Sets: Default, Peek
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Continual
Keep reading data from the queue until the queue is closed and emptied.
Intended for use in situations, where a processing worker must run within a single pipeline,
rather than the default, repeated calls of the processing scriptblock per queue item.

```yaml
Type: SwitchParameter
Parameter Sets: Continual
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Peek
Retrieve one (or all, if used with -All) item from the queue, without actually removing the item from it.

```yaml
Type: SwitchParameter
Parameter Sets: Peek
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkflowName
Name of the Runspace Workflow the queue read from belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InputObject
Workflow object the queue read from belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: RSWorkflow[]
Parameter Sets: (All)
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

