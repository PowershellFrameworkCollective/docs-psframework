---
external help file: PSFramework.NuGet-help.xml
Module Name: PSFramework.NuGet
online version:
schema: 2.0.0
---

# Update-PSFModuleManifest

## SYNOPSIS
Modifies an existing module manifest.

## SYNTAX

```
Update-PSFModuleManifest [-Path] <String> [[-Guid] <Guid>] [[-Author] <String>] [[-CompanyName] <String>]
 [[-Copyright] <String>] [[-RootModule] <String>] [[-ModuleVersion] <Version>] [[-Description] <String>]
 [[-ProcessorArchitecture] <String>] [[-CompatiblePSEditions] <String[]>] [[-PowerShellVersion] <Version>]
 [[-ClrVersion] <Version>] [[-DotNetFrameworkVersion] <Version>] [[-PowerShellHostName] <String>]
 [[-PowerShellHostVersion] <Version>] [[-RequiredModules] <Object[]>] [[-TypesToProcess] <String[]>]
 [[-FormatsToProcess] <String[]>] [[-ScriptsToProcess] <String[]>] [[-RequiredAssemblies] <String[]>]
 [[-FileList] <String[]>] [[-ModuleList] <Object[]>] [[-FunctionsToExport] <String[]>]
 [[-AliasesToExport] <String[]>] [[-VariablesToExport] <String[]>] [[-CmdletsToExport] <String[]>]
 [[-DscResourcesToExport] <String[]>] [[-Tags] <String[]>] [[-LicenseUri] <String>] [[-IconUri] <String>]
 [[-ProjectUri] <String>] [[-ReleaseNotes] <String>] [[-Prerelease] <String>]
 [[-ExternalModuleDependencies] <Object[]>] [[-HelpInfoUri] <Uri>] [[-DefaultCommandPrefix] <String>]
 [[-NestedModules] <Object[]>] [-PassThru] [[-Cmdlet] <Object>] [-Continue] [<CommonParameters>]
```

## DESCRIPTION
Modifies an existing module manifest.
The manifest in question must have a ModuleVersion and a RootModule entry present.

## EXAMPLES

### EXAMPLE 1
```
Update-PSFModuleManifest -Path .\MyModule\MyModule.psd1 -FunctionsToExport $functions.BaseName
```

Updates MyModule.psd1 to export the functions stored in $functions.
This will _replace_ the existing entries.

## PARAMETERS

### -Path
Path to the manifest file to modify.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Guid
The guid of the module.
Usually has no effect.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Author
The author that wrote the module.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompanyName
The company that owns the module (if any).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Copyright
The Copyright short-string.
Example: 'Copyright (c) 2025 Contoso ltd.'

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RootModule
The root file of the module.
For script based modules, that would be the psm1 file.
For binary modules the root .dll file.
Paths relative to the module root path.
Examples:

+ MyModule.psm1
+ bin\MyModule.dll

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModuleVersion
The version of the module.
Most package services reject module uploads with versions that already exist in the service.

```yaml
Type: Version
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description the module should include.
A description is required for successful module uploads.
Most package services use the description field to explain the module in their module lists.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProcessorArchitecture
The architecture thhe module requires.
Do not provide unless you actually use hardware features for a specific architecture set.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CompatiblePSEditions
What PowerShell editions this module is compatible with.

+ Desktop: Windows PowerShell
+ Core: PowerShell 6+

Has little effect, other than documentation.
When set to "Desktop"-only, loading the module into a core session will lead to it being imported into an implicit remoting session instead.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 10
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PowerShellVersion
The minimum version of PowerShell to require for your module.
There is no option to define a maximum version.
To declare "this module only runs on Windows PowerShell" use -CompatiblePSEditions instead.

```yaml
Type: Version
Parameter Sets: (All)
Aliases:

Required: False
Position: 11
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ClrVersion
What minimum version of the Common Language Runtime you require.
If this has you wondering "What is the Common Language Runtime" you do not need to specify this parameter.
If it does not, you still probably won't need it.

```yaml
Type: Version
Parameter Sets: (All)
Aliases:

Required: False
Position: 12
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DotNetFrameworkVersion
What version of the .NET Framework to require as a minimum.
A pointless requirement compared to requiring a minimum version of PowerShell.
Usually not necessary.

```yaml
Type: Version
Parameter Sets: (All)
Aliases:

Required: False
Position: 13
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PowerShellHostName
What PowerShell host your module requires.
This can enforce your module only being loaded into a specific hosting process, such as "This only works in the Powershell ISE".
Use this to read the name you need to provide here:
`$host.Name`
Usually only useful for modules that act as PlugIn for the PowerShell ISE.

Example values:

+ "ConsoleHost"
+ "Windows PowerShell ISE Host"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 14
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PowerShellHostVersion
The minimum version of the host you require.
Use this to read the current version of a host:

`$host.Version -as [string]`

```yaml
Type: Version
Parameter Sets: (All)
Aliases:

Required: False
Position: 15
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequiredModules
What modules your module requires to run.
Taking a dependency like this means, that when someone installs your module, they also automatically
download all the dependencies without needing additional input.
Can either take a string or a hashtable with the default module definitions (see below):

Examples:

+ "PSFramework" # any version of the PSFramework
+ @\{ ModuleName = "PSFramework"; ModuleVersion = "1.2.346" \} # The module "PSFramework" with AT LEAST version 1.2.346
+ @\{ ModuleName = "PSFramework"; RequiredVersion = "1.2.346" \} # The module "PSFramework" with EXACTLY version 1.2.346

Generally it is recommended to NOT use "RequiredVersion" unless as an emergency stopgap while you try to fix a compatibility issue.
Using "RequiredVersion" significantly raises the risk of conflict between modules taking a dependency on the same module.
It also prevents updating the dependency independently, which your users may need to do (e.g.
critical security patch) without waiting on you.

Generally, it is recommended to be cautious about what module you take a dependency on, when you do not control the dependency.
For non-public modules, you can minimize the risk of breaking things by having an internal repository and testing new versions
of modules you take a dependency on, before introducing them into your environment.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 16
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TypesToProcess
Type extension XML to load when importing the module.
These allow you to add methods and properties to existing objects, without calling Add-Member on each of them.
For more details, see: https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/extending-output-objects

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 17
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FormatsToProcess
Format definition XML to load when importing the module.
These allow you to determine how objects your commands return should be displayed.
For more details, see: https://learn.microsoft.com/en-us/powershell/scripting/developer/format/formatting-file-overview
You can use the module PSModuleDevelopment and its "New-PSMDFormatTableDefinition" command to auto-generate the XML
for your objects.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 18
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScriptsToProcess
Any scripts to run before your module imports.
Any failure here will stop the module import.
This should NOT be used to load nested files of your module project!
Generally, this parameter is not needed, instead place the import sequence in your psm1 file.

For an example layout that does that, check out the PSModuleDevelopment module's default module template:
Invoke-PSMDTemplate MiniModule

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 19
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequiredAssemblies
Assemblies you require.
These DLL files will be loaded as part of your import sequence.
Failure to do so (e.g.
file not found, or dependency not found) will cause your module import to fail.
Can be the name of an assembly from GAC or the relative path to the file within your module's folder layout.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 20
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileList
List of files your module contains.
Documentation only, has no effect.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 21
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ModuleList
The modules included in your module.
Generally not needed.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 22
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FunctionsToExport
What functions your module makes available.
Functions are PowerShell-native commands written in script code and usually the main point of writing a module.
You should not export '*', as that makes it hard for PowerShell to know what commands your module exposes.
This will lead to issues with automatically importing it when just running a command by name from your module.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 23
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AliasesToExport
What aliases your module makes available.
Aliases not listed here will not lead to automatic module import if needed.
Do not export '*'.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 24
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VariablesToExport
Not really used, no point in doing so.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 25
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CmdletsToExport
Cmdlets your module makes available.
Cmdlets are PowerShell-native commands written in C#* and compiled into a .DLL
This is usually only needed when writing a binary module in C# or a hybrid module with a significant
portion of compiled code.

*Usually.
Technically, other languages are also possible, but they all must be compiled into an assembly.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 26
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DscResourcesToExport
What DSC resources your module provides.
If you are wondering what DSC (Desired State Configuration) is, you are probably missing out, but this parameter
is not (yet) for you.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 27
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Tags to include in your module.
Modules in nuget repositories can be searched by their tag.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 28
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LicenseUri
The link to the license your module uses.
This will be shown in the PSGallery and is usually a good idea to include in your module manifest.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 29
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IconUri
The link to the icon to display with your module.
Only affects how the module is displayed in the PSGallery.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 30
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProjectUri
The link to your project.
This will be shown in the PSGallery and is usually a good idea to include in your module manifest.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 31
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReleaseNotes
What changed in the latest version of your module?
Either provide the change text or the link to where your changes are being tracked.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 32
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Prerelease
The prerelease tag, such as "Alpha" or "RC1".
Including this will hide your module in most repositories by flagging it as a prerelease version.
Only uses who include "-AllowPrerelease" in their Install-PSFModule call will install this version.
Adding this is a good way to provide a test preview power users can test, without affecting the broader audience right away.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 33
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExternalModuleDependencies
Modules your own module requires, that are not distributed via powershell repositories.
For example, if your module requires the "ActiveDirectory" module, this is the place to specify it.
Generally only needed for modules not distribtued via gallery, such as RSAT tools to manage windows features or
vendor modules that require you to deploy the module via installer.

Uses the same module notation syntax as "-RequiredModules".

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 34
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HelpInfoUri
Where to get more information about your module.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: False
Position: 35
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultCommandPrefix
Default prefix to include with commands in your module.
Generally not recommended for use.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 36
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NestedModules
DO NOT USE.
DON'T.
IT'S A MISTAKE.
CEASE AND DESIST!

Nested modules allow you to include a module inside of your own module, which will be invisible to outsiders.
Compared to traditional dependencies via RequiredModules this has the advantage of you getting EXACTLY the version
you are expecting.
Theoretically, this sounds good - it gives you the full control over what module version, zero risk of accidental breakage
when the original author updates the module.
Right?
Not really.

The key issue is, that most modules cannot coexist in different versions of the same module in the same process or at
least runspace.
The module you include as a NestedModule can - and WILL - still conflict with other modules requiring
the same dependency.
So you still get all the same version conflicts a RequiredModule with "RequiredVersion" defined has, but with horribly
worse error message to the user (who is not aware of a potential conflict AND IS NOT INFORMED OF A CONFLICT!!!).

By whatever is holy, sacred or venerable to you, please do not use NestedModules.

```yaml
Type: Object[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 37
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Rather than modifying the file, return the new manifest text as string.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Cmdlet
The PSCmdlet variable of the calling command, used to ensure errors happen within the scope of the caller, hiding this command from the user.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 38
Default value: $PSCmdlet
Accept pipeline input: False
Accept wildcard characters: False
```

### -Continue
In case of error, when not specifying ErrorAction as stop, this command will call the continue statement.
By default, it will just end with a warning.
This parameter makes it easier to integrate in some flow control scenarios but is mostly intended for internal use only.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
