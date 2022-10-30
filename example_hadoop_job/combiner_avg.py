#!/usr/bin/python3

import sys
gender_dict = {}
for line in sys.stdin:
    line = line.strip()
    gender, count, age = line.split( '\t' )
    count, age = int(count), int(age)
    if gender in gender_dict:
        gender_dict[gender][1]+=age
        gender_dict[gender][0]+=count
    else :
        gender_dict[gender] = []
        gender_dict[gender].append(count)
        gender_dict[gender].append(age)
#Reducer
for gender in gender_dict.keys():
    print(gender+"\t"+str(gender_dict[gender][0])+"\t"+str(gender_dict[gender][1]))