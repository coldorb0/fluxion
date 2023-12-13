#!/bin/bash

# Update and install dependencies
sudo apt update
sudo apt install -y \
  libssl-dev libpcap0.8-dev libdigest-hmac-perl build-essential \
  autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev \
  ethtool shtool rfkill zlib1g-dev libsqlite3-dev libpcre3-dev \
  libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw \
  usbutils clang isc-dhcp-server php-cgi mdk3 lighttpd hostapd macchanger

# Download and install cowpatty
wget https://www.willhackforsushi.com/code/cowpatty/4.6/cowpatty-4.6.tgz
tar xzvf cowpatty-4.6.tgz
cd cowpatty-4.6/
make
sudo make install
cd ..

# Clone and install mdk4
git clone https://github.com/aircrack-ng/mdk4.git
cd mdk4/
make
sudo make install
cd ..

# Clone and run Fluxion
git clone https://github.com/FluxionNetwork/fluxion.git
cd fluxion
./fluxion.sh
