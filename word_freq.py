#!/usr/bin/python3
# !/usr/bin/python3
import sys
import re

#명령인자에 따라 넣기
fname = sys.argv[1]
num = int(sys.argv[2])

if len(sys.argv) != 3:
	print("명령인자 부족")
	sys.exit()

file = open(fname, 'r')

word_cnt = dict()
#파일 읽기
while True:
	l = file.readline()
	if not l: break
	
	#특수기호 제외하기
	line = re.sub('[-=+,#/\?:^.@*\"※~ㆍ!』‘|\(\)\[\]`\'…》\”\“\’·\n\t]', ' ', l)
	#띄어쓰기로 자르기
	for word in line.split():
		if word in word_cnt:
			word_cnt[word] += 1
		else:
			word_cnt[word] = 1

# 정렬
sorted_dic = sorted(word_cnt.items(),key = lambda x: x[1],reverse = True)
for r in range(num):
	print("{:<10}{:>10}".format(sorted_dic[r][0],sorted_dic[r][1]))

file.close()
