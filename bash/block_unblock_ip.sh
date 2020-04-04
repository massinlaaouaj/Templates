#!/bin/bash

#If you wish to block an ip address for whatever reason:

if [ "$EUID" -ne 0 ]
  then echo "Please use sudo, or login as root"
  exit
fi

RED='\033[0;41;30m'
MESSAGE='\e[43mYellow'
ACTION='\e[1;32m'
STD='\033[0;0;39m'

MAX=5
I=1

show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo "         MENU:       "
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "0. Block IP address"
	echo "1. Unblock IP address"
	echo "2. List iptables"
	echo "q. Exit"
}

while [ $I -le $MAX ]
	do
		show_menus
		read -p "Enter choise> " OPTION

		case "$OPTION" in

			"0") 	echo "\n Write the IP you want to block:"
				read -p "> " IPADDRBLOCK
				$( iptables -A INPUT -s $IPADDRBLOCK -j DROP )
				echo "${MESSAGE}The IP $IPADDRBLOCK is blocked${STD}" && sleep 1
				echo ""
			;;
			"1")	echo "\nWrite the IP you want to unblock:"
				read -p "> " IPADDRUNBLOCK
				$( iptables -D INPUT -s $IPADDRUNBLOCK -j DROP )
				echo "${MESSAGE}The IP $IPADDRBLOCK is unblocked${STD}" && sleep 1
				echo ""
			;;
			"2")	echo "\nList:"
				echo "$( iptables -L )"
				echo "\n${ACTION}[Enter to continous]${STD}"
				read ENTER
			;;
			"q")	exit
			;;
			*)	echo -e "${RED}Error...${STD}" && sleep 1
				I=$((I+1))
			;;
		esac
	done