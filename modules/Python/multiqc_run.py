
import sys
sys.path.insert(1, "./modules/MultiQC/MultiQC/")

import multiqc
multiqc.run("./'Quality Control'")