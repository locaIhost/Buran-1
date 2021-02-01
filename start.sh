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
#    Check privilege
##########################
guard_root(){
	if [[ ${UID} = "0" ]]; then echo $?
	elif [[ ${UID} != "0" ]]; then exit 1
	fi

}

##########################
#   Call all function
##########################
main(){ guard_root
}
main
