
cd FASTQ

for dir in *;
do
	if [ -d "$dir" ]; then
		mv ${dir}/* ./
		rm -r ${dir}
	fi
done

for file in *;
do
	if [[ "$file" == *".fastq"* ]];then
		renamed="${file/.fastq/.fq}"
		mv $file $renamed
	fi
done

cd ..