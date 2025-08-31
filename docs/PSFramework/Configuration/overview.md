---
sidebar_position: 1
---

# The Configuration System

## Synopsis

The configuration system allows implementing configuration settings, similar to an options menu.

## Key Features / Benefits

+ Offer self-documented, validated options to user
+ Make modules manageable by Group Policy or DSC
+ Control scripts with configuration files
+ Provide a persisting cache
+ Eliminate options-commands
+ Allow control over internal settings, without having to pass them out as parameters.

## Description

The configuration system is a system that maintains settings for modules.
It has four common use scenarios:

### Module Options

A module can offer its settings in the configuration system, making them discoverable and self-documented.
This basically mimicks an options menu from regular applications.
It allows offering sane default values but still giving the user a voice in how something is being executed, without having to drive complexity by passing through dozens of parameters.

Users can then either change these settings per session or more permanently.

In Windows environments, it then becomes simple to apply settings by group policy.
This incidentaly makes it possible to update settings at scale without having to update the module, saving a lot of hassle on company internal modules when the environment changes.

### Script Control

Controlling scripts through configuration at scale allows ensuring compliance in these scripts.
This is generally used for non-specific settings that apply across most scripts of the entire estate, such as name of the mail server to use or where to log to.

### CI / CD Pipeline

Across a CI/CD Pipeline we have the same code pass through multiple stages and environments, requiring multiple settings.
The exportable/importable nature of the configuration system allows you to maintain environment specific settings as part of your code (and thus source control).

### Persisted Cache

The configuration system can also be used as a data cache that persists across sessions.

## Quick Start Guides

+ [Configuration Quick Start Guide](../../quickstart/PSFramework/configuration.md)

## In Depth Guides

### Core

+ [Configuration Basics](Core/basics.md)
+ [Implementing Validation](Core/validation.md)
+ [Using Handler Events](Core/handler.md)
+ [In Hiding](Core/in-hiding.md)
+ [The mysterious Initialize](Core/initialize.md)
+ [Configuration Persistence Basics](Core/persistence-basics.md)

### Scenario Guides

+ [Scenario Guide: Cache](Scenarios/scenario-cache.md)
+ [Scenario Guide: CI/CD](Scenarios/scenario-ci-cd.md)
+ [Scenario Guide: Module](Scenarios/scenario-module.md)
+ [Scenario Guide: Script](Scenarios/scenario-script.md)

### Persistence

+ [The Automatic Import Sequence](Persistence/import.md)
+ [Where configuration is stored](Persistence/persistence-location.md)
+ [Manually importing & exporting Configuration](Persistence/persistence-manual-export-import.md)
+ [Persisted Module Cache](Persistence/persistence-module-cache.md)
+ [Purging persisted data](Persistence/persistence-purge.md)
+ [Persistence and Serialization](Persistence/persistence-serialization.md)

### Schemata

+ [Writing a Configuration Schema](Schemata/schema-writing.md)
+ [Schema: Default](Schemata/schema-default.md)
+ [Schema: MetaJson](Schemata/schema-metajson.md)

### Other

+ [Deleting Settings](Other/deleting-settings.md)
