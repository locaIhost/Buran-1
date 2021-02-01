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

##########################
#    Check privilege
##########################
guard_root(){
	if [[ ${UID} = "0" ]]; then echo $?
	elif [[ ${UID} != "0" ]]; then clear;
		printf "\e[5;31m ${GUARD}$USERNAME\n\e[0m"; exit 1
	fi

}

##########################
#   Call all function
##########################
main(){ guard_root
}
main
