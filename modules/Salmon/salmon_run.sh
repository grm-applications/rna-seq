
module load igmm/apps/salmon/1.3.0

cd Reference
filename=""
for folder in */;
do
	filename=${folder%/}
done
cd ..
cd FASTQ
for dir in *;
do
	echo "Processing sample ${dir}"
	cd ${dir}
		if [ -e ./${dir}_1.fastq ] && [ -e ./${dir}_1.fastq ]; then
			salmon quant -i ../../Reference/${filename}/ -l A -1 ${dir}_1.fastq -2 ${dir}_2.fastq -p 1 --validateMappings -o ../../Salmon/${dir}
		elif [ -e ./${dir}.fastq ]; then
			salmon quant -i ../../Reference/${filename}/ -l A -r ${dir}.fastq -p 1 --validateMappings -o ../../Salmon/${dir}
		fi
	cd ..
done
cd ..

module unload igmm/apps/salmon/1.3.0
