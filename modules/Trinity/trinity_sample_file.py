


import os
import csv

def fastq_filter(str):
	if "fastq" in str:
		return True
	else:
		return False

dir = "./FASTQ/"
accessions={}

for item in os.listdir("./FASTQ"):
	if item == ".DS_Store":
		continue
	filtered = filter(fastq_filter, os.listdir(dir+item))

	if len(filtered) == 2:
		accessions[item] = "paired"
	elif len(filtered) == 1:
		accessions[item] = "single"

with open("./FASTQ/trinity_sample_file.txt", "w") as file:
	for accession in accessions:
		if accessions[accession] == "paired":
			file.write(accession + "\t" + accession + "_rep1" + "\t" + accession + "_1.fq" + "\t" + accession + "_2.fq")
			file.write("\n")
		elif accessions[accession] == "single":
			file.write(accession + "\t" + accession + "_rep1" + "\t" + accession + "_1.fq")
			file.write("\n")