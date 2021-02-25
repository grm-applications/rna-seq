


import os
import csv

dir = "../../FASTQ/"
accessions=[]

for item in os.listdir("../../FASTQ"):
	path = dir + item
	if os.path.isdir(path):
		accessions.append(item)

with open("../../FASTQ/trinity_sample_file.txt", "w") as file:
	for number in accessions:
		file.write(number + "\t" + number + "_rep1" + "\t" + number + "_1.fq" + "\t" + number + "_2.fq")
		file.write("\n")
