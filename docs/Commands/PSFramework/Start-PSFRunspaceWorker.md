---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Start-PSFRunspaceWorker

## SYNOPSIS
Start a runspace worker, part of the logic executing a Runspace Workflow.

## SYNTAX

```
Start-PSFRunspaceWorker [[-InputObject] <RSWorker[]>] [<CommonParameters>]
```

## DESCRIPTION
Start a runspace worker, part of the logic executing a Runspace Workflow.
This will have it start its workers and process any queued input.

Use this to start only part of a Runspace Workflow, rather than all of it.

## EXAMPLES

### EXAMPLE 1
```
$worker | Start-PSFRunspaceWorker
```

Starts the worker specified in $worker

## PARAMETERS

### -InputObject
The Worker object to start.

```yaml
Type: RSWorker[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
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

