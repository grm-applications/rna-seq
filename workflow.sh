
#Configure File Permissions
./modules/configure_permissions.sh

#Sequence Read Archive
./modules/sra_install.sh
./modules/sra_prefetch.sh
./modules/sra_fastq_dump.sh

#Quality Control
./modules/fastqc_install.sh
./modules/fastqc_run.sh

#Salmon
./modules/salmon_install.sh
./modules/salmon_download_reference.sh
./modules/salmon_index_reference.sh
./modules/salmon_run.sh

#HISAT2
./modules/install.sh
./modules/hisat2_download_reference.sh
./modules/hisat2_index_reference.sh
./modules/hisat2_run.sh
