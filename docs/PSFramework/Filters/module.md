---
sidebar_position: 5
---

# Module (In Filters)

In the PSFramework filter component, modules are the largest logical grouping / container.
Filter [Conditions](condition.md) and [Condition Sets](condition-set.md) are grouped by that.

The general assumption is, that any PowerShell module has a single (filter) module of the same name.

With this we try to avoid conflicts between PowerShell modules that are unaware of each other and happen to use the same [Condition](condition.md) names.

> This is not an absolute law!

The 1:1 relationship between PowerShell module and filter "module" is not set in stone:

+ You can have more than one filter "module" for a single PowerShell module.
+ Multiple PowerShell modules can share the same filter "module".

At the end of the day, a [Condition Set](condition-set.md) can only contain [Conditions](condition.md) that are in the same filter "module".
