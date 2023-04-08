---
title: Quick Start
linkTitle: Quick Start
description: Getting started with the PlatyPS module.
weight: 1
---

## Quick start

* Install platyPS module from the [PowerShell Gallery](https://powershellgallery.com):

```powershell
Install-Module -Name platyPS -Scope CurrentUser
Import-Module platyPS
```

* Create initial Markdown help for `MyAwesomeModule` module:

```powershell
# you should have module imported in the session
Import-Module MyAwesomeModule
New-MarkdownHelp -Module MyAwesomeModule -OutputFolder .\docs
```

* Edit markdown files in `.\docs` folder and populate `{{ ... }}` placeholders with missed help content.

* Create external help from markdown help

```powershell
New-ExternalHelp .\docs -OutputPath en-US\
```

* **Congratulations**, your help is now in markdown!

* Now, if your module code changes, you can easily update your markdown help with

```powershell
# re-import your module with latest changes
Import-Module MyAwesomeModule -Force
Update-MarkdownHelp .\docs
```
