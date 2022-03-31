#!/bin/bash

PS3="select menu : " #ps3 select command's prompt message

mkdir temp
echo "...create temp directory"
mv num1.txt temp
mv num2.txt temp
mv cal.sh temp
echo "...copy files to temp directory"

select menu in "add" "sub" "div" "mul"
do
 echo "...$menu selected..."
 break
done
echo "...run calculater..."


cd temp
./cal.sh $menu
sh ./cal.sh
