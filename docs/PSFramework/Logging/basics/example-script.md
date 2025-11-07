---
sidebar_position: 0
---

# Example Script

## Synopsis

When looking up help on a command, the first thing we tend to look at are the examples.
While the rest of the documentation strives to explain all the details of how to use the PSFramework logging and just how it all ties together, here is a quick example script implementing PSFramework logging.

See below the example for further resources.

## Example

```powershell
[CmdletBinding()]
param (
    [string]
    $LogRoot = 'C:\Logs'
)

# Error Handling
$ErrorActionPreference = 'Stop'
trap {
    Write-PSFMessage -Level Warning -Message "Script failed" -ErrorRecord $_
    Disable-PSFLoggingProvider -Name logfile -InstanceName $script:_ScriptName
    New-PSFSupportPackage -TaskName $script:_ScriptName
    throw $_
}

# Logging
$script:_ScriptName = 'MyTask'
$paramSetPSFLoggingProvider = @{
    Name         = 'logfile'
    InstanceName = $script:_ScriptName
    FilePath     = "$($LogRoot)\$($script:_ScriptName)-%Date%.csv"
    Enabled      = $true
    Wait         = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider

#region Functions
# To Do: Add implementing functions
#endregion Functions

Write-PSFMessage -Message "Starting Script"

# Main

# To Do: Add main logic

Write-PSFMessage -Message "Script completed successfully"
Disable-PSFLoggingProvider -Name logfile -InstanceName $script:_ScriptName
```

> Explanation

1. The trap statement catches all errors that happen later in the script.
This ensures that even if the script fails in some unmanaged manner, we can still wrap up the logging.
The [support package command](../../Utility/Commands/new-psfsupportpackage.md) will also generate a debug dump (and rotate old dumps, if the same script fails too often).
2. Then we define the logging as the first thing.
3. The script does its thing
4. Finally, we disable the logging as the last line, ensuring that the logging concludes if nothing went wrong.

## Resources

+ A lot of the "why?" are covered in the docs for [Logging Providers](logging-providers.md)
+ Generating messages [is covered here](writing-messages.md)
+ To see how you can configure logfiles see the [logging guide](../loggingto/logfile.md) and the [Logging Provider reference](../providers/logfile.md).
+ For other logging targets, see the "logging to" section in the [logging landing page](../overview.md).
+ The [New-PSFSupportPackage](../../Utility/Commands/new-psfsupportpackage.md) is a nifty tool to collect debugging information. Beware though, it can collect a bit much information and the data is not encrypted.
+ The script layout and how to fill it out is covered in more detail in this [conference talk on script design](https://www.youtube.com/watch?v=EWIu0Ywrtsk).
+ The trap statement is covered in depth in this [conference talk on error handling](https://www.youtube.com/watch?v=ZFI8MQJwsa4).
