
#!/bin/sh
#Grid Engine Options
#$ -N rna_seq
#$ -cwd

if [ `uname` == "Linux" ];then
	. /etc/profile.d/modules.sh
	module load python/3.4.3
	module load igmm/apps/R/4.0.3
	module load igmm/apps/FastQC/0.11.9
	module load igmm/apps/HISAT2/2.1.0
	module load igmm/apps/salmon/1.3.0
	module load igmm/apps/node/10.16.3
	module load igmm/apps/sratoolkit/2.10.8
	cd modules
	./configure_permissions.sh
elif [ `uname` == "Darwin" ];then
	cd modules
	cd SRA && ./sra_install.sh && cd ..
	cd FastQC && ./fastqc_install.sh &&cd ..
	cd Trinity && ./trinity_install.sh && cd ..
	cd Salmon && ./salmon_install.sh && cd ..
	cd HISAT2 && ./hisat2_install.sh && cd ..
	./configure_permissions.sh
fi

# Sequence Read Archive
cd SRA
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
