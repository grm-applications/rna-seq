
module load igmm/apps/Trinity/2.8.3
module load igmm/apps/python/2.7.10

# trinity_sample_file.py
python ./modules/Python/trinity_sample_file.py

# trinity_rearrange_files.sh
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

# trinity_run.sh
cd FASTQ
if [ `uname` == "Darwin" ]; then
	../modules/Trinity/trinityrnaseq-v2.11.0/Trinity --seqType fq --samples_file "trinity_sample_file.txt" --CPU 6 --max_memory 20G
elif [ `uname` == "Linux" ]; then
	Trinity --seqType fq --samples_file "trinity_sample_file.txt" --CPU 16 --max_memory 50G
fi
cd ..

# trinity_move_output.sh

mkdir Trinity
mv ./FASTQ/trinity_out_dir ./Trinity/

# Unload Modules

module unload igmm/apps/Trinity/2.8.3
module unload igmm/apps/python/2.7.10
