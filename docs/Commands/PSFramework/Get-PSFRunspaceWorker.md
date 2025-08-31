---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Get-PSFRunspaceWorker

## SYNOPSIS
Retrieve workers associated with a Runspace Workflow.

## SYNTAX

```
Get-PSFRunspaceWorker [[-Name] <String>] [[-WorkflowName] <String[]>] [[-InputObject] <RSWorkflow[]>]
 [<CommonParameters>]
```

## DESCRIPTION
Retrieve workers associated with a Runspace Workflow.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFRunspaceWorkflow | Get-PSFRunspaceWorker
```

Get all workers of all runspace workflows.

## PARAMETERS

### -Name
Name of the worker to filter by.
Defaults to *

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: *
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkflowName
Name of the Runspace Workflow from which to retrieve workers.
The workflow contains all the workers, queues and management tools for the Runspace Workflow.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -InputObject
Workflow object from which to retrieve workers.
The workflow contains all the workers, queues and management tools for the Runspace Workflow.

```yaml
Type: RSWorkflow[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
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

