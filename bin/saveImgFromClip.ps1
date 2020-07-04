if ($PSVersionTable.PSEdition -eq 'Core') {
    powershell.exe -nologo './bin/saveImgFromClip.ps1'
    exit
}

$name = Get-Date -Format 'yyyy/MM/dd/HHmmss'

# $name = "2020/04/04/$(Get-Date -Format 'HHmmss')"

New-Item -ItemType File -Force -Path "static/img/$name.png"
(Get-Clipboard -Format Image).Save("static/img/$name.png")
Write-Host '-> ' "static/img/$name"
Write-Host ''
Write-Host "![](../img/$name.png)"
Set-Clipboard "![](../img/$name.png)"



