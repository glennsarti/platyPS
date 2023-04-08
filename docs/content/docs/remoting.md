---
title: PS Remoting
linkTitle: Remoting
description: Getting started with the PlatyPS module.
weight: 10
---

## Remoting

PlatyPS supports working with [`Import-PSSession`](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/import-pssession?view=powershell-6) aka implicit remoting.
Just pass `-Session $Session` parameter to the platyPS cmdlets and it will do the rest.
