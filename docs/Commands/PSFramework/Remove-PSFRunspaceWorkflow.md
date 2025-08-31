---
external help file: PSFramework-help.xml
Module Name: PSFramework
online version: https://psframework.org/documentation/documents/psframework/runspace-workflows.html
schema: 2.0.0
---

# Remove-PSFRunspaceWorkflow

## SYNOPSIS
Removes a Runspace Workflow, stopping all processing.

## SYNTAX

```
Remove-PSFRunspaceWorkflow [-Name] <String[]> [<CommonParameters>]
```

## DESCRIPTION
Removes a Runspace Workflow, stopping all processing.
This stops all workers, ends all runspaces and unlists the workflow object.

The queues remain untouched, but will be garbage collected together with the workflow object,
assuming no variable outside of the module retains it.

## EXAMPLES

### EXAMPLE 1
```
Get-PSFRunspaceWorkflow | Remove-PSFRunspaceWorkflow
```

Stops and removes all runspace workflows.

## PARAMETERS

### -Name
The name of the Runspace Workflow to remove.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
