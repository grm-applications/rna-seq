
cd FASTQ
for dir in */
do
	cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then	
				if [ `uname` == "Darwin" ]; then
					../../modules/SRA/sratoolkit.2.10.9-mac64/bin/fasterq-dump --split-files $file
				elif [ `uname` == "Linux" ]; then
					fastq-dump --defline-seq '@$sn[_$rn]/$ri' --split-files $file
				fi
				rm -r $file
			fi
		done
	cd ..
done
cd ..






