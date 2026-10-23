---
sidebar_position: 3
---

# Logging to: Azure Log Analytics (V2)

## Setting up logging

### Setting Up Azure Log Analytics

To enable logging to Azure Log Analytics, first you must prepare a few things:

+ Create a [Log Analytics Workspace](https://docs.microsoft.com/en-us/azure/azure-monitor/learn/quick-create-workspace)
+ Create a Table with the columns you want logged
+ Create a Data Collection Rule
+ Create a Data Collection Endpoint
+ Connect that all
+ Grant the Azure Identity that your PowerShell will authenticate as the rights, to send logs to the Data Collection Rule

Sounds complicated?
[Here's a guide and toolkit that will set it up for you](../../../other/psframework/logging-configureazureloganalytics.md).

### Configure PowerShell

> Interactive

This will configure to log via Delegate Authentication as the current user.
An authentication prompt will trigger in the default browser.
Since no table is specified, it will only work if the Data Collection Rule has only a single flow configured.

```powershell
$paramSetPSFLoggingProvider = @{
    Name          = 'AzureLogAnalyticsV2'
    InstanceName  = 'MyTask'
    Subscription  = '2252ceb9-da2f-46a0-a5fd-8d5975a15df4'
    ResourceGroup = 'rg_pwsh_logging'
    DceName       = 'pwsh-DCE'
    DcrName       = 'pwsh-DCR'
    Enabled       = $true
    Wait          = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider
```

> Managed Identity & Table

Authenticates the script as the System-assigned Managed Identity of the current context (such as an Automation Account or a Function App).
Will log to the `user_provisioning_CL` table, _so long as the targeted Data Collection Rule has a dataflow connecting to that table._

```powershell
$paramSetPSFLoggingProvider = @{
    Name          = 'AzureLogAnalyticsV2'
    InstanceName  = 'MyTask'
    Subscription  = '2252ceb9-da2f-46a0-a5fd-8d5975a15df4'
    ResourceGroup = 'rg_pwsh_logging'
    DceName       = 'pwsh-DCE'
    DcrName       = 'pwsh-DCR'
    Table         = 'user_provisioning_CL'
    Identity      = $true
    Enabled       = $true
    Wait          = $true
}
Set-PSFLoggingProvider @paramSetPSFLoggingProvider
```

> Certificate Authentication and dedicated stream targeting

Authenticate with the newest certificate with private key holding the specified subject.
Also explicitly specifies the data ingestion stream to use on the Data Collection Rule.

```powershell
$paramSetPSFLoggingProvider = @{
    Name            = 'AzureLogAnalyticsV2'
    InstanceName    = 'MyTask'
    Subscription    = '2252ceb9-da2f-46a0-a5fd-8d5975a15df4'
    ResourceGroup   = 'rg_pwsh_logging'
    DceName         = 'pwsh-DCE'
    DcrName         = 'pwsh-DCR'
    Stream          = 'Custom_user_provisioning'
    ClientID        = '74f318ac-f2d3-4fac-9ae3-66f02dcf8ee9'
    TenantID        = 'cd2ec40d-d3ea-4437-a7fc-ce98cc701bda'
    CertificateName = 'CN=User Creation System'
    Enabled         = $true
    Wait            = $true
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

For more detailed docs, [see the full documentation for the Azure Log Analytics logging provider](../providers/azureloganalyticsv2.md)
