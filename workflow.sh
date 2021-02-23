
#Configure File Permissions
cd modules &&
./configure_permissions.sh &&

# #Sequence Read Archive
# ./sra_install.sh &&
# ./sra_prefetch.sh &&
# ./sra_fastq_dump.sh &&

# #Quality Control
# ./fastqc_install.sh &&
# ./fastqc_run.sh &&

#Salmon
# ./salmon_install.sh &&
# ./salmon_download_reference.sh &&
# ./salmon_index_reference.sh &&
# ./salmon_run.sh &&

#HISAT2
./hisat2_install.sh &&
./hisat2_download_reference.sh &&
./hisat2_index_reference.sh
# ./hisat2_run.sh &&
