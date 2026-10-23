---
sidebar_position: 3
---

# Logging Provider: Azure Log Analytics (V2)

A Logging Provider that enables to user to send messages straight to an Azure Log Analytics workspace.
Requires you to have [already configured a target workspace](../../../other/psframework/logging-configureazureloganalytics.md) to log to.

## Stats

|||
|---|---|
|Name|AzureLogAnalyticsV2|
|Version|2|
|ConfigurationRoot|PSFramework.Logging.AzureLogAnalyticsV2|
|Supports Data|False|
|Installation|Not Required|

## Properties

> Properties are used to control the behavior of the Provider.
> They can be specified using Set-PSFLoggingProvider or provided using the [Configuration system](../../Configuration/overview.md).

### Core Settings

The core settings that must be provided or govern general execution

|Name|Default Value|Description|
|---|---|---|
|Subscription||Mandatory. The Subscription (by its ID, not name) the Data Collection Endpoint & Rule are in. Both must be in the same Resource Group.|
|ResourceGroup||Mandatory. The resource Group the Data Collection Endpoint & Rule are in. Both must be in the same Resource Group.|
|DceName||Mandatory. Name of the Data Collection Endpoint determining the request url used.|
|DcrName||Mandatory. Name of the Data Collection Rule to send data to.|
|BatchSize|25|Up to how many messages are uploaded in one request. Larger improves throughput but may lead to lost requests when sending too much data.|
|Headers|Message, Timestamp, Level, Tags, Data, ComputerName, Runspace, UserName, ModuleName, FunctionName, File, Line, CallStack, TargetObject, ErrorRecord|The properties on the messages to push to Log Analytics table. Supports renaming by specifying properties like this: "Timestamp as Time"|

### Table/Stream Selection Settings

Default behavior if nothing is specified:
Use the only data flow configured on the Data Collection Rule, error out if more than one is configured.

|Name|Default Value|Description|
|---|---|---|
|Stream||The specific name of the Data Stream on the Data Collection Rule to send data to. Overrides Automatic Stream selection or selection by Table name.|
|Table||The name of the table in Azure Log Analytics. Optional, used as tie breaker if the Data Collection Rule has multiple dataflows / streams to select from. By default, if the DCR only has one Data Flow configured, this can be omitted.|

### Authentication Settings - Direct

The various parameters used to authenticate before sending actual requests / logs.
These map to the parameters of `Connect-EntraService` from the [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth) project.

|Name|Default Value|Description|
|---|---|---|
|ClientID||Authentication Info. The Client ID of the Application to use for authentication. Defaults to the same application used for Connect-AzAccount.|
|TenantID||Authentication Info. The Tenant ID of the Application to use for authentication. Defaults to the tenant of the user if in delegate mode, must be specified in Application mode, other than for MSI authentication.|
|Browser||Authentication Info. Explicitly authenticate in Delegate Authorization Code flow - will use the default browser to have you log in as yourself.|
|RedirectUri||Authentication Info. Override the automatic redirect to localhost in Authorization Code flow. Usually needs not be adjusted.|
|RefreshToken||Authentication Info. A refresh token (as string) to use for authenticating by reusing an existing token.|
|RefreshTokenObject||Authentication Info. A resfresh token (as EntraAuth token object) to use for authenticating by reusing an existing token.|
|Certificate||Authentication Info. A certificate (as X509Certificate2 object) to use for authenticating in application mode.|
|CertificateThumbprint||Authentication Info. A certificate (selected by its thumbprint from your windows certificate stores) to use for authenticating in application mode.|
|CertificateName||Authentication Info. A certificate (selected by its CN from your windows certificate stores) to use for authenticating in application mode.|
|CertificatePath||Authentication Info. Path to .pfx file containing the certificate to use for authenticating in application mode. Use together with CertificatePassword|
|CertificatePassword||Authentication Info. Password to the .pfx file containing the certificate to use for authenticating in application mode. Use together with CertificatePath|
|ClientSecret||Authentication Info. The clientsecret to use for authenticating in application mode.|
|Identity||Authentication Info. Authenticate as the Managed Identity - System-Managed or User-Assigned. Will default to System-Managed unloss also specifying an IdentityID|
|IdentityID||Authentication Info. Id of the System-Assigned identity to use. Use together with IdentityType to determine whether it is a ClientID, PrincipalID or ResourceID.|
|IdentityType||Authentication Info. Use together with IdentityID to specify whether the user-assigned identity is a ClientID, PrincipalID or ResourceID.|
|FallBackAzAccount||Authentication Info. Fallback to using the currently established AzContext from Connect-AzAccount. Intended for use with Identity & Federated flows as a local fallback when testing on your own machine.|
|AsAzAccount||Authentication Info. Reuse the connection established with Connect-AzAccount. Requires the connection having previously established.|
|ShowDialog||Authentication Info. When using the AzAccount session, should the interactive UI be shown? "auto": Only when needed. "always": Show no matter what. "never": Don't show, but will error the logging if required.|
|Federated||Authentication Info. Use Federated credentials to authenticate. Use when running on a system supporting Managed Identities but your organization requires the use of an App Registration & Enterprise Application.|
|FederationProvider||Authentication Info. Which Federation Provider to use. Overrides the default autodetection.|
|Assertion||Authentication Info. The credentials from the federated identity provider to use in an Federated Credentials authentication flow. Highly optional.|
|Environment||Authentication Info. What environment the tenant runs in. Defaults to "Global", options: Global, USGov, USGovDOD, China.|
|AuthenticationUrl||Authentication Info. The url used for the authentication requests to retrieve tokens. Generally provided by the Environment parameter, but can be overridden in case of need.|

### Authentication Settings - By Token

Alternatively to having the connection established in the background you can pre-connect and pass the tokens to the background logger.
This allows exact control over flows, environments authentication proxies and some things that just do not work in a background Runspace (such as the DeviceCode flow).

:::info
Important:
These tokens must be generated using [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth), and not plain access token strings!
:::

|Name|Default Value|Description|
|---|---|---|
|AzureToken||Authentication Info. A previously established token using Connect-EntraService to the "Azure" service, NOT a plain access token string.|
|MonitorToken||Authentication Info. A previously established token using Connect-EntraService to the "https://monitor.azure.com/" resource (or environment-specific alternatives), NOT a plain access token string.|

## EntraAuth and PSFramework

As previously mentioned, this logging provider uses tools from the [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth) module for its authentication.
That module is under the full control of the same author as PSFramework.

The [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth) module code is embedded in PSFramework internals and not an additional dependency to manage.
It is a modified version to ensure no conflicts even with other logging providers (The module is only loaded into the logging runspace and never exposed).

For the purpose of code review & approval processes, you can take [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth) into source control and build it yourself, replacing the embedded version in PSFramework with your own build artifact.
You can find the recommended adjustments from the default build result [in this document](https://github.com/PowershellFrameworkCollective/psframework/blob/development/PSFramework/modules/EntraAuth.md).

The embedded version of [EntraAuth](https://github.com/FriedrichWeinmann/EntraAuth) adheres to the [Reliability Promise](https://github.com/PowershellFrameworkCollective/psframework/blob/development/PSFramework/The%20PSFramework%20Reliability%20Promise.md) within the subset of features exposed through PSFramework.
If you decide to conveniently directly load it form path, rather than install the public version, no guarantees.

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

## Notes

This Logging Provider currently does not support special proxy handling.
In order to successfully log to Azure Log Analytics, default connectivity must succeed.
