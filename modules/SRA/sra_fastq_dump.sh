
cd FASTQ
for dir in */
do
	cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then	
				if [ `uname` == "Darwin" ]; then
					../../modules/SRA/sratoolkit.2.10.9-mac64/bin/fasterq-dump --split-files $base
				elif [ `uname` == "Linux" ]; then
					fastq-dump --split-files $base
				fi
			fi
		done
	cd ..
done
cd ..






