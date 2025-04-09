#!/bin/bash
set -e

echo "🔧 Installing required tools..."

# Update and install basic tools
sudo apt update
sudo apt install -y iverilog gtkwave make git curl build-essential

# ---------------------------
# Install Docker (for OpenLane)
# ---------------------------
if ! command -v docker &> /dev/null; then
    echo "🐳 Docker not found. Installing Docker..."
    sudo apt install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker $USER
    echo "🚪 Please log out and back in or run: newgrp docker"
else
    echo "✅ Docker is already installed."
fi

# ---------------------------
# Clone and build Yosys
# ---------------------------
if [ ! -d "yosys" ]; then
    git clone https://github.com/YosysHQ/yosys.git
fi

cd yosys
git submodule update --init --recursive
make -j$(nproc)
sudo make install
cd ..

# ---------------------------
# Clone and setup OpenLane
# ---------------------------
if [ ! -d "OpenLane" ]; then
    git clone https://github.com/The-OpenROAD-Project/OpenLane.git
fi

cd OpenLane
make pull-openlane TAG=2023.10.23 || echo "⚠️ Docker setup required. Run 'docker run hello-world' to verify."
cd ..

# ---------------------------
# Install KLayout
# ---------------------------
sudo apt install -y klayout

echo "✅ All tools installed!"
