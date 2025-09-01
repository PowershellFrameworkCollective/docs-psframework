---
sidebar_position: 4
---

# Filter Expression

The original purpose of the [Filter Component](overview.md) is to allow flexible filter logic in data that is not supposed to be executable code.
And the Filter Expression is the part that brings it all together.

It allows the user to type almost plain PowerShell filter code, without granting them direct code execution.

Example Filter Expression:

```powershell
IsBeer -and (InBar -or InCellar -or InFridge)
```

## Legal Content

So what everything can you put into a Filter Expression?

+ The name of the Conditions
+ Any logical operator (`-and`, `-or`, `-xor`, `-not`)
+ Parenthesis ( `(...)` )

## Executing an Expression

So, let's test this thing:

```powershell
$expression = 'IsBeer -and (InBar -or InCellar -or InFridge)'
Invoke-PSFFilter -Expression $expression -SetModule Bartender -SetName Bar -ArgumentList $beverage
```

Which will return `$true` if the condition applies or `$false` if not so.

> Builtin Demo

The PSFramework comes with a builtin [Condition Set](condition-set.md): `Environment`:

```powershell
Invoke-PSFFilter -SetModule PSFramework -SetName Environment -Expression 'OSWindows -and PS7Plus'
```

## The Filter object

For repeated validations, it might be more efficient to have an object at hand, rather than keep calling the function again and again.
This can be done with the `New-PSFFilter` command:

```powershell
$filter = New-PSFFilter -SetModule Bartender -SetName Bar -Expression 'IsBeer -and (InBar -or InCellar -or InFridge)'
$filter.Evaluate($beverage)
```

## Validating an Expression

We can validate an expression before executing it, by using the `Test-PSFFilter` command:

```powershell
Test-PSFFilter -SetModule PSFramework -SetName Environment -Expression 'IsWindows -and PS7Plus -and Elevated'
```

:::warning

This can easily be confused with the result of `Invoke-PSFFilter`!
The truth return of `Test-PSFFilter` is whether the expression is valid, not whether any objects being tested are valid against the expression!

:::
