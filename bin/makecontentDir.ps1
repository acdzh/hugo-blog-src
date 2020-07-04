$dirNames = 'chat', 'post', 'tec'
$year = 2020
$startMounth = 4
$endMounth = 5

function mklink($dirPath) {
    New-Item -ItemType Directory -Force -Path $dirPath
    New-Item -ItemType SymbolicLink -Force -Name "$dirPath/img" -Target '$PSScriptRoot/../static/img'
    Write-Host "$dirPath/img" 'has been created.'
}

foreach ($dirName in $dirNames) {
    # for ($m = $startMounth; $m -le $endMounth; $m++) {
    #     mklink ('content/{0}/{1:d}-{2:d2}' -f $dirName, $year, $m)
    # }
    mklink ('content/{0}' -f$dirName)
}
