---
sidebar_position: 8
---

# Publishing Modules

## Introduction

Publishing to a PowerShell repository is a fairly straightforward affair:
Where before you would have used `Publish-Module` or `Publish-PSResource`, you now use `Publish-PSFModule`:

```powershell
Publish-PSFModule -Path C:\code\MyModule -Repository PSGallery -ApiKey $key
```

## Skipping Dependencies

One of the classic annoyances with `Publish-Module`:
In order for it to be willing to publish modules, not only does the target repository have to have all dependencies already published - no they also must all be installed locally as well.

No longer:

```powershell
Publish-PSFModule -Path C:\code\MyModule -Repository AzDevOps -Credential $cred -SkipDependenciesCheck
```

## Publish to folder

Sometimes, it may be preferred to save the finished packaget file to a target path, rather than forcing a connection to a repository service.
This is especially true in a release pipeline situation, where the publish step is fully separated from the build / packaging step.

`Publish-PSFModule` provides support for that, no matter the underlying command used:

```powershell
Publish-PSFModule -Path C:\code\MyModule -DestinationPath \\contoso.com\it\packages
```
