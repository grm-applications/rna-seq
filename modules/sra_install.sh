
# if [ `uname` == "Darwin" ]; then
# 	echo "Operating System is macOS"
# 	wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-mac64.tar.gz
# 	tar -xzvf sratoolkit.current-mac64.tar.gz
# 	rm sratoolkit.current-mac64.tar.gz
# elif [ `uname` == "Linux" ]; then
	echo "Operting System is Linux"
	wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz
	tar -xzvf sratoolkit.current-centos_linux64.tar.gz
	rm sratoolkit.current-centos_linux64.tar.gz
# fi
