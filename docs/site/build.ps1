$CurrentModule = $Null
if ($null -eq $ENV:CI) {
  $CurrentModule = Get-Module -Name PlatyPS -ListAvailable
}

if ($null -eq $CurrentModule) {
  Write-Host "Installing PlatyPS module..."
  Install-Module PlatyPS -ErrorAction Stop
} else {
  Write-Host "PlatyPS module already exists."
}

Write-Host "Importing PlatyPS module..."
Import-Module PlatyPS  -ErrorAction Stop

$OutputFolder = Resolve-Path -Path (Resolve-Path -Path "$PSScriptRoot/../content/module/reference")
if (Test-Path -Path $OutputFolder) {
  Remove-Item -Path "$OutputFolder/*.md" -Force -Confirm:$False | Out-Null
}

Write-Host "Generating help files for platyPS to ${OutputFolder}"
New-MarkdownHelp -Module platyPS -OutputFolder $OutputFolder
# Currently the about help isn't populated so comment it our for now
# New-MarkdownAboutHelp -AboutName 'about_platyPS' -OutputFolder $OutputFolder

# HACK: Quick hack to inject Hugo YAML frontmatter. Would rather use the
Write-Host "Inserting Hugo Frontmatter..."
Get-ChildItem -Path "$OutputFolder/*.md" | ForEach-Object {
  $FileInfo = $_

  $Content = Get-Content -Path $FileInfo -Raw
  if ($Content.StartsWith("---")) {
    $Content = $Content.SubString(3)
  } else {
    $Content = "---`n" + $Content
  }

  $Content = "---`n" +
  "title: `"" + $FileInfo.BaseName + "`"`n" +
  $Content

  $Content | Set-Content -Path $_.FullName -Encoding 'utf-8' | Out-Null
  Write-Host "Updated $($FileInfo.FullName)"
}
