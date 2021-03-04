

cd Reference
filename=""
for file in *;
do
	filename=${file}
done

if [ `uname` == "Darwin" ]; then
	../modules/Salmon/salmon_0.99.0_beta2_OSX_10.14.5/bin/salmon index -t ./${filename} -i ./${filename}_index
elif [ `uname` == "Linux" ]; then
	salmon index -t ./${filename} -i ./${filename}_index
fi
rm $filename
cd ..