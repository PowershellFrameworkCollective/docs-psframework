---
sidebar_position: 3
---

# What the user typed so far

## Synopsis

Shows how to react to previous user input for the current parameter.

## Description

Often users will start typing before trying to complete the value of a parameter.
Generally, no further implementation to respect this is necessary - PSFramework Tab Completion handles this automatically, filtering produced output by that already-typed input.

However, in instances where providing custom Tab Completion relies on network calls hat can benefit from server-side filtering for improved performance, being able to use that current input in the query would be useful.

That is where the special variable [$wordToComplete](special-variables.md) comes in handy:

```powershell
Register-PSFTeppScriptBlock -Name MyModule.ComputerName -ScriptBlock {
    (Get-ADComputer -Filter "name -eq '$wordToComplete*'").Name | Sort-Object
}
```

> Note: Automatic filtering uses the -like operator. This means users can filter their tab-completion by text within the string by starting their word to complete with a wildcard (*) character.
