
url=$(<reference.txt)
mkdir Reference
cd Reference
wget ${url} &&
filename=""
for file in *;
do
	filename=${file}
done
# gunzip ${filename}
cd ..
