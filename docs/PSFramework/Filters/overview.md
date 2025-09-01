---
sidebar_position: 1
---

# Filters

## Synopsis

The filter system in PSFramework allows developers to implement their own filter expression syntaxes.
This allows enabling users to define filter conditions in a user friendly manner.

It also allows defining and using flexible logical evaluation in data sections without risking unintended code execution, making these filter expressions perfectly safe to use in data documents.

## Description

The PowerShell filter syntax as applied by Where-Object is extremely powerful, but also means, that the filter condition is run as its own code.
In other words, being able to specify the filter condition also means achieving code execution.

For regular modules & scripts, that is of course of no concern - they already _have_ code execution.
But for configuration data?
For the results of an API call?

In those cases, we have to implement our own filter logic to prevent security vulnerabilities.
Or ... we could just use the filter component of PSFramework.
The filter component enables filter notations like this:

```text
IsBeer -and (InFridge -or InCellar)
```

```text
OSWindows -and PS7Plus -and EnvAzDevPipeline
```

While these _look_ like regular PowerShell logical expressions, they are not actually executed as dynamic code (at least not in a way that is abusable).

> How?

The key part is that the individual conditions (such as "IsBeer" or "PS7Plus") have to be implemented by you.
When you finally apply the overall set of conditions either against a target object or the overall environment, the conditions are resolved and the resultant truth values inserted into the condition code.
When the filter is then evaluated, it contains nothing but logical operators, parenthesis and truth statements.

## Concepts

The filter component has a few concepts to master:

+ [Filter Condition](condition.md): A single condition that is tested for truth, if used inb a Filter. This can either be a test against an object ("Is this one beverage a Beer?") or against the current environment ("Is PowerShell running on Windows?"). Only the former expects an input object to test.
+ [Filter Condition Set](condition-set.md): A set of filter conditions that may be used together. It makes logically little sense to be able to combine the "IsBeer" condition with the "OSWindows" condition after all.
+ [Filter Expression](filter.md): The actual filter that either an object or the environment should be tested against.
+ [Filter "Module"](module.md): A logical group containing conditions and condition sets. Helps prevent conflicts between PowerShell modules.

## Use-Cases

One example use-case that comes out of the box with PSFramework:

> [Configuration Schema: MetaJson / Psd1](../Configuration/Schemata/schema-metajson.md#category-tree)

The configuration system allows to _conditionally_ define configuration settings, for example based on operating system, PowerShell version or whether inside of a Github Action.
