
cd Reference
filename=""
for folder in */;
do
	filename=${folder}
done
cd ..
cd FASTQ
for dir in *;
do
	echo "Processing sample ${dir}"
	cd ${dir}
		if [ `uname` == "Darwin" ]; then
			../../modules/Salmon/salmon_0.99.0_beta2_OSX_10.14.5/bin/salmon quant -i ../../Reference/${filename}/ -l A -1 ${dir}_1.fastq -2 ${dir}_2.fastq -p 8 --validateMappings -o ../../Salmon/${dir}
		elif [ `uname` == "Linux" ]; then
			salmon quant -i ../../Reference/${filename}/ -l A -1 ${dir}_1.fastq -2 ${dir}_2.fastq -p 8 --validateMappings -o ../../Salmon/${dir}
		fi
	cd ..
done
cd ..



