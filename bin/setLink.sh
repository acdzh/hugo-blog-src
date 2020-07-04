base_path=./content
for file in $base_path/*
do
    if test -d $file 
    then
        rm -f $file/img
        ln -s ../../static/img $file/img 
        echo $file/img 'has been set'
    fi
done