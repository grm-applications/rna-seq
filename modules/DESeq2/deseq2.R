if (Sys.info()["sysname"] == "Darwin") {
	if (!file.exists("./R_packages")) {
		dir.create("./R_packages")
		.libPaths("./R_packages")
		install.packages("BiocManager", repos="http://cran.us.r-project.org", lib="./R_packages")
		BiocManager::install("DESeq2", lib="./R_packages")
	} else {
		.libPaths("./R_packages")
	}
}
library("DESeq2")

# dir <- system.file("extdata", package="tximportData")
# samples <- read.table(file.path(dir, "samples.txt"), header=TRUE)
