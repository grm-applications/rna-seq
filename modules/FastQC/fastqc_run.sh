
mkdir 'Quality Control'
cd FASTQ
for dir in *
do
	cd $dir
	for file in *.fastq
	do
		if [ `uname` == "Darwin" ]; then
			../../modules/FastQC/FastQC/fastqc -o ../../'Quality Control' $file
		elif [ `uname` == "Linux" ]; then
			fastqc -o ../../'Quality Control' $file
		fi
	done
	cd ..
done
cd ..