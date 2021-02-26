
if [ `uname` == "Darwin" ]; then
	cd sratoolkit.2.10.9-mac64
	cd bin
	./prefetch --option-file ../../../../accession_list.txt -O ../../../../FASTQ/
elif [ `uname` == "Linux" ]; then
	prefetch --option-file ../../accession_list.txt -O ../../FASTQ/
fi