---
sidebar_position: 1
---

# Runspace Workflows

## Synopsis

Runspace Workflows allow easily architecting a set of steps that will be execute in parallel:

+ For Each step of a workflow, define how many times it should be executed in parallel
+ The results of one step become the input for the next step
+ No need to deal with the details - just provide the business logic for each step

## Description

The fundamental system of Runspace Workflow consists of three main components:
The Workflow Object, the Worker and the Queue:

+ Workflow Object: Represents the entire workflow and hosts all the interna, including the Workers and the Queues.
+ Worker: An individual step in the workflow, the worker contains the business logic of that step, the configuration and the runspaces actually executing it.
+ Queue: A workflow can have as many queues as desired. They ensure data gets exchanged between steps, usually the output of one step becoming the input of the next step.

## Conference Recording

This feature was extensively explained and demonstrated at the PowerShell Summit 2024:

> [PowerShell Summit 2024: Runspace Workflows](https://www.youtube.com/watch?v=rspi8necNy0)

## Core Concepts

+ [The Workflow Object](Core/workflow.md)
+ [The Worker](Core/worker.md)
+ [The Queue](Core/queue.md)

## Examples

While the details on the components may provide value, this system benefits most from some examples:

+ [A simple workflow](Examples/examples-simple.md)
+ [Begin & End](Examples/examples-begin-end.md)
+ [Including Variables, Functions and Modules](Examples/examples-resources.md)
+ [Different variable value per runspace](Examples/examples-perrunspacevariables.md)
+ [Automatically ending Workflows](Examples/examples-auto-close.md)
+ [When the first step generates the input](Examples/examples-first-step-data.md)
+ [Branching Flows - One step feeding multiple others](Examples/examples-multi-pronged-flows.md)
+ [Data outside of the Queues](Examples/examples-the-data-field.md)
+ [Rate limiting - throttling and workflows](Examples/examples-throttling.md)
