#!/bin/bash

arr=(trustnote-hub trustnote-witness trustnote-headless trustnote-explorer)

echo clone
for name in ${arr[@]}
do
    #./pull.sh $name up
    echo ""
    echo ""
    echo clone $name
    git clone https://github.com/trustnote/$name.git
done
echo clone finish
echo ""

echo install
for name in ${arr[@]}
do
    #./pull.sh $name up
    echo $name
    cd $name
    npm install
    cd ../
done
echo ""


