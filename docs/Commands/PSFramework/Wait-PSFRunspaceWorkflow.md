---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Wait-PSFRunspaceWorkflow

## SYNOPSIS
Wait for a Runspace Workflow to complete.

## SYNTAX

### Closed (Default)
```
Wait-PSFRunspaceWorkflow -Queue <String> [-Closed] [-PassThru] [-Timeout <TimeSpanParameter>]
 [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### Reference
```
Wait-PSFRunspaceWorkflow -Queue <String> -ReferenceQueue <String> [-ReferenceMultiplier <Int32>] [-PassThru]
 [-Timeout <TimeSpanParameter>] [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### Count
```
Wait-PSFRunspaceWorkflow -Queue <String> -Count <Int32> [-PassThru] [-Timeout <TimeSpanParameter>]
 [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### QueueTimeout
```
Wait-PSFRunspaceWorkflow -Queue <String> -QueueTimeout <TimeSpanParameter> [-PassThru]
 [-Timeout <TimeSpanParameter>] [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### WorkerReference
```
Wait-PSFRunspaceWorkflow -WorkerName <String> -ReferenceQueue <String> [-ReferenceMultiplier <Int32>]
 [-PassThru] [-Timeout <TimeSpanParameter>] [-Name <String[]>] [-InputObject <RSWorkflow[]>]
 [<CommonParameters>]
```

### WorkerCount
```
Wait-PSFRunspaceWorkflow -WorkerName <String> -Count <Int32> [-PassThru] [-Timeout <TimeSpanParameter>]
 [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

### WorkerClosed
```
Wait-PSFRunspaceWorkflow -WorkerName <String> [-Closed] [-PassThru] [-Timeout <TimeSpanParameter>]
 [-Name <String[]>] [-InputObject <RSWorkflow[]>] [<CommonParameters>]
```

## DESCRIPTION
Wait for a Runspace Workflow to complete.

## EXAMPLES

### EXAMPLE 1
```
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -Count 1000
```

Wait until 1000 items have been queued to "Done" in total.

### EXAMPLE 2
```
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -PassThru | Stop-PSFRunspaceWorkflow
```

Wait until the "Done" queue has been closed, then stop the workflow.

### EXAMPLE 3
```
$workflow | Wait-PSFRunspaceWorkflow -Queue Done -ReferenceQueue Input
```

Wait until the "Done" queue has processed as many items as there were written to the "Input" queue.

## PARAMETERS

### -Queue
The name of the queue to measure completion by.
Usually the last output queue in the chain of steps.

```yaml
Type: String
Parameter Sets: Closed, Reference, Count, QueueTimeout
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkerName
The name of the worker to measure completion by.
Usually the last step in the chain of steps.

```yaml
Type: String
Parameter Sets: WorkerReference, WorkerCount, WorkerClosed
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Closed
The workflow is considered completed, when the queue or worker selected is closed.

```yaml
Type: SwitchParameter
Parameter Sets: Closed
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: SwitchParameter
Parameter Sets: WorkerClosed
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Count
The workflow is considered completed, when the queue selected has received the specified number of results.
This looks at the total amount ever provided, not current number queued.

```yaml
Type: Int32
Parameter Sets: Count, WorkerCount
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReferenceQueue
The workflow is considered completed, when the queue selected has received the same number of items as the reference queue.

```yaml
Type: String
Parameter Sets: Reference, WorkerReference
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReferenceMultiplier
When comparing the result queue with a reference queue, multiply the number of items in the reference queue by this value.
Use when the number of output items, based from the original input, scales by a constant multiplier.
Defaults to 1.

```yaml
Type: Int32
Parameter Sets: Reference, WorkerReference
Aliases:

Required: False
Position: Named
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -QueueTimeout
Wait based on how long ago the last item was added to the specified queue.

```yaml
Type: TimeSpanParameter
Parameter Sets: QueueTimeout
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Pass through the workflow object waiting for.
Useful to stop it once waiting has completed.

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

### -Timeout
Maximum wait time.
Throws an error if exceeded.
Defaults to 1 day.

```yaml
Type: TimeSpanParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the workflow to wait for.

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
A runspace workflow object to wait for.

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

