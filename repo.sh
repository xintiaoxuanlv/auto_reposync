#!/bin/bash  
echo "======start repo sync======"  
repo sync -j8 -f --force-sync --no-clone-bundle
while [ $? == 1 ]; do  
echo "======sync failed, re-sync again======"  
sleep 1  
repo sync -j8 -f --force-sync --no-clone-bundle
done
