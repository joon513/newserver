#!/bin/bash

# Download cloudflared
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb -O cloudflared-linux-amd64.deb

# Fix broken packages
sudo apt --fix-broken install -y

# Install the .deb package
sudo dpkg -i cloudflared-linux-amd64.deb

# Make executable
chmod +x cloudflared

# Check version
./cloudflared --version

# Move to system path
sudo mv cloudflared /usr/local/bin/

# Give execute permission
sudo chmod +x /usr/local/bin/cloudflared

# Final version check
cloudflared --version

echo "Cloudflared installation completed."
