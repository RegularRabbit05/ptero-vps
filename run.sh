#!/bin/sh

PURPLE='\033[0;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
SP='                 '

printf "\033c"
printf "${GREEN}Starting..${NC}\n"
sleep 1
printf "\033c"

DIR=$PWD # get current dir

HNAME="$(hostname)"

/bin/sh "/autoruns.sh"

printf "\033c" 
printf "                                                                                               \n"
printf "                                                                                               \n"
printf "${SP} ${GREEN}██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗${NC}\n"
printf "${SP} ${GREEN}██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝${NC}\n"
printf "${SP} ${GREEN}██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  ${NC}\n"
printf "${SP} ${GREEN}██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  ${NC}\n"
printf "${SP} ${GREEN}╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗${NC}\n"
printf "${SP} ${GREEN} ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝${NC}\n"
printf "                                                                                               \n"
printf "${SP}                   ${RED}©ysdragon - ©RegDev\n"
printf "                                                                                               \n"
printf "                                                                                               \n"

run_cmd() {
	USNAME="$(whoami)"
	printf "${USNAME}@${HNAME}:$DIR# \n"
    read -p "${USNAME}@${HNAME}:$DIR# " CMD
    eval "$CMD"
    DIR=$PWD
}

while true
do
  run_cmd
done
