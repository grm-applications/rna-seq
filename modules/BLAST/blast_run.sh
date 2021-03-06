
module load roslin/blast+/2.11.0

cd Reference
filename=""
for file in *;
do
	filename=${file}
done
cd ..

mkdir BLAST

blastn -db nt -query ./Reference/${filename} -out ./BLAST/results.out -outfmt 0 -remote

module unload roslin/blast+/2.11.0