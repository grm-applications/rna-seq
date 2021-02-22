
if [ `uname` == "Darwin" ]; then
	./salmon_0.99.0_beta2_OSX_10.14.5/bin/salmon index -t ../Reference/athal.fa.gz -i ../Reference/athal_index
elif [ `uname` == "Linux" ]; then
	./salmon-latest_linux_x86_64/bin/salmon index -t ../Reference/athal.fa.gz -i ../Reference/athal_index
fi

