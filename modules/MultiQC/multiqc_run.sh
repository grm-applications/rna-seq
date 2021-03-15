
module load roslin/python/3.8.1

pip install multiqc
multiqc ./'Quality Control'

module unload roslin/python/3.8.1
