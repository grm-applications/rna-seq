
cd FASTQ

for dir in *;
do
	if [ -d "$dir" ]; then
		cd ${dir}
		file1="${dir}_1.fastq"
		file2="${dir}_2.fastq"
		mv ${file1} ../"${dir}_1.fq" &&
		mv ${file2} ../"${dir}_2.fq" &&
		cd .. &&
		rm -r $dir
	fi
done

cd ..