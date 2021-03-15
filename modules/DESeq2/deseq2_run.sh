
module load R
module load igmm/apps/python/2.7.10

python ./modules/Python/create_accession_list.py
Rscript ./modules/DESeq2/deseq2.R

module unload igmm/apps/python/2.7.10
module unload R