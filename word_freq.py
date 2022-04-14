#!/usr/bin/python3
import sys
import re

fname = sys.argv[1]
num = int(sys.argv[2])

if len(sys.argv) != 3:
	print("Insufficient arguments")
	sys.exit()

file = open(fname, 'r')
word_cnt = dict()
while True:
	l = file.readline()
	if not l: break
	
	line = re.sub('[^a-zA-z가-힣0-9]', ' ', l)
	for word in line.split():
		if word in word_cnt:
			word_cnt[word] += 1
		else:
			word_cnt[word] = 1

#정렬
sorted_dic = sorted(word_cnt.items(), key=lambda x: x[1], reverse=True)
for r in range(0, num):
	print("{:<10}{:>10}".format(word_cnt[r][0], word_cnt[r][1]))

	
file.close()
