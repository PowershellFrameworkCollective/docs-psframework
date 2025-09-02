---
sidebar_position: 2
---

# Template Types

## Synopsis

There are two kinds of templates: File & Project. But what's the difference?

## Description

Essentially, the key difference is the scope:

+ File: This template contains a single file.
+ Project: This template may contain any number of files & folders.

Beyond that, there is little technical difference between the two options, placeholders & dynamic code work just the same.
The main one being that only projects support a [Project Reference File](project-reference-file.md).

If you use `New-PSMDTemplate` with the `-FilePath` parameter, you create a file template, if you use the `-ReferencePath` parameter, it will be a project.
