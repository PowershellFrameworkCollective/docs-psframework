---
sidebar_position: 1
---

# Invoking a Template

## Synopsis

How to find available templates and create a file/project from it.

## Introduction

The PSModuleDevelopment templating system has a two-stage approach:

1. First, the raw template files - the contents you want to generate - get recorded into a Template.
2. Then, when you want to create a project _from_ that template, you invoke that recording.

This guide deals with step 2, you can find more information on how to record your own templates in other guides ([1](creating-a-new-file-template.md) | [2](creating-a-new-project-template.md)).

## Discovery

Templates can come from a few different sources:

+ Default templates that come with PSModuleDevelopment
+ Templates you created yourself ([1](creating-a-new-file-template.md) | [2](creating-a-new-project-template.md))
+ Templates that come [with another module](../Managing/module-include-templates.md)
+ Templates [provided by your organization](../Managing/template-stores.md)

So how do we find what templates are available to us?

```powershell
Get-PSMDTemplate
```

Or - if you must know exactly where they come from - you can display the `Path`:

```powershell
Get-PSMDTemplate | Format-Table Name, Path
```

Templates can come in different versions, so getting a full list might be useful:

```powershell
Get-PSMDTemplate -TemplateName function -All | ft Name, Version, Path
```

## Invocation

When invoking a template, we will create a project / file based on what was originally recorded into the template.
This will:

1. Prompt for all missing parameters
2. Execute all the scriptblocks and remember the results
3. Create all the folders, inserting parameters into their name where placeholders were found during recording
4. Create all the files, inserting parameters & script results into their name and content where placeholders were found during recording

The command to do that is [Invoke-PSMDTemplate](../../../Commands/PSModuleDevelopment/Invoke-PSMDTemplate.md):

```powershell
Invoke-PSMDTemplate MiniModule
```

This is going to invoke the template in the current path.
We can of course change that:

```powershell
Invoke-PSMDTemplate MiniModule -OutPath C:\Temp
```

Rather than invoking a template by name, we can also invoke it by object:

```powershell
Get-PSMDTemplate function -RequiredVersion '2.0.1' | Invoke-PSMDTemplate
```

> Provide template parameters during invocation

If we don't want to be prompted for missing parameters, we can pre-provide them during the function call:

```powershell
Invoke-PSMDTemplate MiniModule -Name MyProject -Parameters @{ Description = "Example Module" }
```

As it is so common, the `-Name` parameter for templates is offered as a direct parameter on the command.
For all others, you either provide them in the `-Parameters` hashtable as shown above or [define a default value](../Managing/default-template-parameters.md).

> No New Folder

By default, templates recorded from a [project](template-types.md) will be created in a subfolder named for the template parameter `Name` (if your template does not use that parameter, it will still be asked for, just for this folder).
If you do not wish to create a subfolder - for example, when you are in a newly created git repository and want the project contents directly in that - you can prevent the creation of that folder:

```powershell
Invoke-PSMDTemplate MiniModule -NoFolder
```
