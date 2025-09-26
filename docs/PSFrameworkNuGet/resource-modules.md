---
sidebar_position: 7
---

# Resource Modules

Sometimes we might want to deploy non-Module files & folders using the same mechanism as modules.
For example, a module that provides templating might want to offer commands such as `Install-Template`, `Publish-Template` or `Find-Template`.

This is also provided for by this module:

```powershell
# Publish files as a Resource Module
Publish-PSFResourceModule -Name MyModule.Template.MyFunction -Version 1.1.0 -Path .\MyFunction\* -Repository PSGallery -ApiKey $key

# Download and extract the files
Save-PSFResourceModule -Name MyModule.Template.MyFunction -Path .
```
