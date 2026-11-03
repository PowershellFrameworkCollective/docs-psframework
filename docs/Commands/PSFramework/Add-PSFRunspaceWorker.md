---
document type: cmdlet
external help file: PSFramework-Help.xml
HelpUri: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
Locale: en-US
Module Name: PSFramework
ms.date: 11-03-2026
PlatyPS schema version: 2024-05-01
title: Add-PSFRunspaceWorker
---

# Add-PSFRunspaceWorker

## Synopsis

Adds a new worker / workload to a runspace workflow.

## Syntax

### __AllParameterSets

```
Add-PSFRunspaceWorker [-Name] <string> [-InQueue] <string> [-OutQueue] <string>
 [-ScriptBlock] <scriptblock> [[-Count] <int>] [[-Begin] <scriptblock>] [[-End] <scriptblock>]
 [[-MaxItems] <int>] [[-QueuesToClose] <string[]>] [[-Throttle] <Throttle>]
 [[-Variables] <hashtable>] [[-VarPerRunspace] <hashtable>] [[-Modules] <string[]>]
 [[-Functions] <hashtable>] [[-SessionState] <initialsessionstate>] [[-Timeout] <TimeSpanParameter>]
 [[-TimeoutType] <RSTimeout>] [[-RetryCount] <int>] [[-RetryCondition] <PsfScriptBlock>]
 [[-WorkerVersion] <int>] [[-WorkflowName] <string[]>] [[-InputObject] <RSWorkflow[]>] [-KillToStop]
 [-NoOutput] [-CloseOutQueue] [<CommonParameters>]
```

## Description

Adds a new worker / workload to a runspace workflow.

The worker as a conceptually consists of three parts:
- Input Queue: A queue where data to process awaits
- N Runspaces to convert input to output
- Output Queue: A queue where the finished results are passed off to.

In the wider flow of a Runspace Workflow, one Worker's Output Queue is alse another Worker's Input Queue.
Thus we create a chain of workers from original input to finished output, each step individually with as many runspaces as needed.

Note: Worker Versions
There are different runtime versions for the Runspace Workers.
They affect features available, performance, and - possibly - bugs.
Older (lower) versions are more tested, but some features are only available with later versions.
If you encounter an issue with any of the later versions, that works on an older one, please file a bug report and provide as much information as possible.

Versions and their features:
1: Baseline
2: Added RetryCount, RetryCondition, Timeout, TimeoutType parameters, as well as support for overriding settings per-item with New-PSFRsWorkItem

## Examples

### EXAMPLE 1

```powershell
$workflow | Add-PSFRunspaceWorker -Name DoubleIt -InQueue Q1 -OutQueue Q2 -Count 5 -ScriptBlock { $args[0] * 2 }
```

Adds a worker to the workflow that will take items from Q1, double them, then write them to Q2.
Will create 5 runspaces to do the job.

### EXAMPLE 2

```powershell
$workflow | Add-PSFRunspaceWorker -Name Mailboxes -InQueue Organizations -OutQueue Mailboxes -Count 1 -Variables $connectionData -Begin $logonScript -ScriptBlock $getMailbox -End $logoutScript
```

Adds a worker that will for each organization retrieve the mailboxes.
Will create 1 runspace to avoid hitting EXO throttling.
More detailed examples and explanations can be found on psframework.org.
https://psframework.org/documentation/documents/psframework/runspace-workflows.html

## Parameters

### Begin

A piece of logic that is executed once at the beginning for each runspace
So if you set Count to 5, it will run 5 separate times, one per runspace.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CloseOutQueue

When this worker stops - for example due to reaching its limit of items produced, or its source queue being closed - it will, after finishing its processing, close the associated out queue.
This allows subsequent workers to know, whether to expect any further input.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Count

How many parallel runspaces should be created in this worker?
Defaults to 1

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### End

A piece of logic that is executed once at the end for each runspace
So if you set Count to 5, it will run 5 separate times, one per runspace.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Functions

Functions to load into the background runspace.
The key is the name of the function, the value its code.
The code can be either a string or a scriptblock.

Note: If running in Constrained Language Mode, stricter requirements need to be met:
- Code must be a scriptblock
- The scriptblock must be in Full Language Mode

If you are using this from a module intended for public consumption, please provide a scriptblock as code, not text:
@{ 'Get-Something' = [ScriptBlock]::Create((Get-Command Get-Something -Module MyModule).Definition) }

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 13
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InputObject

Workflow object this worker belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: PSFramework.Runspace.RSWorkflow[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 21
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### InQueue

Name of the queue from which to receive input.
The name is arbitrary - if the queue does not yet exist on the workflow, it will be auto-created.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### KillToStop

When stopping a worker, by default, it will be sent the shutdown signal and will then gracefully terminate.
This however requires the worker to cycle often enough to catch that signal.
If this is impossible - for example, if the worker has one long-running piece - and we still need to be able to just kill it, set this flag.
This means that on stop, all worker runspaces will be killed - without doing any cleanup!

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### MaxItems

The maximum number of items this worker will process.
All runspaces of this worker will refuse to process more items than this number in total shared among them.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Modules

Modules to load into the background runspace.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 12
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Name

Name of the worker.
The name matters little, other than that it must be unique from other workers on the same workflow.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### NoOutput

Whether the regular output of the runspace worker should be disregarded.
Use this parameter if all subsequent queues are filled by calling Write-PSFRunspaceQueue, rather than said output.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### OutQueue

Name of the queueue to which we write output.
The name is arbitrary - if the queue does not yet exist on the workflow, it will be auto-created.

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### QueuesToClose

When this worker stops, close the queues listed.
This works independent of CloseOutQueue - both con ber used together or separately.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### RetryCondition

If an object fails and retries are configured, only retries are attempted for cases where this condition is true.
This scriptblock has access to two variables:
- $_: The Error that happened
- $this: The object currently being processed
It is executed in the context of the runspace where the issue happend (so modules and commands are available, but the direct scope of the execution code is not.)
Note: This parameter forces a V2 worker or later (see description).

```yaml
Type: PSFramework.Utility.PsfScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 18
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### RetryCount

How many times to try again if processing an object fails.
Note: This parameter forces a V2 worker or later (see description).

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 17
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### ScriptBlock

The scriptblock performing the actual workload.
Receives one argument: The input.
All output will be - separately - enqueued to the out queue.

If your scriptblock is one long-running task, rather than many infrequent ones,
consider using "Write-PSFRunspaceQueue" to pass on output as you generate it and not wait for the scriptblock to run its course.

```yaml
Type: System.Management.Automation.ScriptBlock
DefaultValue: ''
SupportsWildcards: false
Aliases:
- Process
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### SessionState

A fully prepared session state object to use when creating the worker runspaces.
Be aware that if your session state does not contain basic language tools, the background runspace will likely fail.

```yaml
Type: System.Management.Automation.Runspaces.InitialSessionState
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 14
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Throttle

A throttle object, as returned by New-PSFThrottle.
This allows rate-limiting the worker runspaces, useful when parallelizing access to an API.

```yaml
Type: PSFramework.Utility.Throttle
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Timeout

How long each individual item may run before timing out.
Note: This parameter forces a V2 worker or later (see description).

```yaml
Type: PSFramework.Parameter.TimeSpanParameter
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 15
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### TimeoutType

What kind of timeout processing we perform.
- Start: Time from the start of the current item.
- Idle: Time since last activity
Last Activity is measured by the last Write-PSFMessage or Reset-PSFRsAgentInactivity call.
Note: This parameter forces a V2 worker or later (see description).

```yaml
Type: PSFramework.Runspace.RSTimeout
DefaultValue: Start
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 16
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### Variables

Any variables to provide to the worker runspaces.
All worker runspaces will have the same variables.
Beware: Modifications to the objects in those variables are NOT synchronized across runspaces, so keep concurrency in mind if you want to do more than read.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### VarPerRunspace

Any variables to provide to the worker runspaces.
To each variable name, match as many values as you plan to have runspaces for this worker.
So, if you set Count to 3, each variable here should have three values:
@{ Key = $key1, $key2, $key3 }
While the order is not guaranteed, each worker runspace will receive its own, unique value for its variable.
- If you provide more values than Count, only the first Count values will be used
- If you provide less values than Count, the variable will be $null for any runspace beyond the count of values.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 11
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WorkerVersion

What version of worker to create.
Later versions offer more features, older versions more stability.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 19
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### WorkflowName

Name of the Runspace Workflow this worker belongs to.
The workflow contains all the workers, queues and management tools for the Runspace Workload.

```yaml
Type: System.String[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 20
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

## Links

Microsoft.PowerShell.PlatyPS.Model.Links


