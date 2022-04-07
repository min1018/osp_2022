#!/bin/bash


menu=$1
declare -a num
num=('cat num1.txt' 'cat num2.txt')

echo "progect management in github"

if[ -z "$menu"]
then #string length 0, returns true
	echo "...none operator parameter..."
	echo "1)add"
	echo "2)sub"
	echo "3)div"
	echo "4)mul"
	read -p"select menu:"reply
	menu="$reply"
fi

case $menu in
 1)op="add"
  result='expr ${num[0]}+${num[1]}';;
 2)op="sub"
  result='expr ${num[0]}-${num[1]}';;
 1)op="div"
  result='expr ${num[0]}/${num[1]}';;
 1)op="mul"
  result='expr ${num[0]}\*${num[1]}';;
esac

echo"txt1:${num[0]}"
echo"num2:${num[1]}"
echo"op:$op"
echo"result:$result"
