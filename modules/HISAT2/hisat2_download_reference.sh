
cd config
url=$(<reference.txt)
cd ..
mkdir Reference
cd Reference
wget ${url} &&
filename=""
for file in *;
do
	filename=${file}
done
gunzip ${filename}