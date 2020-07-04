$yy = '2019'
$MM = '10'
$dd = '24' 
$images = (
    ('https://img2018.cnblogs.com/blog/1815540/201910/1815540-20191024160140019-1356536862.png', '中问测试uefi3_1.png'),
    ('https://img2018.cnblogs.com/blog/1815540/201910/1815540-20191024160704696-375129115.png', 'uefi3_2.png'),
    ('https://img2018.cnblogs.com/blog/1815540/201910/1815540-20191024163648181-1877281041.jpg', 'uefi3_3.jpg')
)

$out = "`n"

New-Item -ItemType Directory -Force -Path "static/img/$yy/$MM/$dd/"
$client = New-Object System.Net.WebClient
foreach ($img in $images) {
    Write-Host $img[0] 
    Write-Host '    -> ' "static/img/$yy/$MM/$dd/$($img[1])"
    $client.DownloadFile($img[0], "static/img/$yy/$MM/$dd/$($img[1])")
    $out += "![$($img[1])](../img/$yy/$MM/$dd/$($img[1]))`n"
}

Write-Host $out
Set-Clipboard $out