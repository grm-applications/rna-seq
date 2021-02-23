
cd ..
cd Reference
filename=""
for file in *;
do
	filename=${file}
done

cd ..
cd modules

if [ `uname` == "Darwin" ]; then
	./salmon_0.99.0_beta2_OSX_10.14.5/bin/salmon index -t ../Reference/${filename} -i ../Reference/${filename}_index
elif [ `uname` == "Linux" ]; then
	./salmon_0.99.0_beta2_linux_x86_64/bin/salmon index -t ../Reference/athal.fa.gz -i ../Reference/athal_index
fi

