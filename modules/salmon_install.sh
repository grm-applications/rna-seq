
echo "Installing Salmon!"

if [ `uname` == "Darwin" ]; then
	wget https://github.com/COMBINE-lab/salmon/releases/download/v0.99.0-beta2/salmon_0.99.0_beta2_OSX_10.14.5.tar.gz
	tar xzvf salmon_0.99.0_beta2_OSX_10.14.5.tar.gz
	rm salmon_0.99.0_beta2_OSX_10.14.5.tar.gz
elif [ `uname` == "Linux" ]; then
	wget https://github.com/COMBINE-lab/salmon/releases/download/v0.99.0-beta2/salmon_0.99.0_beta2_linux_x86_64.tar.gz
	tar xzvf salmon_0.99.0_beta2_linux_x86_64.tar.gz
	rm salmon_0.99.0_beta2_linux_x86_64.tar.gz
fi

echo "Successfully Installed Salmon!"

