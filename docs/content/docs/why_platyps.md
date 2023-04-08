---
title: Why PlatyPS
linkTitle: Why PlatyPS
description: What problem does PlatyPS solve.
weight: 2
---

## Why?

Traditionally PowerShell external help files have been authored by hand or using complex tool chains and rendered as MAML XML for use as console help.
MAML is cumbersome to edit by hand, and common tools and editors don't support it for complex scenarios like they do with Markdown. PlatyPS is provided as a solution for allow documenting PowerShell help in any editor or tool that supports Markdown.

An additional challenge PlatyPS tackles, is to handle PowerShell documentation for complex scenarios (e.g. very large, closed source, and/or C#/binary modules) where it may be desirable to have documentation abstracted away from the codebase. PlatyPS does not need source access to generate documentation.

Markdown is designed to be human-readable, without rendering. This makes writing and editing easy and efficient.
Many editors support it ([Visual Studio Code](https://code.visualstudio.com/), [Sublime Text](http://www.sublimetext.com/), etc), and many tools and collaboration platforms (GitHub, Visual Studio Online) render the Markdown nicely.

## Common setups

There are 2 common setups that are used:

1. Use markdown as the source of truth and remove other types of help.
2. Keep comment based help as the source of truth and periodically generate markdown for web-site publishing.

They both have advantages and use-cases, you should decide what's right for you.
There is slight preference toward number 1 (markdown as the source).
