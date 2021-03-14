
import os
import csv
accessions = []

with open("./config/conditions.txt", "r") as conditions:
	reader = csv.reader(conditions, delimiter="\t")
	for line in reader:
		accession = line[0]
		accessions.append(accession)

with open("./config/accessions.txt", "w") as file:
	for accession in accessions:
		file.write(accession + "\n")