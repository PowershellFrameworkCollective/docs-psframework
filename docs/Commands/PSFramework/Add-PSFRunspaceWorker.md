---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Add-PSFRunspaceWorker

## SYNOPSIS
Adds a new worker / workload to a runspace workflow.

## SYNTAX

```
Add-PSFRunspaceWorker [-Name] <String> [-InQueue] <String> [-OutQueue] <String> [-ScriptBlock] <ScriptBlock>
 [[-Count] <Int32>] [[-Begin] <ScriptBlock>] [[-End] <ScriptBlock>] [-KillToStop] [-NoOutput]
 [[-MaxItems] <Int32>] [-CloseOutQueue] [[-QueuesToClose] <String[]>] [[-Throttle] <Throttle>]
 [[-Variables] <Hashtable>] [[-VarPerRunspace] <Hashtable>] [[-Modules] <String[]>] [[-Functions] <Hashtable>]
 [[-SessionState] <InitialSessionState>] [[-WorkflowName] <String[]>] [[-InputObject] <RSWorkflow[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds a new worker / workload to a runspace workflow.

The worker as a conceptually consists of three parts:
- Input Queue: A queue where data to process awaits
- N Runspaces to convert input to output
- Output Queue: A queue where the finished results are passed off to.

In the wider flow of a Runspace Workflow, one Worker's Output Queue is alse another Worker's Input Queue.
Thus we create a chain of workers from original input to finished output, each step individually with as many runspaces as needed.

## EXAMPLES

### EXAMPLE 1
```
$workflow | Add-PSFRunspaceWorker -Name DoubleIt -InQueue Q1 -OutQueue Q2 -Count 5 -ScriptBlock { $args[0] * 2 }
```

Adds a worker to the workflow that will take items from Q1, double them, then write them to Q2.
Will create 5 runspaces to do the job.

### EXAMPLE 2
```
$workflow | Add-PSFRunspaceWorker -Name Mailboxes -InQueue Organizations -OutQueue Mailboxes -Count 1 -Variables $connectionData -Begin $logonScript -ScriptBlock $getMailbox -End $logoutScript
```

Adds a worker that will for each organization retrieve the mailboxes.
Will create 1 runspace to avoid hitting EXO throttling.
More detailed examples and explanations can be found on psframework.org.
https://psframework.org/documentation/documents/psframework/runspace-workflows.html

## PARAMETERS

### -Name
Name of the worker.
The name matters little, other than that it must be unique from other workers on the same workflow.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InQueue
Name of the queue from which to receive input.
The name is arbitrary - if the queue does not yet exist on the workflow, it will be auto-created.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OutQueue
Name of the queueue to which we write output.
The name is arbitrary - if the queue does not yet exist on the workflow, it will be auto-created.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptBlock
The scriptblock performing the actual workload.
Receives one argument: The input.
All output will be - separately - enqueued to the out queue.

If your scriptblock is one long-running task, rather than many infrequent ones,
consider using "Write-PSFRunspaceQueue" to pass on output as you generate it and not wait for the scriptblock to run its course.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases: Process

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Count
How many parallel runspaces should be created in this worker?
Defaults to 1

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: 1
Accept pipeline input: False
Accept wildcard characters: False
```

### -Begin
A piece of logic that is executed once at the beginning for each runspace
So if you set Count to 5, it will run 5 separate times, one per runspace.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -End
A piece of logic that is executed once at the end for each runspace
So if you set Count to 5, it will run 5 separate times, one per runspace.

```yaml
Type: ScriptBlock
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KillToStop
When stopping a worker, by default, it will be sent the shutdown signal and will then gracefully terminate.
This however requires the worker to cycle often enough to catch that signal.
If this is impossible - for example, if the worker has one long-running piece - and we still need to be able to just kill it, set this flag.
This means that on stop, all worker runspaces will be killed - without doing any cleanup!

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

### -NoOutput
Whether the regular output of the runspace worker should be disregarded.
Use this parameter if all subsequent queues are filled by calling Write-PSFRunspaceQueue, rather than said output.

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

### -MaxItems
The maximum number of items this worker will process.
All runspaces of this worker will refuse to process more items than this number in total shared among them.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -CloseOutQueue
When this worker stops - for example due to reaching its limit of items produced, or its source queue being closed - it will, after finishing its processing, close the associated out queue.
This allows subsequent workers to know, whether to expect any further input.

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

### -QueuesToClose
When this worker stops, close the queues listed.
This works independent of CloseOutQueue - both con ber used together or separately.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Throttle
A throttle object, as returned by New-PSFThrottle.
This allows rate-limiting the worker runspaces, useful when parallelizing access to an API.

```yaml
Type: Throttle
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Variables
Any variables to provide to the worker runspaces.
All worker runspaces will have the same variables.
Beware: Modifications to the objects in those variables are NOT synchronized across runspaces, so keep concurrency in mind if you want to do more than read.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VarPerRunspace
Any variables to provide to the worker runspaces.
To each variable name, match as many values as you plan to have runspaces for this worker.
So, if you set Count to 3, each variable here should have three values:
@{ Key = $key1, $key2, $key3 }
While the order is not guaranteed, each worker runspace will receive its own, unique value for its variable.
- If you provide more values than Count, only the first Count values will be used
- If you provide less values than Count, the variable will be $null for any runspace beyond the count of values.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Modules
Modules to load into the background runspace.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Functions
Functions to load into the background runspace.
The key is the name of the function, the value its code.
The code can be either a string or a scriptblock.

Note: If running in Constrained Language Mode, stricter requirements need to be met:
- Code must be a scriptblock
- The scriptblock must be in Full Language Mode

If you are using this from a module intended for public consumption, please provide a scriptblock as code, not text:
@\{ 'Get-Something' = \[ScriptBlock\]::Create((Get-Command Get-Something -Module MyModule).Definition) \}

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SessionState
A fully prepared session state object to use when creating the worker runspaces.
Be aware that if your session state does not contain basic language tools, the background runspace will likely fail.

```yaml
Type: InitialSessionState
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkflowName
Name of the Runspace Workflow this worker belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InputObject
Workflow object this worker belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: RSWorkflow[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
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

