

cd ..
cd FASTQ

./trinityrnaseq-v2.11.0/Trinity --seqType fq --left ../FASTQ/DRR016125/DRR016125_1.fq --right ../FASTQ/DRR016125/DRR016125_2.fq --CPU 6 --max_memory 20G
./trinityrnaseq-v2.11.0/Trinity --seqType fq --samples_file <> --CPU 6 --max_memory 20G


#Iterate over each SRA directory and store
#