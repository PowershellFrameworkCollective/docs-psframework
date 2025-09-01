---
sidebar_position: 6
---

# End-to-End Examples

Seeing is believing and this rather abstract component becomes a lot more comprehensible, when you can see an end to end example of how it all works.

## Defining the Conditions & Condition Sets

:::info

This should be executed once during your module's import.

:::

```powershell
$null = New-PSFFilterConditionSet -Module Bartender -Name Bar -ScriptBlock {
    New-PSFFilterCondition -Module Bartender -Name IsBeer -ScriptBlock { $_.Type -eq 'Beer' }
    New-PSFFilterCondition -Module Bartender -Name IsVodka -ScriptBlock { $_.Type -eq 'Vodka' }
    New-PSFFilterCondition -Module Bartender -Name IsWhiskey -ScriptBlock { $_.Type -eq 'Whiskey' }
    New-PSFFilterCondition -Module Bartender -Name IsRum -ScriptBlock { $_.Type -eq 'Rum' }
    New-PSFFilterCondition -Module Bartender -Name IsMead -ScriptBlock { $_.Type -eq 'Mead' }
    
    New-PSFFilterCondition -Module Bartender -Name AtBar -ScriptBlock { $_.Location -eq 'Bar' }
    New-PSFFilterCondition -Module Bartender -Name AtFridge -ScriptBlock { $_.Location -eq 'Fridge' }
    New-PSFFilterCondition -Module Bartender -Name AtCellar -ScriptBlock { $_.Location -eq 'Cellar' }
    
    New-PSFFilterCondition -Module Bartender -Name InGlas -ScriptBlock { $_.Container -eq 'Glas' }
    New-PSFFilterCondition -Module Bartender -Name InHorn -ScriptBlock { $_.Container -eq 'Horn' }
    New-PSFFilterCondition -Module Bartender -Name InMug -ScriptBlock { $_.Container -eq 'Mug' }
    New-PSFFilterCondition -Module Bartender -Name InBarrel -ScriptBlock { $_.Container -eq 'Barrel' }
    New-PSFFilterCondition -Module Bartender -Name InPitcher -ScriptBlock { $_.Container -eq 'Pitcher' }
    New-PSFFilterCondition -Module Bartender -Name InMaßkrug -ScriptBlock { $_.Container -eq 'Maßkrug' }
}
```

## Prepare your stocks

In order for the demo to work, we need some sample stock for our bar.

:::info

This should be executed once during your module's import.

:::

```powershell
$script:stock = @(
    [PSCustomObject]@{
        Type = 'Beer'
        Location = 'Fridge'
        Container = 'Mug'
        Count = 20
    }
    [PSCustomObject]@{
        Type = 'Beer'
        Location = 'Cellar'
        Container = 'Barrel'
        Count = 30
    }
    [PSCustomObject]@{
        Type = 'Mead'
        Location = 'Bar'
        Container = 'Horn'
        Count = 1
    }
)
```

## Use it in a function

```powershell
function Send-Beverage {
    [Alias('Serve-Drink')]
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true, Mandatory = $true)]
        [ValidateScript({
            Test-PSFFilter -SetModule Bartender -SetName Bar -Expression $_
        })]
        [string[]]
        $Order
    )
    process {
        foreach ($orderExpression in $Order) {
            $filter = New-PSFFilter -SetModule Bartender -SetName Bar -Expression $orderExpression

            $script:stock | Where-Object { $filter.Evaluate($_) }
        }
    }
}
```

## Use it

:::info

In your console, after importing your module

:::

```powershell
Send-Beverage -Order 'IsBeer'
Send-Beverage -Order 'IsBeer -and InMug'
Send-Beverage -Order '-not IsBeer'
```
