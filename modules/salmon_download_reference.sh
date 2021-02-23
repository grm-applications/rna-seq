
cd ..
url=$(<reference.txt)
mkdir Reference
cd Reference
curl ${url}
