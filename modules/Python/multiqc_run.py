
import sys
sys.path.insert(1, "./modules/MultiQC/MultiQC/multiqc")

import multiqc
multiqc.run("./'Quality Control'")