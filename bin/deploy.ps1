# from clean
./bin/clean.ps1

Write-Host ''

hugo

Write-Host ''

Set-Location public
git add -A

Write-Host ''

git commit -m $(Get-Date -Format 'yyyy-MM-dd hh:mm:ss')

Write-Host ''

git push origin master

Write-Host ''

git push 'https://e.coding.net/acdzh/hugo-blog.git' master

Set-Location ..