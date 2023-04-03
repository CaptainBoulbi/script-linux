# color
NC='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

# activate vi mode with <esc>
set -o vi

# add directorie to PATH
export PATH="$HOME/dev/script/:$PATH"
export PATH="$HOME/dev/script.download/:$PATH"
export PATH="$HOME/dev/built/:$PATH"

# source file
source ~/dev/script/completion
source /home/cptbb/downloads/git/bash-wakatime/bash-wakatime.sh

# variable

myip=$(dig +short txt ch whoami.cloudflare @1.0.0.1 | sed 's/\"//g')

# # fun ?
# if [ $(cat ~/.funny) -eq 0 ]; then
# 	echo 2 > ~/.funny
# 	echo "FUNNY ACTIVATED"
# 	while true; do
# 		[ $(date +%H) -eq $(date +%M) ] && notify-send " " "$(date +%H):$(date +%M) TOUCHEZ DU ROUGE" && sleep 1800;
# 		sleep 60
# 	done &
# fi

# at start
clear
shuf -n 1 ~/dev/script/mcphrase | figlet

# alias
alias cls="clear && neofetch"
alias clr="clear"
alias rm="trash"
alias shut="shutdown 0"
alias v="nvim"
alias g="git"
alias hm="gnome-terminal --full-screen -- bash -c \"cd ~/dev && neofetch; exec bash\" && exit"
alias hlm="dev;cls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias send-nude="pqiv --fullscreen -t ~/pictures/nude.jpeg"
alias libresprite="~/documents/libresprite.AppImage 1>/dev/null &"
alias lsa="ls -a"
alias lsl="ls -l"
alias bashrc="nvim ~/dev/script/bashrc && exec bash"
alias agenda="v ~/documents/agenda"
alias quoi="echo feur && espeak -v fr-fr feur"
alias espeak="espeak -v fr-fr"
alias rick-roll="open https://youtu.be/dQw4w9WgXcQ 2>/dev/null"
alias sl="sl -alFe"
alias cgit="ls -d */ | xargs ls -a | grep ^.git$ | wc -l"
alias back="cd - >/dev/null"
alias important="cd ~/documents/important && open ."
alias jobs="jobs -l"
alias color-test="echo -e \"${RED}RED ${GREEN}GREEN ${ORANGE}ORANGE ${BLUE}BLUE ${PURPLE}PURPLE ${CYAN}CYAN ${LIGHTGRAY}LIGHTGRAY ${DARKGRAY}DARKGRAY ${LIGHTGREEN}LIGHTGREEN ${YELLOW}YELLOW ${LIGHTBLUE}LIGHTBLUE ${LIGHTPURPLE}LIGHTPURPLE ${LIGHTCYAN}LIGHTCYAN ${WHITE}WHITE ${NC}NC\""
alias v,="nvim ."
alias vrc="nvim ~/.config/nvim"
alias pipe="pipes.sh -r 0 -p 5"
alias wlc="wl-copy"
alias wlp="wl-paste"
alias laverite="echo -n 'linux > ' && echo wingay | lolcat -p 0.2"
alias mcphrase="shuf -n 1 ~/dev/script/mcphrase | figlet"
alias gay-ouataz="figlet gay-ouataz | lolcat -p 0.5 2>/dev/null"
alias tg="figlet TG "
alias livres="cd ~/livres"
alias lss="ls | grep -i"
#alias fss="find . | grep -v \\\.git | grep -i"

# alias avec parametre
emoji(){ grep -i $1 ~/dev/emoji; }
dev(){ cd ~/dev/$1; }
cours(){ cd ~/cours/$1;}
lsd(){ ls -d $1*/;}
lsf(){ ls -p $1 | grep -v /$;}
ls..(){ ls $1..;}
ls.(){ ls -a $1 | grep ^\\.;}
fss(){ find . | grep -v \\\.git | grep -i $1.[^/]*$; }
