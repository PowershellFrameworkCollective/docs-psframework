# Getting Started with Template Creation

In order to create a new template from a file, you first need to have a file. For example, let us create a new function template.

The file we template should be named `þnameþ.ps1` (That way it will automatically name the file for the function)

The file could look like this (but really, you can insert whatever meets your needs):

```powershell
function þnameþ
{
    [CmdletBinding()]
    Param (
    
    )
    
    begin
    {
        
    }
    process
    {
    
    }
    end
    {
    
    }
}
```

Now that we have a file we want to make a template of, run this command to create it:

```powershell
New-PSMDTemplate -FilePath ".\þnameþ.ps1" -TemplateName myFunction -Description "My first function template" -Author "<Insert your name here>" -Tags 'function','file'
```

This is all that it takes, you now can create files based on this template using `Invoke-PSMDTemplate` (or its alias `imt`).

## Additional information

+ The identifier (`þ`) can be typed on a keyboard by keeping the left `ALT` key pressed and typing `0254` on the numpad, then releasing the button.
+ You can use an arbitrary amount of parameters, simply by placing the name between two `þ` characters. Use only letters for names for best results. You will get prompted for each during template invocation.
+ You can use the `-Version` parameter to create a new version of your template, or the `-Force` parameter to overwrite an existing copy.
+ The template is stored in the default location (the default template store). The path can be seen (and changed) in the `psmoduledevelopment.template.store.default` configuration setting.
+ It is also possible to template an entire project.
+ It is also possible to embed scriptblocks into a template, that will be run on template invocation.
+ Consider well whom you trust to use his or her templates.
+ You can inspect a template by specifying the `-Raw` parameter.

## Further reading

+ [Templating](../../PSModuleDevelopment/Templates/overview.md)
