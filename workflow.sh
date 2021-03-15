
#!/bin/sh
#Grid Engine Options
#$ -N rna_seq
#$ -cwd

. /etc/profile.d/modules.sh

./modules/SRA/sra_accessions.sh
# ./modules/FastQC/fastqc_run.sh
# ./modules/MultiQC/multiqc_run.sh
# ./modules/Trinity/trinity_run.sh
./modules/Salmon/salmon_download_reference.sh
# ./modules/BLAST/blast_run.sh
./modules/Salmon/salmon_index_reference.sh
./modules/Salmon/salmon_run.sh
./modules/DESeq2/deseq2_run.sh
