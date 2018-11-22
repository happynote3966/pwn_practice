#!/bin/sh
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386
sudo apt-get install -y gcc-multilib g++-multilib

chmod +x ../tools/rp-lin-x86
sudo cp ../tools/rp-lin-x86 /usr/local/bin
chmod +x ../tools/rp-lin-x64
sudo cp ../tools/rp-lin-x64 /usr/local/bin

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

wget https://out7.hex-rays.com/files/idafree70_linux.run
chmod +x idafree70_linux.run
./idafree70_linux_run
rm idafree70_linux.run
