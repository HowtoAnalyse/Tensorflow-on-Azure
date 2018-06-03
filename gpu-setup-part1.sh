#!/bin/bash 

#if [ "$EUID" -ne 0 ]; then
#	echo "Please run as root (with sudo)"
#	exit
#fi

SETUP_DIR="$HOME/gpu-setup"
mkdir -p $SETUP_DIR
cd $SETUP_DIR

# install cuda drivers
if [ ! -f "cuda_9.0.176.1_linux-run" ]; then 
	wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda_9.0.176.1_linux-run
fi
chmod +x cuda_9.0.176.1_linux-run
sudo sh cuda_9.0.176.1_linux-run --silent --verbose --driver

echo "Setup requires a reboot to continue."
echo "The VM will reboot now. Login after it restarts and continue installation from part2."

sudo reboot

