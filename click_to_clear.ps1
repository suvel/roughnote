<#
=== Roughnote ===
This script will help to clear unnessary files in the folder where the script is located.
⚠ DO NOT REMOVE THE BELOW MENTIONED FILE from ".roughnoteignore"
[*] click_to_clear.ps1
[*] .roughnoteignore

Note: If you wish to safegaurd some file add the filename with extension in .roughnoteignore.
#>
$arr = @()
foreach($line in [System.IO.File]::ReadLines("./.roughnoteignore"))
{
    $arr += $line
}
#$arr
Remove-Item -Path ".\*" -Exclude $arr -Recurse

<#
Refernces:
1. How to read from file
https://shellgeek.com/read-file-line-by-line-in-powershell/
2. Array in powerShell
https://morgantechspace.com/2021/01/how-to-join-string-array-into-one-string-in-powershell.html
3. Exlude an array of items
https://community.spiceworks.com/topic/2196672-remove-item-exlude-an-array-of-items
#>