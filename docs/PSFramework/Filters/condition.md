---
sidebar_position: 2
---

# Filter Conditions

## Synopsis

Filter Conditions are the base building block of the filter system.
They provide/calculate the truth statements that are evaluated by the [Filter](filter.md).

To define a filter condition, you provide a scriptblock that will later be executed to calculate the truth.

## End-to-End Examples

The examples here focus on just defining a single condition.
For simple hands-on examples that show how it all works together, [see the End-to-End examples page](full-examples.md).

## Examples

> A simple environment condition

```powershell
New-PSFFilterCondition -Module MyModule -Type Static -Name EnvGithubAction -ScriptBlock {
    (Get-Item env:GITHUB_ACTION -ErrorAction Ignore) -as [bool]
}
```

This will create a filter condition that checks, whether PowerShell is running in a github action (by checking for an environment variable, that would only exist in one).

+ Module: The [filter "module"](module.md) this condition belongs to.
+ Type: `Static` means the condition is executed only once, the result cached for later invocations. This improves performance for checks where we can safely assume that the result will not change.
+ Name: The name of the condition. This is how it will be referenced in [Filter Expressions](filter.md).
+ ScriptBlock: The actual code performing the test.

> Testing an Object

```powershell
New-PSFFilterCondition -Module MyModule -Name IsBeer -ScriptBlock {
    $_.Type -eq 'Beer'
}
```

This will create a filter condition that checks, whether the object being tested is actually a beer (by checking its "Type" parameter, assuming that is indicative).
Since the `-Type` parameter was not specified this time, the condition will default to `Dynamic`, meaning the condition will be executed each time the [Filter Expression](filter.md) is executed.

## Version

Filter conditions can have a version number assigned:

```powershell
New-PSFFilterCondition -Module MyModule -Name IsBeer -Version '2.0.0' -ScriptBlock {
    $_.Type -in 'Beer', 'Kölsch'
}
```

This allows having multiple conditions of the same name defined at the same time.
When putting together a [Filter Condition Set](condition-set.md), only one instance of a given name can be included, but you can pick which version to include.
For example, we could create a set called "AlcoholOld" which includes "IsBeer (v1.0.0)" and another called "Alcohol" which includes "IsBeer (v2.0.0)".

By default, if not specified otherwise, [Filter Condition Set](condition-set.md) will use the latest version available.

> When omitting a version number, version `1.0.0` will be assigned.
