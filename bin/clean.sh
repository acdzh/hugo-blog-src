for file in `ls -a ./public`; do
    if [ $file != ".git" ] && [ $file != "." ] && [ $file != ".." ]; then
        echo removing: ./public/$file
        rm -rf ./public/$file
    fi
done