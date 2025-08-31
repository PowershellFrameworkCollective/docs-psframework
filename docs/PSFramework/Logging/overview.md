---
sidebar_position: 1
---

# The Logging System

## Synopsis

The logging system enables maximum flexibility when logging for minimal complexity to use.
It supports logging in different formats to a variety of logging services.
Its asynchronous nature prevents impact on code performance while being runspace-safe to use.

## Key Features / Benefits

- Log to file, eventlog, Azure Log Analytics, Splunk, Graylog or SQL with out-of-the-box-tools
- Simple to use: Get started in less than 5 minutes
- Extensible with custom logging logic
- Configurable logging at script, process, user or machine level
- Enable scripts to integrate into existing logging, without code-change
- Runspace-Safe: Logging from multiple runspaces in parallel without conflict
- Rich log data for both debugging and auditing
- Automatic debug log

## Core Concepts

- [Summary: Architecture](core/summary-architecture.md)
- [Core Concepts](core/core-concepts.md)

## Quick Start Guides

- [Logging Quick Start Guide](../../quickstart/psframework/logging.md)

## Logging To ...

A quick refence list on how to log to the built-in Logging Providers:

- [... the debug log](loggingto/debuglog.md)
- [... a logfile](loggingto/logfile.md)
- [... the Windows Eventlog](loggingto/eventlog.md)
- [... Azure Log Analytics](loggingto/azureloganalytics.md)
- [... Splunk](loggingto/splunk.md)
- [... Graylog](loggingto/graylog.md)
- [... SQL](loggingto/sql.md)
- [... Console](loggingto/console.md)

## Basics

- [Writing Messages](basics/writing-messages.md)
- [Troubleshooting](basics/troubleshooting.md)
- [Logging Providers](basics/logging-providers.md)
- [In-Memory debug log](basics/inmemory-debuglog.md)
- [Message Levels](basics/message-levels.md)
- [Multilingual Messages](basics/multilingual.md)
- [Message Configuration Settings](basics/message-configuration-settings.md)
- [Tuning the Message display style](basics/message-display-style.md)

## Logging Providers

The full reference documentation for each built-in Logging Provider

- [The FileSystem Provider](providers/filesystem.md)
- [The LogFile Provider](providers/logfile.md)
- [The Eventlog Provider](providers/eventlog.md)
- [The Azure Log Analytics Provider](providers/azureloganalytics.md)
- [The GELF Provider](providers/gelf.md)
- [The Splunk Provider](providers/splunk.md)
- [The SQL Provider](providers/sql.md)
- [The Console Provider](providers/console.md)

## Conference Recordings

- [PowerShell Summit 2019: Logging in a DevOps world](https://www.youtube.com/watch?v=Uy5Qd9g25Dg)
- [PSConfAsia 2018: Logging in a DevOps world](https://livestream.com/gaelcolas/PSConfAsia/videos/182706619)

## Advanced

- [Writing Custom Logging Providers](advanced/writing-logging-providers.md)
- [The Logging Sequence](advanced/logging-sequence.md)
- [Debugging Logging Providers](advanced/debugging-providers.md)
- [Message Policies](advanced/message-policies.md)
- [Cmdlets & Logging](advanced/cmdlets-and-logging.md)
- [Logging Provider Generations](advanced/logging-provider-generations.md)
- [Filtering by Runspace](advanced/filtering-by-runspace.md)
