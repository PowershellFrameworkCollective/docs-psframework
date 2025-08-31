# Logging Provider: GELF

> What are [Logging Providers](../basics/logging-providers.md)?
>
> [Logging to Graylog](../loggingto/graylog.md)

## Description

Allows logging to Graylog SIEM servers.

## Stats

|Name|gelf|
|Version|2|
|ConfigurationRoot|PSFramework.Logging.GELF|
|Supports Data|False|
|Installation|Required|

## Installation

The GELF provider requires the PSGELF PowerShell Module installed on the system it is running on.

To install the prerequisites use either:

```powershell
Install-PSFLoggingProvider -Name GELF
```

Or manually deploy the required module.

## Properties

> Properties are used to control the behavior of the Provider.
> They can be specified using Set-PSFLoggingProvider or provided using the [Configuration system](../../configuration.md).

|Name|Default Value|Description|
|---|---|---|
|GelfServer||The GELF server to send logs to|
|Port||The port number the GELF server listens on|
|Encrypt|True|Whether to use TLS encryption when communicating with the GELF server|

## Notes

n/a
