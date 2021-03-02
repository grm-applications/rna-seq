
#!/bin/sh
#Grid Engine Options
#$ -N rna_seq
#$ -cwd
#$ -l h_vmem=256G

if [ `uname` == "Linux" ];then
	. /etc/profile.d/modules.sh
	module load igmm/apps/R/4.0.3
	# module load igmm/apps/FastQC/0.11.9
	# module load igmm/apps/HISAT2/2.1.0
	# module load igmm/apps/salmon/1.3.0
	module load igmm/apps/python/2.7.10
	module load igmm/apps/sratoolkit/2.10.8
	module load igmm/apps/Trinity/2.8.3
elif [ `uname` == "Darwin" ];then
	cd modules
	cd SRA && ./sra_install.sh && cd ..
	cd FastQC && ./fastqc_install.sh &&cd ..
	cd Trinity && ./trinity_install.sh && cd ..
	cd Salmon && ./salmon_install.sh && cd ..
	cd HISAT2 && ./hisat2_install.sh && cd ..
	cd ..
fi

# ./modules/SRA/sra_prefetch.sh
# ./modules/SRA/sra_fastq_dump.sh
# ./modules/FastQC/fastqc_run.sh

# ./modules/Salmon/salmon_download_reference.sh
# ./modules/Salmon/salmon_index_reference.sh
# ./modules/Salmon/salmon_run.sh

# python ./modules/Trinity/trinity_sample_file.py
# ./modules/Trinity/trinity_rearrange_files.sh
./modules/Trinity/trinity_run.sh
# ./modules/Trinity/trinity_move_output.sh

# Rscript ./modules/DESeq2/deseq2.R
# ./hisat2_download_reference.sh
# ./hisat2_index_reference.sh
# ./hisat2_run.sh
