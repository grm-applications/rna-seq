

echo "Installing Trinity!"

if [ `uname` == "Darwin" ]; then
	wget https://github.com/trinityrnaseq/trinityrnaseq/releases/download/v2.11.0/trinityrnaseq-v2.11.0.FULL.tar.gz
	tar xzvf trinityrnaseq-v2.11.0.FULL.tar.gz
	rm trinityrnaseq-v2.11.0.FULL.tar.gz
elif [ `uname` == "Linux" ]; then
	wget https://github.com/trinityrnaseq/trinityrnaseq/releases/download/v2.11.0/trinityrnaseq-v2.11.0.FULL.tar.gz
	tar xzvf trinityrnaseq-v2.11.0.FULL.tar.gz
	rm trinityrnaseq-v2.11.0.FULL.tar.gz
	cd trinityrnaseq-v2.11.0
	make
fi

echo "Successfully Installed Trinity!"
