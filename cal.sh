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

declare -a arr = ("$num1""$num2")

case $menu in
 add)	let result="${arr[0]}"+"${arr[1]};;
 sub)	let result="${arr[0]}"-"${arr[1]}";;
 div)	let result="${arr[0]}"/"${arr[1]}";;
 mul)	let result="${arr[0]}"*"${arr[1]}";;
 *) echo "error"; exit1;;
esac

echo"num1 : " ${arr[0]}
echo"num2 : " ${arr[1]}
case $menu in
 add) echo "op : " $menu;;
 sub) echo "op : " $menu;;
 div) echo "op : " $menu;;
 mul) echo "op : " $menu;;
 *) echo "error"; exit1;;
esac
echo "result : "$result

