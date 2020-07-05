name=`date +%Y/%m/%d%H%M%S`.png
url=`pbpaste`

mkdir -p static/img/`date +%Y/%m`

curl $url -o static/img/$name

echo '-> ' "static/img/$name"
echo ''
echo "![](../img/$name)"
echo "![](../img/$name)" | pbcopy