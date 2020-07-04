foreach ($item in Get-ChildItem public) {
    if ($item.Name -ne '.git') {
        Write-Host "remove:" $item.FullName
        Remove-Item -Recurse -Force $item.FullName
    }
}
