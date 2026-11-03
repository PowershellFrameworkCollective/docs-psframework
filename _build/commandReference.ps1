[CmdletBinding()]
param (
	[string]
	$RootPath = $env:SYSTEM_DEFAULTWORKINGDIRECTORY
)
if (-not $RootPath) { $RootPath = Split-Path $PSScriptRoot }

#region Functions
function Write-MarkdownCommandHelp {
	[CmdletBinding()]
	param (
		[System.Management.Automation.CommandInfo]
		$CommandInfo,

		[string]
		$Path
	)

	#region Helper Functions
	function Write-Metadata {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)
		$null = $Builder.AppendLine('---')
		foreach ($key in $help.Metadata.Keys | Sort-Object) {
			$value = $help.Metadata[$key]
			if ($null -eq $value) { $value = "''" }
			$null = $Builder.AppendLine("$($key): $value")
		}
		$null = $Builder.AppendLine('---')
		$null = $Builder.AppendLine('')
	}
	function Write-Title {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine("# $($Help.Title)")
		$null = $Builder.AppendLine('')
	}
	function Write-Synopsis {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine('## Synopsis')
		$null = $Builder.AppendLine('')
		$null = $Builder.AppendLine($Help.Synopsis)
		$null = $Builder.AppendLine('')
	}
	function Write-Syntax {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine('## Syntax')
		$null = $Builder.AppendLine('')

		foreach ($syntax in $Help.Syntax) {
			$null = $Builder.AppendLine("### $($syntax.ParameterSetName)")
			$null = $Builder.AppendLine('')
			$null = $Builder.AppendLine('```')
			$null = $Builder.AppendLine($syntax.ToStringWithWrap())
			$null = $Builder.AppendLine('```')
			$null = $Builder.AppendLine('')
		}
	}
	function Write-Description {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine('## Description')
		$null = $Builder.AppendLine('')
		$null = $Builder.AppendLine($Help.Description)
		$null = $Builder.AppendLine('')
	}
	function Write-Examples {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine('## Examples')
		$null = $Builder.AppendLine('')

		foreach ($example in $Help.Examples) {
			$null = $Builder.AppendLine("### $($example.Title)")
			$null = $Builder.AppendLine('')
			$null = $Builder.AppendLine('```powershell')
			$lines = $example.Remarks -split "`n"
			$index = 0
			while ($index -lt $lines.Count) {
				if (-not $lines[$index].Trim()) {
					$index++
					break
				}
				$null = $Builder.AppendLine($lines[$index])
				$index++
			}
			$null = $Builder.AppendLine('```')
			$null = $Builder.AppendLine('')
			while ($index -lt $lines.Count) {
				$null = $Builder.AppendLine($lines[$index])
				$index++
			}
			$null = $Builder.AppendLine('')
		}
	}
	function Write-Parameters {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		$null = $Builder.AppendLine('## Parameters')
		$null = $Builder.AppendLine('')

		foreach ($parameter in $Help.Parameters) {
			$null = $Builder.AppendLine("### $($parameter.Name)")
			$null = $Builder.AppendLine('')
			$null = $Builder.AppendLine($parameter.Description)
			$null = $Builder.AppendLine('')
			$null = $Builder.AppendLine($parameter.GetMetadata().ToYamlString())
		}
	}
	function Write-Notes {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		if (-not $Help.Notes) { return }

		$null = $Builder.AppendLine("## Notes")
		$null = $Builder.AppendLine('')
		$null = $Builder.AppendLine($Help.Notes)
		$null = $Builder.AppendLine('')
	}
	function Write-Links {
		[CmdletBinding()]
		param (
			[System.Text.StringBuilder]
			$Builder,

			$Help
		)

		if (-not $Help.RelatedLinks) { return}

		$null = $Builder.AppendLine("## Links")
		$null = $Builder.AppendLine('')
		$null = $Builder.AppendLine($Help.RelatedLinks)
		$null = $Builder.AppendLine('')
	}
	#endregion Helper Functions

	$help = New-CommandHelp -CommandInfo $CommandInfo
	$builder = [System.Text.StringBuilder]::new()

	Write-Metadata -Builder $builder -Help $help
	Write-Title -Builder $builder -Help $help
	Write-Synopsis -Builder $builder -Help $help
	Write-Syntax -Builder $builder -Help $help
	Write-Description -Builder $builder -Help $help
	Write-Examples -Builder $builder -Help $help
	Write-Parameters -Builder $builder -Help $help
	Write-Notes -Builder $builder -Help $help
	Write-Links -Builder $builder -Help $help

	$builder.ToString() | Set-PSFFileContent -Path $Path
}
#endregion Functions

$commandReferenceBasePath = Join-Path -Path $RootPath -ChildPath "docs\Commands"
$modules = @("PSFramework", "PSUtil", "PSModuleDevelopment", "MailDaemon", 'PSFramework.NuGet')
$excludedCommands = @("New-PSFTeppCompletionResult", 'prompt')

foreach ($moduleName in $modules)
{
	Write-PSFMessage -Level Host -Message "Processing $moduleName"
	Write-PSFMessage -Level Host -Message "  Importing Module"
	Import-Module $moduleName
	Write-PSFMessage -Level Host -Message "  Creating list of commands to process"
	$commands = Get-Command -Module $moduleName -CommandType Function, Cmdlet | Where-Object { $_.Name -notin $excludedCommands } | Sort-Object Name
	Write-PSFMessage -Level Host -Message "  $($commands.Count) commands found"
	
	Write-PSFMessage -Level Host -Message "  Creating markdown help files"
	Get-Item -Path "$($commandReferenceBasePath)\$($moduleName)\*" | Where-Object Name -ne '_category_.json' | Remove-Item -Recurse -ErrorAction Ignore
	foreach ($command in $commands) {
		Write-MarkdownCommandHelp -CommandInfo $command -Path "$($commandReferenceBasePath)\$($moduleName)\$($command.Name).md"
	}
	Write-PSFMessage -Level Host -Message "Finished processing $moduleName"
}

Write-Host " - "
Write-Host "###############################################################"
Write-Host " - "
