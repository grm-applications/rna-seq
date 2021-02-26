
echo "Installing SRA!"

if [ `uname` == "Darwin" ]; then
	wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-mac64.tar.gz
	tar -xzvf sratoolkit.current-mac64.tar.gz
	rm sratoolkit.current-mac64.tar.gz
fi

echo "Successfully Installed SRA!"