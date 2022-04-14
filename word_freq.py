#!/usr/bin/python3
import sys

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
	for word in line.split():
		if word in word_cnt:
			word_cnt[word] += 1
		else:
			word_cnt[word] = 1

	
file.close()
