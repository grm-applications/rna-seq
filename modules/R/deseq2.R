
if(!file.exists("./modules/DESeq2/R_packages")) {
	dir.create("./modules/DESeq2/R_packages")
	.libPaths("./modules/DESeq2/R_packages")
	install.packages("BiocManager", repos="http://cran.us.r-project.org", lib="./modules/DESeq2/R_packages")
	library("BiocManager")
	BiocManager::install("tximport", lib="./modules/DESeq2/R_packages")
	BiocManager::install("tximportData", lib="./modules/DESeq2/R_packages")
	BiocManager::install("readr", lib="./modules/DESeq2/R_packages")
	BiocManager::install("GenomicFeatures", lib="./modules/DESeq2/R_packages")
} else {
	.libPaths("./modules/DESeq2/R_packages")
}
library("DESeq2")
library("tximport")
library("tximportData")
library("readr")
library("GenomicFeatures")

# -- DESeq2 --
samples <- read.table(file.path("./config/accessions.txt"))
files <- file.path("./Salmon", samples$V1, "quant.sf")
names(files) <- paste0(samples$V1)
txi <- tximport(files, type="salmon", txOut=TRUE)
conditions <- read.table(file.path("./config/conditions.txt"))
sampleTable <- data.frame(condition=conditions$V2)
rownames(sampleTable) <- conditions$V1
dds <- DESeqDataSetFromTximport(txi, sampleTable, design=~condition)
dds <- DESeq(dds)
res <- results(dds)

#Look at the Results Table:
# head(results(dds, tidy=TRUE))

#Summary of differential gene expression:
# summary(res)




#Annotation:

# txdb <- makeTxDbFromGFF(gtf_file)




# -- DESeq2 with tximportData --
# dir <- system.file("extdata", package="tximportData")
# tximport_samples <- read.table(file.path(dir, "samples.txt"), header=TRUE) # Reads samples from "samples.txt"
# tximport_files <- file.path(dir, "salmon", tximport_samples$run, "quant.sf")
# names(tximport_files) <- paste0(tximport_samples$run)
# # tx2gene <- read_csv(file.path(dir, "txt2gene.csv"))
# # tximport_txi <- tximport(tximport_files, type="salmon", tx2gene=tx2gene)
# tximport_txi <- tximport(tximport_files, type="salmon", txIn=TRUE, txOut=TRUE)
# sampleTable <- data.frame(condition = factor(rep(c("A", "B"), each = 3)))
# rownames(sampleTable) <- colnames(tximport_txi$counts)
# dds <- DESeqDataSetFromTximport(tximport_txi, sampleTable, design=~condition)
# dds <- DESeq(dds)
# res <- results(dds)
