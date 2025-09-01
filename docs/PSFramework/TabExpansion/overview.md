---
sidebar_position: 1
---

# Tab Expansion

## Synopsis

PSFramework Tab Completion makes deploying custom tab expansion / completion a painless and fast experience.

## Key Features

+ Simple design for tab completion
+ Transparent system for assigning tab completion
+ Use both PS5+ native feature as well as Tab Expansion Plus Plus if available
+ Fails silently when prerequisites do not exist

## Description

Custom tab completion has been around for some years now.
Originally introduced by Jason Shirk in his module `Tab Expansion Plus Plus`, it allows assigning a scriptblock to a parameter, so it will be executed when the user tries to tab-complete an argument for a command's parameter.

This has massively changed the way user experience can be optimized, flexibly offering user just the options that matter to him.
This reduces typing and the amount of typos and frustration.

However the previous implementations were _not_ optimized for _developer_ experience.
They require quite a bit of learning ... and look scary enough that many didn't bother to make the effort.
Add to that that it is quite cumbersome to manage and reuse scriptblocks for this, as well as having to handle scenarios where the prerequisites are not available ... it has seen too little use.

This has to change.

The PSFramework Tab Completion component removes most overhead, makes it easy to deploy and manage and offers flexibility in how to place the related resources in your module.

## Quick Start Guides

+ [Getting Started with Tab Completion](../../quickstart/PSFramework/tabcompletion.md)

## Fundamentals

+ [Basics](Basics/basics.md)
+ [Special Variables](Basics/special-variables.md)
+ [Working with the Word to Complete](Basics/typed-so-far.md)
+ [Accessing already bound parameters](Basics/previous-parameters.md)
+ [Training your Completion](Basics/training-completers.md)

## Diving Deeper

+ [Accessing the parameter bound to](Advanced/called-parameter.md)
+ [Accessing the called command](Advanced/calling-command.md)
+ [Accessing the Ast](Advanced/accessing-the-ast.md)
+ [Cached Tab Completion with Asynchronous Refresh](Advanced/asynchronous-refresh.md)

## Predefined Completions

The PSFramework may include finished tab completion scripts useful to the audience at large:

+ [Tab Completion: Input Object Properties](Predefined/completion-inputobject.md)
