
#!/bin/bash

# Downloading Data from SRA

./install_toolkit.sh
./prefetch.sh
./fastq_dump.sh
./uninstall_toolkit.sh

# Quality Control

./install_fastqc.sh
./run_fastqc.sh
./uninstall_fastqc.sh

#Read Alignment

# ./install_hisat2.sh
# ./download_reference.sh
# ./index_reference.sh

