#!/data/data/com.termux/files/usr/bin/bash

echo "ELF CLEANER BY TERMUX ID"
#read -p  "Klik enter utk melankutkan > " xxx
if [[ $(lscpu | awk '/Architecture/ {print $2}') != 'armv7l' ]]; then
echo "[!] Selain processor armv7l tidak didukung"
exit
else
echo "[*] Mendownload alat......"
sleep 1
curl -sk https://iman24.github.io/termux-elf-cleaner -o $PREFIX/bin/termux-elf-cleaner
chmod +x $PREFIX/bin/termux-elf-cleaner
echo "[*] Memproses...."
sleep 2
FIX=$PREFIX/lib
termux-elf-cleaner $FIX/libssl.so $FIX/libssl.so.1.1 $FIX/libcrypto.so $FIX/libcrypto.so.1.1
echo "[*] Beresss....."
fi
