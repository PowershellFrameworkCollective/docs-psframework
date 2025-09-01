---
sidebar_position: 3
---

# Filter Condition Sets

Filter Condition Sets group together a set of [Filter Conditions](condition.md).
This is designed to help prevent invalid combinations (`IsBeer -and OSWindows` does not make much sense) and also as a way to select just which version of a [Condition](condition.md) is used for a given [Filter Expression](filter.md).

Essentially, any actual [Filter Expression](filter.md) is evaluated by a Condition Set and all [Conditions](condition.md) used in that [Expression](filter.md) must be included in that set.

## End-to-End Examples

The examples here focus on just defining a single condition.
For simple hands-on examples that show how it all works together, [see the End-to-End examples page](full-examples.md).

## Examples

> Predefined Conditions

```powershell
$conditions = Get-PSFFilterCondition -Module Bartender
New-PSFFilterConditionSet -Module Bartender -Name Alcohols -Conditions $conditions
```

Creates a new filter condition set "Alcohols" for the [module](module.md) "Bartender", including all conditions defined so far.

> Define Conditions together with the Condition Set

```powershell
New-PSFFilterConditionSet -Module 'Bartender' -Name 'Alcohols' -ScriptBlock {
    New-PSFFilterCondition -Module Bartender -Name Beer -ScriptBlock { $_.Type -eq 'Beer' }
    New-PSFFilterCondition -Module Bartender -Name Vodka -ScriptBlock { $_.Type -eq 'Vodka' }
    New-PSFFilterCondition -Module Bartender -Name Whiskey -ScriptBlock { $_.Type -eq 'Whiskey' }
    New-PSFFilterCondition -Module Bartender -Name Rum -ScriptBlock { $_.Type -eq 'Rum' }
}
```

Similar to the first example, this defines the Condition Set "Alcohols" for the [module](module.md) "Bartender".
In opposite to the last example, this time we define the [Filter Conditions](condition.md) together with the set.
