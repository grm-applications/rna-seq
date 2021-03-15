
#!/bin/sh
#Grid Engine Options
#$ -N rna_seq
#$ -cwd

. /etc/profile.d/modules.sh
module load R
module load igmm/apps/salmon/1.3.0
module load igmm/apps/python/2.7.10
module load igmm/apps/sratoolkit/2.10.8
module load roslin/blast+/2.11.0
# module load igmm/apps/FastQC/0.11.9
# module load igmm/apps/HISAT2/2.1.0
# module load igmm/apps/Trinity/2.8.3

# ./modules/SRA/sra_accessions.sh
./modules/FastQC/fastqc_run.sh
# ./modules/MultiQC/multiqc_run.sh
# python ./modules/Python/trinity_sample_file.py
# ./modules/Trinity/trinity_rearrange_files.sh
# ./modules/Trinity/trinity_run.sh
# ./modules/Trinity/trinity_move_output.sh
# ./modules/Salmon/salmon_download_reference.sh
# ./modules/BLAST/blast_run.sh
# ./modules/Salmon/salmon_index_reference.sh
# ./modules/Salmon/salmon_run.sh
# python ./modules/Python/create_accession_list.py
# Rscript ./modules/DESeq2/deseq2.R

# ./hisat2_download_reference.sh
# ./hisat2_index_reference.sh
# ./hisat2_run.sh