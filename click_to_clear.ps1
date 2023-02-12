$arr = @()
foreach($line in [System.IO.File]::ReadLines("./.roughnoteignore"))
{
    $arr += $line
}
$arr
Remove-Item -Path ".\*" -Exclude $arr -Recurse
pause