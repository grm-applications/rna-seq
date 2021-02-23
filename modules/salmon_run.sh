

if [ `uname` == "Darwin" ]; then
	cd ..
	cd FASTQ
	for dir in *;
	do
		echo "Processing sample ${dir}"
		cd ${dir}
			../../modules/salmon_0.99.0_beta2_OSX_10.14.5/bin/salmon quant -i ../../Reference/ -l A -1 ${dir}_1.fastq -2 ${dir}_2.fastq -p 8 --validateMappings -o ../../Salmon/${dir}
		cd ..

	done
elif [ `uname` == "Linux" ]; then
	cd ..
	cd FASTQ
	for dir in *;
	do
		echo "Processing sample ${dir}"
		cd ${dir}
			../../modules/salmon_0.99.0_beta2_linux_x86_64/bin/salmon quant -i ../../Reference/ -l A -1 ${dir}_1.fastq -2 ${dir}_2.fastq -p 8 --validateMappings -o ../../Salmon/${dir}
		cd ..

	done
fi