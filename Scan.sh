!/bin/bash

if [ "$1" == "-h" ] 
then
        echo "Usage: ./scan.sh indereço ip"
        echo "EX: ./scan.sh 255.255.255"
else 

echo "Indereços IPs disponíveis na sua rede:"

for i in {0..254} 
do 
        ping -c 1 "$1.$i" | grep ttl | cut -d " " -f 4 | sed "s/.$//" &         
done
fi
