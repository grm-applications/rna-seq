#!/bin/bash


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



