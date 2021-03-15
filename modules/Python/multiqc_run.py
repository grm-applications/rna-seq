
import os
os.environ['OPENBLAS_NUM_THREADS'] = '1'
import sys
sys.path.append(".MultiQC/multiqc")
import multiqc
multiqc.run("./'Quality Control'/.")
