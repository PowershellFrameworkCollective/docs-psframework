---
sidebar_position: 1
---

# Parameter Classes

## Synopsis

Parameter Classes allow great flexibility and comfort for accepting input.

## Key Features

+ Bring Information, not Type
+ Highly intuitive user experience
+ Greater convenience in specifying input
+ Extensible to understand custom input

## Description

Parameter classes are C#-based data types, designed to be used as expected data type on parameters. For example:

```powershell
[CmdletBinding()]
param (
    [string]
    $ComputerName
)
```

would become

```powershell
[CmdletBinding()]
param (
    [PSFComputer]
    $ComputerName
)
```

This moves a lot of the input validation and all its interpretation into the parameter binding,
making it easier to use for developers than regular types. 
They generally also offer greater flexibility in accepting input and are often considered a great improvement over regular user input.

## Quick Start Guides

+ [Getting started with Parameter Classes](../../quickstart/PSFramework/parameter-classes.md)

## In depth Guides

+ [Computer Parameter Class](computer-parameter.md)
+ [Path Parameter Class](path-parameter.md)
+ [DateTime Parameter Class](datetime-parameter.md)
+ [TimeSpan Parameter Class](timespan-parameter.md)
