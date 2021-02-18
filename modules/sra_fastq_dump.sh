#!/bin/bash

fastq-dump () {
	cd ..
	cd FASTQ
	for dir in *
	do
		cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then
				../../modules/sratoolkit.2.10.9-mac64/bin/fasterq-dump $file
			fi
		done
		cd ..
	done
}

fastq-dump-split () {
	cd ..
	cd FASTQ
	for dir in *
	do
		cd $dir
		for file in *
		do
			if [[ $file == *".sra"* ]]
			then
				../../modules/sratoolkit.2.10.9-mac64/bin/fasterq-dump --split-files $file
			fi
		done
		cd ..
	done
}

echo "Split files?"
select yn in "Yes" "No"; do
case $yn in
	Yes ) fastq-dump-split; break;;
	No ) fastq-dump; break;;
esac
done


