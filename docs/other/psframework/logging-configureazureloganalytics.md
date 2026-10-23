# Setting Up Azure Log Analytics for logging from PSFramework

Setting up everything in Azure Log Analytics so you can log to it from a script can be a bit of a chore:

+ Create a [Log Analytics Workspace](https://docs.microsoft.com/en-us/azure/azure-monitor/learn/quick-create-workspace)
+ Create a Table with the columns you want logged
+ Create a Data Collection Rule
+ Create a Data Collection Endpoint
+ Connect that all
+ Grant the Azure Identity that your PowerShell will authenticate as the rights, to send logs to the Data Collection Rule

So we added a tool to make it easier.

:::info
This guide is a "how to" on setting up Azure Log Analytics.
It is _not_ a prerequisite for logging from PSFramework - it is an attempt to make it easier for people who do not regularly do this and just want this "to work, dammit!".

If you are confident in your mastery of Log Analytics and Azure Monitor, feel free to ignore this guide.
:::

## Tools

This guide uses [EntraAuth.Azure.LogAnalytics](https://github.com/FriedrichWeinmann/EntraAuth.Azure.LogAnalytics) to deploy and configure everything.

You can install it like this:

```powershell
Install-Module -Name 'EntraAuth.Azure.LogAnalytics' -Scope CurrentUser
```

Or if you prefer using `PSFramework.Nuget`:

```powershell
Invoke-WebRequest 'https://raw.githubusercontent.com/PowershellFrameworkCollective/PSFramework.NuGet/refs/heads/master/bootstrap.ps1' -UseBasicParsing | Invoke-Expression
Install-PSFModule -Name 'EntraAuth.Azure.LogAnalytics'
```

## Connect

Generally speaking, you do not need any special privileges to follow with the later steps, other than Contributor rights on the Subscription or - more narrow - ResourceGroup.

```powershell
Connect-EntraService -Service Azure -ClientID Azure
Connect-EntraService -Service Graph -ClientID Azure -UseRefreshToken
```

## Step-by-Step Guidance

### Prepare

So, let's prepare some values the code later will use:

```powershell
$subscription = '88e6ed8d-d5f8-4961-a07f-cefd5a3a9195'
$rgName = 'rg_demo'
$laWorkspace = 'pslogging'
$laTable = 'entra_scripting'
$location = 'westeurope'
```

### 1a: Create Resource Group and Workspace

In case it hasn't been created through the portal yet, run the code below and skip 1b.

```powershell
$null = New-EaaResourceGroup -Subscription $subscription -Name $rgName -Location $location
$workspace = New-EalaWorkspace -Subscription $subscription -ResourceGroup $rgName -Name $laWorkspace
```

### 1b: Retrieve Workspace

Assuming your Azure Log Analytics workspace has already been created beforehand and you skipped 1a, we still need to retrieve it to continue:

```powershell
$workspace = Get-EalaWorkspace -Subscription $subscription -ResourceGroup $rgName -Name $laTableevents'
```

### 2: Configure table

Replace values as intended.

:::info
The `-Plan` parameter deserves special mention, due to the costs it implies:
There are three options here:

+ Analytics
+ Basic
+ Auxiliary

If you intend to do any monitoring and alerting on your logs, you need Analytics, however storing data in Analytics table over a long time is expensive.
Which is where `RetentionInDays` versus `TotalRetentionInDays` come in.
Essentially, keeping `RetentionInDays` small - 4 days is the minimum - means the data will be moved to cheaper options after that period for the remaining time until `TotalRetentionInDays`.
:::

```powershell
$workspace | New-EalaTable -Name $laTable -Plan Analytics -ColumnTemplate PSFrameworkLog -RetentionInDays 4 -TotalRetentionInDays 90 -Description 'Central Log for Entra-Automation, monitored for error events'
```

The `-ColumnTemplate PSFramework` predefines the columns in the table for the default headers the logging provider will use.
Feel free to adjust it if you want to and know what you are doing.

Just be aware that this must also be applied to the Data Collection Rule data flow to take effect.

For the full column definition, see the Appendix below.

### 3: Create Data Collection Endpoint and Rule

```powershell
$dataCollectionEndpoint = $workspace | New-EalaDataCollectionEndpoint -Name ("$($laWorkspace)-$($laTable)-DCE" -replace '_','-')
$dataCollectionRule = $workspace | New-EalaDataCollectionRule -TableName $laTable -Name "$($laWorkspace)-$($laTable)-DCR" -EndpointID $dataCollectionEndpoint.id
```

### 4: Authorize Identities to write to the Data Collection Rule

Once it's all set up, you need to assign permissions to whoever needs to send data.

+ If your script is supposed to run under the current user, that user needs to be granted permission
+ If a managed identity sends the data, the matching Service Principal needs to be granted permission
+ If your script authenticates with a certificate, the Enterprise Application matching your App Registration needs to be granted permission
+ Group-based permission assignments are ok too.

You can specify the full system identifier as a guid (User ID, SPN Object ID, ...) or the friendly name and have it translated.

:::info
If you specify by name, it will never assign rights in an ambiguous situation, such as two Service Principals with the same name.
If that happens, the command will fail, reporting the IDs of all matching entities.
:::

```powershell
New-EaaRoleAssignment -ResourceID $dataCollectionRule.id -RoleName 'Monitoring Metrics Publisher' -PrincipalID 'fred@contoso.com' -PrincipalType User -Description 'Because'
New-EaaRoleAssignment -ResourceID $dataCollectionRule.id -RoleName 'Monitoring Metrics Publisher' -PrincipalID 'Entra - PowerShell Script Logging' -PrincipalType ServicePrincipal -Description 'Scripts need it'
```

## Appendix: Default Table Schema

The default schema for a PSFramework log looks like this:

```json
[
  {
    "name": "Message",
    "type": "string"
  },
  {
    "name": "TimeGenerated",
    "type": "datetime"
  },
  {
    "name": "Timestamp",
    "type": "datetime"
  },
  {
    "name": "Level",
    "type": "string"
  },
  {
    "name": "Tags",
    "type": "dynamic"
  },
  {
    "name": "Data",
    "type": "dynamic"
  },
  {
    "name": "ComputerName",
    "type": "string"
  },
  {
    "name": "Runspace",
    "type": "string"
  },
  {
    "name": "Username",
    "type": "string"
  },
  {
    "name": "ModuleName",
    "type": "string"
  },
  {
    "name": "FunctionName",
    "type": "string"
  },
  {
    "name": "File",
    "type": "string"
  },
  {
    "name": "Line",
    "type": "int"
  },
  {
    "name": "Callstack",
    "type": "string"
  },
  {
    "name": "TargetObject",
    "type": "dynamic"
  },
  {
    "name": "ErrorRecord",
    "type": "dynamic"
  }
]
```
