---
sidebar_position: 2
---

# New-PSFSupportPackage

## Synopsis

The `New-PSFSupportPackage` exports debugging-relevant data, including history, errors, logs, PowerShell version and much more.

## Description

One of the oldest problems in programming is the "But it works on my machine" problem.
We test our code before we ship it and it runs _just fine_.
On our computer.

But once the code is in the hands of other people, getting useful feedback about what went wrong is really, really hard.
Most of the time we can count ourselves lucky, if we get a screenshot of the error.

So, this command is intended to solve that problem, by gathering the information actually needed to troubleshoot issues.
A few examples of what it collects:

+ PowerShell Errors that happened
+ Input History
+ Modules Loaded
+ Log Entries
+ PowerShell Version
+ Screenshot of console (including the parts you'd have to scroll up to see)

Even better: There is a way for modules or scripts to _extend_ that data, so if you need to include more details, you are able to do so.

## Generating a Debug Dump

There are three ways to collect a dump:

+ Simple User Mode
+ Targeted Mode
+ Task Mode

In all three modes the result is exactly the same thing:
A compressed zip archive with debug data.

### Simple User Mode

This is intended for a user collecting that information for you, before reporting an issue:

```powershell
New-PSFSupportPackage
```

Nothing else is needed, it will create a zip archive file on the desktop of the user, ready for pickup.

### Targeted Mode

Almost the same as the previous way of using the command, you can change the path where the archive gets generated:

```powershell
# Create the support package in the current folder
New-PSFSupportPackage -Path .
```

This is expected to be the mode for debug deployments, especially for unattended tasks (e.g. running as system), but during development.

### Task Mode

Now that we have a command that helps users collect debug data, we finally get good bug reports, right?

Right.

Or at least, that would be the case, if the user remembered to run the command while the issue is still there.
But you know how it is, you hand your scripts over to your coworkers and go on vacation and exactly _then_ things start failing and you are not around to remind them to run the command ...

Which is where Task Mode comes in and runs it for them:

```powershell
New-PSFSupportPackage -TaskName MyTask
```

This will collect all debug data and create the same support package ... and then store it in `"$(Get-PSFPath -Name AppData)\PowerShell\PSFramework\Debug\$TaskName"`.
Yes, this should also work on Linux or MacOS.

> Example Implementation

For a quick example on how you would integrate this into a script, see [this example script that showcases a basic logging layout](../../Logging/basics/example-script.md)

> Changing the Path

You can modify the path where PSFramework assumes AppData to be using the `Set-PSFPath` command, thereby changing the location where PSFramework creates the debug dumps.
This change however is process-wide - if you do not revert it after you are done, your console is going to remember the redirection!

## Reading A Debug Dump

After having collected the debug dump, we now need to read it, in order to troubleshoot what went wrong.
Which is where you hit your first hurdle, because inside of the zip archive is only a single file ... a `.clidat` file.

Now, you may be wondering, what kind of file that might be - it is a compressed, binary data dump from PowerShell, intended to be read _using_ PowerShell, through the command `Import-PSFClixml`:

```powershell
# Expand Archive
Expand-Archive -Path .\powershell_support_pack_2025_11_07-08_06_02.zip -DestinationPath .

# Read Data
$data = Import-PSFClixml -Path .\powershell_support_pack_2025_11_07-08_06_02.cliDat
```

And you now have access to all the data in the dump.
A few examples:

```powershell
# Those red messages on screen
$data.PSErrors

# User Input History
$data.History

# PSFramework Logs
$data.Messages

# The modules loaded, at which version from which path
$data.Modules

# The PowerShell version running
$data.PSVersion

# Screenshot of the console (NOT Desktop)
$data.ConsoleBuffer
```

## Extending the Data provided in the Debug Dump

To extend the data being collected, run the `Register-PSFSupportDataProvider` command, providing the name of the data and the logic that will collect it:

```powershell
Register-PSFSupportDataProvider -Name MyModule_TokenMetadata -ScriptBlock { Get-MMTokenMetadata }
```

And later when analyzing the data dump stored in `$data`:

```powershell
$data._MyModule_TokenMetadata
```
