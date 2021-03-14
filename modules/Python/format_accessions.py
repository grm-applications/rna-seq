
import os
import csv
accessions = []
accessionsBank = []
class Accession:
	pass
with open("./config/accession_bank.txt", "r") as accession_bank:
	reader = csv.reader(accession_bank, delimiter="\t")
	for line in reader:
		accession = Accession()
		accession.name = line[0]
		accession.type = line[1]
		accessionsBank.append(accession)
with open("./config/conditions.txt", "r") as conditions:
	reader = csv.reader(conditions, delimiter="\t")
	for line in reader:
		accession = Accession()
		accession.name = line[0]
		accession.condition = line[1]
		accessions.append(accession)
for accession in accessions:
	condition = accession.condition
	for item in accessionsBank:
		if item.name == accession.name:
			accession.type = item.type

with open("./config/paired_accessions.txt", "w") as file:
	for accession in accessions:
		if accession.type == "P":
			file.write(accession.name + "\n")

with open("./config/single_accessions.txt", "w") as file:
	for accession in accessions:
		if accession.type == "S":
			file.write(accession.name + "\n")


