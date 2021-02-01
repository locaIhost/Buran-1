#!/usr/bin/env bash

##########################
#	Debug
##########################
#set -xe
##########################
#    Date and time
##########################
DATE=`/usr/bin/date +%d-%m-%Y`
TIME=`/usr/bin/date +%r`
##########################
#    Banner
##########################
GUARD=`awk '{print $0}' banner/guard`
TOOR=`awk '{print $0}' banner/toor`
##########################
#    Check privilege
##########################
guard_root(){
	if [[ ${UID} = "0" ]]; then clear
	elif [[ ${UID} != "0" ]]; then clear;
		printf "\e[5;31m ${GUARD}$USERNAME\n${TOOR}\n\e[0m"; exit 1
	fi

}
##########################
#   Call all function
##########################
main(){ guard_root
}
main
