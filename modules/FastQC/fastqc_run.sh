
cd ..
cd ..
mkdir 'Quality Control'
cd FASTQ

for dir in *
do 
	cd $dir
	for file in *.fastq
	do
		../../modules/FastQC/FastQC/fastqc -o ../../'Quality Control' $file
	done
	cd ..
done
