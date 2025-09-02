---
sidebar_position: 4
---

# Deploying Template Stores per Group Policy

## Synopsis

It is possible to make templates available via group policy

## Description

When trying to share templates across a team, it might be convenient, if everybody had automatic access to those templates without having to do anything.

With the PSModuleDevelopment's Template system, this is actually possible to do, using Group Policy (or DSC, or SCCM).

Deploy the following registry value to the target computer:

```text
Path:  HKCU\Software\Microsoft\WindowsPowerShell\PSFramework\Config\Default
Name:  psmoduledevelopment.template.store.company
Type:  REG_SZ
Value: string:\\server\share\templates
```

Don't feel like giving the users a choice in this? Change the path to this:

```text
HKCU:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Enforced
```

There are also per-machine keys available:

```text
HKLM:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Default
HKLM:\SOFTWARE\Microsoft\WindowsPowerShell\PSFramework\Config\Enforced
```

Those have the benefit of requiring elevation for the user to edit directly.

Either way you choose to go, the templates stored in the registered [Template Store](template-stores.md) are automatically available to all affected users.

## Configuration System

This functionality is made possible with the PSFramework [Configuration System](../../../PSFramework/Configuration/overview.md).
See the associated documentation for a more in-depth view into how settings can be managed.
