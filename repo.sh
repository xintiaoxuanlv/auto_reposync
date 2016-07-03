#!/bin/bash  
echo "======start repo sync======"  
repo sync -j32 -c -f --no-clone-bundle 
while [ $? == 1 ]; do  
echo "======sync failed, re-sync again======"  
sleep 1  
repo sync -j32 -c -f --no-clone-bundle
done
