
if [ `uname` == "Darwin" ]; then
	wget https://cloud.biohpc.swmed.edu/index.php/s/zMgEtnF6LjnjFrr/download &&
	unzip download &&
	rm download
elif [ `uname` == "Linux" ]; then
	wget https://cloud.biohpc.swmed.edu/index.php/s/oTtGWbWjaxsQ2Ho/download &&
	unzip download &&
	rm download
fi

