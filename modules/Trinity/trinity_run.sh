

cd ..
cd ..
cd FASTQ

../modules/Trinity/trinityrnaseq-v2.11.0/Trinity --seqType fq --samples_file "trinity_sample_file.txt" --CPU 6 --max_memory 20G


#Iterate over each SRA directory and store
#