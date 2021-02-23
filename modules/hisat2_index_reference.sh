
cd ..
cd Reference
filename=""
for file in *;
do
	filename=${file}
done
mkdir ${filename}_index

cd ..
cd modules

./hisat2-2.2.1/hisat2-build -p 7 ../Reference/${filename} ../Reference/${filename}_index/index
