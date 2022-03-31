#!/bin/bash

menu=$1
if[ -z "$menu"]; then #string length 0, returns true
	echo "...none operator parameter..."
	select menu in "add" "sub" "div" "mul"
do
 echo "...$menu selected..."
 break
done
fi

num1=$(<num1.txt) #file contents into variable
num2=$(<num2.txt)
case $menu in
 add)	let result=$num1+$num2;;
 sub)	let result=$num1-$num2;;
 div)	let result=$num1/$num2;;
 mul)	let result=$num1*$num2;;
 *) echo "error"; exit1;;
esac

echo"num1 : " $num1
echo"num2 : " $num2
case $menu in
 add) echo "op : " $menu;;
 sub) echo "op : " $menu;;
 div) echo "op : " $menu;;
 mul) echo "op : " $menu;;
 *) echo "error"; exit1;;
esac
echo "result : "$result

