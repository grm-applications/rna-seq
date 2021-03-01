
if (Sys.info()["sysname"] == "Darwin") {
	if (!file.exists("./R_packages")) {
		dir.create("./R_packages")
		.libPaths("./R_packages")
		install.packages("BiocManager", repos="http://cran.us.r-project.org", lib="./R_packages")
		BiocManager::install("DESeq2", lib="./R_packages")
	} else {
		.libPaths("./R_packages")
	}
} else if (Sys.info()["sysname"] == "Linux") {
	# install.packages("BiocManager")
	# BiocManager::install("tximport")
}

library("DESeq2")
library("tximport")

# dds


# # dds <- DESeqDataSetFromMatrix(countData = cts, colData = coldata, design = ~ batch + condition)
# # dds <- DESeq(dds)
# # resultsNames(dds)
# # res <- results(dds, name="condition_trt_vs_untrt")
# # res <- lfcShrink(dds, coef="condition_trt_")

# # samples <- as.matrix(read.table("quant.sf", header=FALSE))
# # samples <- samples[-1]
# # print(samples)

# meta <- data.frame(sampletype = c("A", "B"))
# print(meta)

# condition <- factor(c("Name", "Length", "EffectiveLength", "TPM", "NumReads"))
# dds <- DESeqDataSetFromMatrix(samples, DataFrame(condition), ~ condition)
# print(dds)


# names <- data.frame(samples$Name)
# print(names[0])

# dir <- system.file("extdata", package="tximportData")
# samples <- read.table(file.path(dir,"samples.txt"), header=TRUE)
# samples$condition <- factor(rep(c("A","B"),each=3))
# rownames(samples) <- samples$run
# samples[,c("pop","center","run","condition")]
