---
sidebar_position: 9
---

# Utilities

## Verify module signature

Verifying a module signature can be annoying.
You need to verify every single signable file, and - since a valid certificate might have gotten compromised - also whether name and issuer are what you would expect.

Introducing `Get-PSFModuleSignature`, the command to help with that:

```powershell
Get-PSFModuleSignature -Path .\SqlServer\22.4.5.1\
```

```text
ModuleBase       : C:\Temp\SqlServer\22.4.5.1
Name             : SqlServer
Version          : 22.4.5.1
IsSigned         : True
FileCount        : 913
NoTimestampCount : 0
ByStatus         : 5: UnknownError (Usually: File format that cannot be signed)
                   908: Valid
ByIssuer         : 906: CN=Microsoft Code Signing PCA 2011, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
                   1: CN=Microsoft Windows Third Party Component CA 2012, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
                   1: CN=Microsoft Windows Production PCA 2011, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
BySubject        : 1: CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
                   1: CN=Microsoft Windows Hardware Compatibility Publisher, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
                   906: CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
Signatures       : {System.Management.Automation.Signature, System.Management.Automation.Signature,
                   System.Management.Automation.Signature, System.Management.Automation.Signature…}
```

With that you can swiftly see, whether there is anything unexpected going on with the module's signature.

## Updating Module Manifests

The old `Update-ModuleManifest` command works well enough.
Until it doesn't.

Essentially, there are quirks that will fail the builtin command:

+ Any declared dependencies are missing
+ Any dynamic code is in the manifest (e.g. conditional exports)

Introducing `Update-PSFModuleManifest`:

```powershell
Update-PSFModuleManifest -Path .\MyModule.psd1 -Author Fred -Description 'Contains my Commands'
```
