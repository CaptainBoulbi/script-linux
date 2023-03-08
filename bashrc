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

# alias
alias dev="cd ~/dev/"
alias cours="cd ~/cours/"
alias cls="clear && neofetch"
alias clr="clear"
alias xclipi="xclip -sel clip"
alias rm="trash"
alias shutdown="shutdown 0"
alias v="nvim"
alias g="git"
alias hm="gnome-terminal --full-screen -- bash -c \"cd ~/dev && neofetch; exec bash\" && exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias send-nude="pqiv --fullscreen -t ~/pictures/nude.jpeg"
alias libresprite="~/documents/libresprite.AppImage 1>/dev/null &"
alias lsa="ls -a"
alias lsd="ls -d */"
alias lsf="ls -p | grep -v / | tr '\n' '\t' && echo"
alias lsl="ls -l"
alias ls..="ls .."
alias ls.="ls -a | grep \"^\.\" | tr '\n' '\t' && echo"
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
alias v.="nvim ."
alias vrc="nvim ~/.config/nvim"

# source file
source ~/dev/script/completion
source /home/cptbb/downloads/git/bash-wakatime/bash-wakatime.sh

# fun ?
while true; do
	[ $(date +%H) -eq $(date +%M) ] && echo -e "${RED}$(date +%H):$(date +%M) TOUCHEZ DU ROUGE${NC}";
	sleep 60
done &
