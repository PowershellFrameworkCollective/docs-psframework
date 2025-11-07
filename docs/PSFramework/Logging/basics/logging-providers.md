---
sidebar_position: 3
---

# Logging Providers

## Introduction

A Logging Provider is a plugin that contains code to handle Messages.
They essentially determine, where the [Messages](writing-messages.md) get logged to - whether a [logfile](../loggingto/logfile.md), the [eventlog](../loggingto/eventlog.md) or [Azure Log Analytics](../loggingto/azureloganalytics.md).
Or even [your own logging system](../advanced/writing-logging-providers.md).

To get a list of Logging Providers available to you, run the following command:

```powershell
Get-PSFLoggingProvider
```

And you should see a list like this:

```text
Name              Enabled ProviderVersion IncludeModules ExcludeModules IncludeTags ExcludeTags Initialized InstallationOptional
----              ------- --------------- -------------- -------------- ----------- ----------- ----------- --------------------
filesystem        True    Version_1       {}             {}             {}          {}          True        True
AzureLogAnalytics False   Version_2       {}             {}             {}          {}          False       False
console           False   Version_2       {}             {}             {}          {}          False       False
eventlog          False   Version_2       {}             {}             {}          {}          False       False
gelf              False   Version_2       {}             {}             {}          {}          False       False
logfile           False   Version_2       {}             {}             {}          {}          False       False
splunk            False   Version_2       {}             {}             {}          {}          False       False
Sql               False   Version_2       {}             {}             {}          {}          False       False
```

In most cases, only the first three columns are of interest:

+ Name: The name of the plugin. We will need that when configuring logging through it.
+ Enabled: Whether the plugin is currently in use. By default, only the [default debug log (filesystem)](../loggingto/debuglog.md) is enabled.
+ ProviderVersion: What generation the provider is part of. V2 and potential later versions support having more than one instance active at the same time (e.g. you can write two separate logfiles at the same time).

## Process Wide

All Logging Providers operate at the _process_ level.
Whether they are configured in a script, by group policy, in a module or explicitly by the console user, they apply to all messages sent by anyone in the process, unless specific filter conditions exclude messages.

This can have multiple consequences:

+ A script's messages could be logged, without the script itself defining any logging
+ If a script defines logging, but does not disable it as it ends, the logging will persist in the console afterwards, not release files and keep getting entries from other scripts.
+ If you use runspaces, messages from your background runspaces may also end up in your log, intended or not.

## Enabling / Setting a Logging Provider

The `Set-PSFLoggingProvider` command is used to enable a Logging Provider.
Here is a quick example of how that would look:

```powershell
$param = @{
    Name         = 'logfile'
    InstanceName = 'MyTask'
    FilePath     = 'C:\Logs\MyTask-%Date%.csv'
    Enabled      = $true
    Wait         = $true
}
Set-PSFLoggingProvider @param
```

Lets go through the parameters used:

> Name

The name of the Logging Provider to use.
Matches the "Name" value shown in the last section of this document.

> InstanceName

The name of the instance to generate.
By assigning an instance name, you can have more than one instance of a Provider active at the same time.

While this is optional, it is strongly recommended to provide a specific instance name.

> FilePath

This is a parameter specific to the [logfile Logging Provider](../providers/logfile.md).
Each Logging Provider has their own set of parameters, as makes sense in its context - the [eventlog](../providers/eventlog.md) Provider will have no need for a path to a file to write, the [logfile](../providers/logfile.md) Provider would not know what to do with a Source entry.

> Enabled

Logging Providers - or rather instances thereof - can be both enabled and disabled as needed.
Just configuring one without enabling it will not do a thing by itself.

Simply put, specify this as `$true` when you want to define your logging and make it start right away.

> Wait

This parameter makes the command take a bit of extra time, to make sure things are working alright.
Generally, you want to specify this, but if you define multiple Logging Provider Instances, you only need to wait for the last one.

Now, the "why exactly" of this is a bit more involved and would distract here - see "Waiting and The Asynchronous Nature of Logging" at the bottom of this document for details.

## Enabling a Logging Provider via Configuration

When you configure a Logging Provider Instance via `Set-PSFLoggingProvider`, you create configuration settings in memory, that lead to the logging happening.
While we will not cover this here in detail, but you can apply the same settings via the [PSFramework Configuration System](../../Configuration/overview.md).

Assuming you have given your Logging Provider Instance the Instance Name `MyTask`, you can check the settings you need to deploy to do the same via configuration like this:

```powershell
Get-PSFConfig "*.MyTask.*"
```

This could allow you to define logging via:

+ Config file you import explicitly before you run your code
+ Group Policy, to have some central logging
+ Environment Variable (e.g. for logging in a container)

And if each logging configuration uses a different instance name, they can coexist peacefully.

## Looking up my Instance

Now that we have deployed logging, we can send messages and be confident they will get to where they need to go.
But ... how can we look up what logging we just deployed?

Well, where there is a `Set-`, there usually also is a `Get-`:

```powershell
Get-PSFLoggingProvider
```

But ... that only lists the Logging Providers / plugins, not the instances we just configured!
We can see whether _any_ instances exist for a given Logging Provider, but other than legacy v1 Providers, there is little information on the current state.

There is a separate command to list the actual instances:

```powershell
Get-PSFLoggingProviderInstance
```

```text
Provider Name       Enabled IncludeModules ExcludeModules IncludeTags ExcludeTags
-------- ----       ------- -------------- -------------- ----------- -----------
eventlog MyEvents   True    {}             {}             {}          {}
logfile  CmtraceLog True    {}             {}             {}          {}
logfile  CsvLog     True    {}             {}             {}          {}
```

As you can see, we can also configure filters for our Logging Provider Instance.
More on that in a chapter below.

### My Logging Fails!

Now, if you have any issues with log entries not arriving where you expect them to be, there might be issues with the configuration provided or the plugin / Provider used.
There is a full [guidance on debugging Logging Providers](../advanced/debugging-providers.md), but that is aimed at developers who write their own Logging Providers.

For simple troubleshooting, this command is usually enough:

```powershell
Get-PSFLoggingError
```

If you had a typo in your path, got an access denied or whatnot, this is where it should show up.

## Ending my logging

Since logging is handled process wide, we usually want to disable Logging Provider Instances when our script is done, making sure all messages have been written.
That way, we can be sure on the one hand, that no message is lost and on the other, that it does not persist and collect messages we did not plan to go to that log.

You will find, there is no `Remove-PSFLoggingProviderInstance` command.

The way to disable logging is to use the `Disable-PSFLoggingProvider`:

```powershell
Disable-PSFLoggingProvider -Name logfile -InstanceName MyTask
```

This will guarantee, that all messages are logged through, that the logging provider is shutting down and - in case you have background runspaces sending more messages - that any messages generated after this command started are disregarded.

## Filter

You can apply filters, that determine, whether a message applies to your Logging Provider Instance.
Criteria you can apply - and do so to each instance separately:

+ Module: Include or Exclude messages written by commands from a specific module.
+ Functions: Include or Exclude messages written by specific commands.
+ Runspace: Include or Exclude messages written from a specific runspace. This can be a bit more complex, which is why [a dedicated guide covers this in more depth](../advanced/filtering-by-runspace.md)
+ Tag: Include or Exclude messages that contain the specified tags.
+ Level: Limit the messages logged based on their level.

```powershell
# Example Filters applied
Set-PSFLoggingProvider -Name logfile -InstanceName MyTask -ExcludeTags debug -MinLevel 1 -MaxLevel 3 -Enabled $true -FilePath 'C:\Logs\MyTask-%Date%.csv'
```

> Tag

Tag based filtering requires a single match on either condition.
So if you include three tags, any message containing _at least one of them_ will be considered applicable.

> Level

The Level filter is based on the [Levels assigned to a message](message-levels.md).
Essentially, this is your main control, over how verbose and detailed a log is.

So for probably not too surprising, but there are two issues that need covering:

First of all, the regular message levels range from 1 (very important) to 9 (Internal Comment).
If you want only the most important messages included, setting `-MinLevel` to 1 and `-MaxLevel` to 3 would be reasonable.
By default, the ranges 1-3 are written to screen and 4-6 are written to verbose.

What makes this a bit more complex are the levels `Warning` and `Error`, which are written to screen as warning, but do not fall into the numeric range of priority, as the other levels _do_.
By default, they will always be included in the log.
They have dedicated switch parameters - `-ExcludeWarning` and `-ExcludeError`, respectively - to exclude them from the log.

> Include Behavior

By default, if you only apply exclusion filter conditions, then all messages that do not match an exclusion condition will be logged.
In case of multiple include rules, _all_ rules must apply.
For example, if we include the module `DemoModule` and include the tags `fail, success, result`, then a message must be generated from this module _and_ include at least one of those tags.

But in a more dynamic content where we add and remove include conditions - specifically [for the complex runspace scenario](../advanced/filtering-by-runspace.md) - we may want to specify that _at least one_ include rule must apply.
In that case, if we remove the last include rule, _nothing_ will get logged through that instance until we restore an include condition.
To enable this behavior, enforcing at least one include rule needing to match, use the `-RequiresInclude` parameter.

## Addenda

The following content is a bit more deep dive but explains some of the behaviors in deeper detail.

### Waiting and The Asynchronous Nature of Logging

The logging in PSFramework happens in a background runspace.
A runspace is the PowerShell equivalent to a thread.

So, when you send a message in your script, it will be queued up and soon processed / logged in that background runspace.
Since the queue is threadsafe, if you use runspaces yourself, all runspaces can send messages without any conflicts - your script does not directly write to a logfile, the dedicated logging runspace does.

This offers two essential advantages:

+ Your code does not have to wait for each log message to complete, so it slows less than direct logging
+ If you parallelize your code, you avoid conflicts, trying to write to the same file / resource.

So, how does this matter when it comes to Logging _Providers_?

When you configure a Logging Provider Instance, what you really do is define the settings on how logging should happen.
The background logging runspace then - [at the start of its next cycle](../advanced/logging-sequence.md) - will dynamically create a new module for the instance, so that henceforth messages can get processed.
Depending on your timing and the current location in that cycle, an issue might happen if your script looks like this:

```powershell
Set-PSFLoggingProvider -Name logfile -InstanceName MyTask -FilePath 'C:\Logs\MyTask-%Date%.csv' -Enabled $true
Write-PSFMessage -Message "Starting script
```

If your timing is unlucky, you could finish defining the configuration after the [start of the cycle](../advanced/logging-sequence.md), but before message processing.
Then you send a message, which is processed - no logging configured yet, so it is not logged - and only after that cycle completed, the new Logging Provider Instance actually finishes initialization.

In other words, if that bad timing happens, **your first few messages might be lost**.

By specifying the `-Wait` parameter on `Set-PSFLoggingProvider` - or explicitly calling `Wait-PSFMessage` or `Disable-PSFLoggingProvider` - you tell the system to wait for the [start of the next logging cycle](../advanced/logging-sequence.md), thus ensuring no messages are lost.
