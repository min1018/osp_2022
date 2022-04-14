#!/usr/bin/python3
import sys

fname = sys.argv[1]
num = int(sys.argv[2])

if len(sys.argv) != 3:
	print("Insufficient arguments")
	sys.exit()

file = open(fname, 'r')

file.close
