---
external help file: platyPS-help.xml
schema: 2.0.0
---

# Update-MarkdownHelp
## SYNOPSIS

## SYNTAX

```
Update-MarkdownHelp [-Path] <String[]> [[-Encoding] <Encoding>] [[-LogPath] <String>] [-LogAppend] [<CommonParameters>]
```

## DESCRIPTION
Update platyPS markdown help files in place.

Two supported scenarios:

- Recreate platyPS markdown with a newer schema version
- update markdown with information from the 'live' command

## EXAMPLES

### Example 1 (Schema upgrade)
```
PS C:\> Update-Markdown -MarkdownFile .\Examples\PSReadLine.dll-help.md -OutputFolder .\PSReadLine -SchemaUpgrade
```

Upgrade PSReadLine platyPS markdown from version 1.0.0 to the latest one (2.0.0).

### Example 1 (Schema upgrade)
```
PS C:\> Update-Markdown -MarkdownFile .\docs\Update-Markdown.md
```

Changed some parameters attributes, i.e. parameter sets, types, default value, required, etc.
Load the new version of the module in your PowerShell session.

Upgrade markdown for Update-Markdown command, using a live command from the system.
New parameters metadata would appear in the markdown files.

It will contain placeholders to speed-up your help-authoring expirience.

## PARAMETERS

### -Encoding
Encoding to be used when output markdown files.



```yaml
Type: Encoding
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: UTF8 without BOM
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogAppend
{{Fill LogAppend Description}}

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogPath
Put log information into a provided file path.
By default, VERBOSE stream is used for it.



```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: 
Accept pipeline input: False
Accept wildcard characters: False
```

### -Path
{{Fill Path Description}}

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: 
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.IO.FileInfo[]

## NOTES

## RELATED LINKS

[Online Version:]()




