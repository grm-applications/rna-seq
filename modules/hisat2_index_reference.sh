
cd ..
cd Reference
filename=""
for file in *;
do
	filename=${file}
done

cd ..
cd modules

./hisat2-2.2.1/hisat2-build -p 7 ../Reference/${filename} ../Reference/INDEX/
