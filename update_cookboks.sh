#!/bin/bash

for f in `cat COOKBOOKS`
do
    cd $f && git pull origin master && git add * && cd ..
done

git commit -m "Updated cookbooks"
git push origin master
