foreach ($item in Get-ChildItem content) {
    if ($item.Attributes -eq 'Directory') {
        Remove-Item -Force "$($item.FullName)/img"
        New-Item -ItemType SymbolicLink -Force -Name "content/$($item.Name)/img" -Target "$PSScriptRoot/../static/img"
        Write-Host "content/$($item.Name)/img" 'has been set' 
    }
}
