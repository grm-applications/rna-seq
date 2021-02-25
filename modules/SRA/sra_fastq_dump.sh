

if [ `uname` == "Darwin" ]; then
	cd ..
	cd ..
	cd FASTQ
	for dir in *
	do
		cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then
				../../modules/SRA/sratoolkit.2.10.9-mac64/bin/fasterq-dump --split-files $file
			fi
		done
		cd ..
	done
elif [ `uname` == "Linux" ]; then
	cd ..
	cd ..
	cd FASTQ
	for dir in *
	do
		cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then
				../../modules/SRA/sratoolkit.2.10.9-centos_linux64/bin/fasterq-dump --split-files $file
			fi
		done
		cd ..
	done
fi




