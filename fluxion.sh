apt update
apt install libssl-dev libpcap0.8-dev libdigest-hmac-perl build-essential autoconf automake libtool pkg-config libnl-3-dev libnl-genl-3-dev ethtool shtool rfkill zlib1g-dev libsqlite3-dev libpcre3-dev libhwloc-dev libcmocka-dev hostapd wpasupplicant tcpdump screen iw usbutils clang isc-dhcp-server php-cgi mdk3 lighttpd hostapd macchanger

wget https://www.willhackforsushi.com/code/cowpatty/4.6/cowpatty-4.6.tgz
tar xzvf cowpatty-4.6.tgz
cd cowpatty-4.6/
make
sudo make install 

cd ..
git clone https://github.com/aircrack-ng/mdk4.git
cd mdk4/
make
sudo make install

git clone https://github.com/FluxionNetwork/fluxion.git
cd fluxion
./fluxion.sh
