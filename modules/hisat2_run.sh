

cd ..
cd FASTQ
for dir in *;
do
	echo "Processing sample ${dir}"
	cd ${dir}
		../../modules/hisat2-2.2.1/hisat2 -x ../../Reference/athal_index {-1 ${dir}_1.fastq -2 ${dir}_2.fastq} [-S ../../Hisat2/${dir}]

./hisat2-2.2.1/hisat2 

../Reference/athal.fa.gz ../Reference/hisat2_index
