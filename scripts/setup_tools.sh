#!/bin/bash
set -e

echo "🔧 Installing required tools..."

sudo apt update
sudo apt install -y iverilog gtkwave make git

git clone https://github.com/YosysHQ/yosys.git
cd yosys && make -j$(nproc) && sudo make install && cd ..

git clone https://github.com/The-OpenROAD-Project/OpenLane.git
cd OpenLane
make pull-openlane TAG=2023.10.23
cd ..

sudo apt install -y klayout

echo "✅ All tools installed!"
