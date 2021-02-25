

.libPaths("./R_packages")
install.packages("BiocManager", repos="http://cran.us.r-project.org", lib="./R_packages")
BiocManager::install("DESeq2")
library("DESeq2")

(.packages())