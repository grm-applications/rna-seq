

if [ `uname` == "Darwin" ]; then
	./modules/SRA/sratoolkit.2.10.9-mac64/bin/prefetch --option-file ./config/accessions.txt -o ./FASTQ/
elif [ `uname` == "Linux" ]; then
	prefetch --option-file ./config/accessions.txt -O ./FASTQ/
fi