---
sidebar_position: 999
---

# Logging to: Azure Log Analytics (Deprecated)

:::warning
This is the guide to the old way of sending logs to Azure Log Analytics, which has been retired by Microsoft.
It may still be useful in Azure Local deployments, so it has been retained.

For guidance on the latest way, [see the guide for logging to Azure Log Analytics (V2)](azureloganalyticsv2.md)
:::

## Setting up logging

To enable logging to Azure Log Analytics, after [preparing a workspace](https://docs.microsoft.com/en-us/azure/azure-monitor/learn/quick-create-workspace), run the following command (insert id and Shared Key):

```powershell
$paramSetPSFLoggingProvider = @{
    Name         = 'AzureLogAnalytics'
    InstanceName = 'MyTask'
    WorkspaceId  = '<id>'
    SharedKey    = '<key>'
    Enabled      = $true
    Wait         = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider
```

> Custom LogType

By default, all messages will get written to the `Message` table (logtype).
This can of course be customized:

```powershell
$paramSetPSFLoggingProvider = @{
    Name         = 'AzureLogAnalytics'
    InstanceName = 'MyTask'
    WorkspaceId  = '<id>'
    SharedKey    = '<key>'
    LogType      = 'MyTask'
    Enabled      = $true
    Wait         = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider
```

## Generating Messages

You can write messages using the `Write-PSFMessage` cmdlet, which functionally replaces Write-Verbose, Write-Host, Write-Warning, Write-Debug or Write-Log:

```powershell
# Verbose
Write-PSFMessage -Message "Test Message"

# Host
Write-PSFMessage -Level Host -Message "Message visible to the user"

# Debug
Write-PSFMessage -Level Debug -Message "Very well hidden message"

# Warning
Write-PSFMessage -Level Warning -Message "Warning Message"
```

You can also add tags for better filtering:

```powershell
Write-PSFMessage -Message "Tagged Message" -Tag special, custom, whatever
```

Specify the target you are working against to better track actions relating to that specific target:

```powershell
Write-PSFMessage -Message "Doing something" -Target $ComputerName
```

For more details on how to generate messages, [see the dedicated documentation page](../basics/writing-messages.md)

## Log Analytics and Azure Functions

If you are trying to log using PSFramework while inside an Azure Function App, there is one additional catch:
By default, logging is disabled in Function Apps, as it might keep the Function App running after the main script is done, creating unexpected overhead (and thus costs).

To enable it, run:

```powershell
Start-PSFRunspace -Name psframework.logging
```

When your code is done, be sure to disable it again avoid aforementioned costs:

```powershell
# Wait for logging to complete
Wait-PSFMessage

# Stop logging runspace
Stop-PSFRunspace -Name psframework.logging
```

## Logging Provider Documentation

For more detailed docs, [see the full documentation for the Azure Log Analytics logging provider](../providers/azureloganalytics.md)
