# from clean
./bin/clean.sh
echo ""
hugo
echo ""
cd public
git add -A
echo ""
git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"
echo ""
git push origin master
git push 'https://e.coding.net/acdzh/hugo-blog.git' master
cd ..