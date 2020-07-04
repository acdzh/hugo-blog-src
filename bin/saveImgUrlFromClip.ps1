$name = Get-Date -Format 'yyyy/MM/dd/HHmmss'
New-Item -ItemType File -Force -Path "static/img/$name.png"

$url = Get-Clipboard
Write-Host $url
Write-Host '    -> ' "static/img/$name.png"
$client = New-Object System.Net.WebClient
$client.DownloadFile($url, "static/img/$name.png")

$out = "![](../img/$name.png)"

Write-Host $out
Set-Clipboard $out