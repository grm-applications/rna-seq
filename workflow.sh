
#!/bin/sh
#Grid Engine Options
#$ -N rna_seq_george_moore
#$ -cwd

if [ `uname` == "Linux" ];then
	. /etc/profile.d/modules.sh
	module load python/3.4.3
fi

#Configure File Permissions
cd modules
./configure_permissions.sh

# Sequence Read Archive
cd SRA
./sra_install.sh
./sra_prefetch.sh
./sra_fastq_dump.sh
cd ..

# Quality Control
# cd FastQC
# ./fastqc_install.sh
# ./fastqc_run.sh
# cd ..

# #Trinity
# cd Trinity
# ./trinity_install.sh
# ./trinity_run.sh
# cd ..

# #Salmon
# cd Salmon
# ./salmon_install.sh
# ./salmon_download_reference.sh
# ./salmon_index_reference.sh
# ./salmon_run.sh
# cd ..

# #HISAT2
# cd HISAT2
# ./hisat2_install.sh
# ./hisat2_download_reference.sh
# ./hisat2_index_reference.sh
# ./hisat2_run.sh
# cd ..

# # #DESeq2
# mkdir R_packages
# Rscript deseq2.R
