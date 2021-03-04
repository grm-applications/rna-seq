
if(!file.exists("./R_packages")) {
	dir.create("./R_packages")
	.libPaths("./R_packages")
	install.packages("BiocManager", repos="http://cran.us.r-project.org", lib="./R_packages")
	library("BiocManager")
	BiocManager::install("tximport", lib="./R_packages")
	BiocManager::install("tximportData", lib="./R_packages")
	BiocManager::install("readr", lib="./R_packages")
} else {
	.libPaths("./R_packages")
}
library("DESeq2")
library("tximport")
library("tximportData")
library("readr")


directory <- "../../Salmon/"
files <- file.path(directory,)

dir <- system.file("extdata", package="tximportData") #"/exports/eddie/scratch/s1724533/R_packages/tximportData/extdata"
samples <- read.table(file.path(dir, "samples.txt"), header=TRUE) # Reads samples from "samples.txt"

# samples$condition <- factor(rep(c("A", "B"), each=3)) #
# rownames(samples) <- samples$run # Changes row indexes from numbers (e.g. 1) to sample name (e.g. ERR188297)
# samples[,c("pop", "center", "run", "condition")] # Grabs specific columns

files <- file.path(dir, "salmon", samples$run, "quant.sf")


names(files) <- paste0("sample", 1:6)
tx2gene <- read_csv(file.path(dir, "tx2gene.csv"))
txi <- tximport(files, type="salmon", tx2gene=tx2gene)

sampleTable <- data.frame(condition = factor(rep(c("A", "B"), each = 3)))
rownames(sampleTable) <- colnames(txi$counts)
dds <- DESeqDataSetFromTximport(txi, sampleTable, design = ~condition)
dds <- DESeq(dds)
res <- results(dds)
plotMA(res, ylim=c(-2,2))
