# need brew install pngpaste
name=`date +%Y/%m/%d%H%M%S`.png

mkdir -p static/img/`date +%Y/%m`
pngpaste "static/img/$name"

echo '-> ' "static/img/$name"
echo ''
echo "![](../img/$name)"
echo "![](../img/$name)" | pbcopy