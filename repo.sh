#!/bin/bash  
echo "======start repo sync======"  
repo sync -j32 -f --no-clone-bundle 
while [ $? == 1 ]; do  
echo "======sync failed, re-sync again======"  
sleep 3  
repo sync -j32 -f --no-clone-bundle
done
