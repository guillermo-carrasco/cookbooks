#!/bin/bash

for f in `cat COOKBOOKS`
do
    cd $f && git pull origin master && cd ..
done

git add *
git commit -m "Updated cookbooks"
git push origin master
