
cd FASTQ
if [ `uname` == "Darwin" ]; then
	../modules/Trinity/trinityrnaseq-v2.11.0/Trinity --seqType fq --samples_file "trinity_sample_file.txt" --CPU 6 --max_memory 20G
elif [ `uname` == "Linux" ]; then
	Trinity --seqType fq --samples_file "trinity_sample_file.txt" --CPU 6 --max_memory 20G
fi
cd ..