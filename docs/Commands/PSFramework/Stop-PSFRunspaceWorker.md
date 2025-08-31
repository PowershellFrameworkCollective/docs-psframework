---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Stop-PSFRunspaceWorker

## SYNOPSIS
Stops a specific runspace worker, part of a Runspace Workflow.

## SYNTAX

```
Stop-PSFRunspaceWorker [[-InputObject] <RSWorker[]>] [<CommonParameters>]
```

## DESCRIPTION
Stops a specific runspace worker, part of a Runspace Workflow.
This ends all associated runspaces, but does not affect any queue content.

## EXAMPLES

### EXAMPLE 1
```
$worker | Stop-PSFRunspaceWorker
```

Stops the worker object in $worker.

## PARAMETERS

### -InputObject
The Worker object to stop.

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

