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
export PATH="$HOME/dev/opt/script.download/:$PATH"
export PATH="$HOME/dev/opt/built/:$PATH"

# source file
source ~/dev/script/completion
#source /home/cptbb/downloads/git/bash-wakatime/bash-wakatime.sh

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

# alias
alias cls="clear && neofetch"
#alias clr="clear"
alias clr="clm"
alias clm="clear && mcphrase"
alias cll="clear && ls"
alias rm="trash"
alias shut="shutdown 0"
alias v="nvim"
alias g="git"
alias hm="gnome-terminal --full-screen -- bash -c \"cd ~/dev && neofetch; exec bash\" && exit"
alias hlm="dev; cls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias send-nude="pqiv --fullscreen -ti ~/pictures/nude.jpeg"
alias libresprite="~/documents/libresprite.AppImage 1>/dev/null &"
alias lsa="ls -a"
alias lsA="ls -A"
alias lsl="ls -l"
alias bashrc="nvim ~/dev/script/bashrc && exec bash"
alias agenda="v ~/documents/agenda"
alias quoi="echo feur && espeak -v fr-fr feur"
alias espeak="espeak -v fr-fr"
alias rick-roll="open https://youtu.be/dQw4w9WgXcQ 2>/dev/null"
alias sl="sl -alFe"
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
alias mcphrase="shuf -n 1 ~/dev/script/mcphrase | figlet -w 999"
alias gay-ouataz="figlet gay-ouataz | lolcat -p 0.5 2>/dev/null"
alias tg="figlet TG "
alias livres="cd ~/livres"
alias spinningrat="pqiv --fullscreen -ti --background-pattern=white ~/videos/rat-spinning.gif"
alias cleanindicator="ls -A ~ | wc -l | figlet"
alias srvcheck="ssh nbbsrv sh /home/cptbbot/arualiv.sh"
alias nbprj="expr \$(cgit ~/dev) - 1"
alias lsprj="ls ~/dev | grep -v opt | grep -v script | tr '\n' ' ' && echo"
alias lsal="ls -al"
alias note="v $HOME/dev/opt/notes/global"
alias list="ssh nbbsrv docker exec mcsrv-create rcon-cli list"
alias listf="ssh nbbsrv docker exec mcsrv-f rcon-cli list"
alias listr="ssh nbbsrv docker exec mcsrv-ram rcon-cli list"
alias lista="list; listf; listr"
alias cpmake="cp $HOME/dev/script/Makefile ."
alias vbashrc="v $HOME/dev/script/bashrc"
alias obsidian="~/downloads/Obsidian-1.3.5.AppImage >/dev/null 2>/dev/null  &"
alias hamood="figlet habibi | lolcat -p 0.5 && espeak -v af habibi"
alias please="sudo"
alias m="make"
alias mr="make run"
alias refresh="echo -e '\033[0m' '\033[?25h' '\033[?1049l'"
alias mpv="mpv --player-operation-mode=pseudo-gui --shuffle=yes"
alias space="echo -e '\033[?25l' && clear && read && echo -e '\033[?25h'"
alias lampp="sudo /opt/lampp/lampp"
alias clean="alias clr=\"clear\""
alias oracle="cd ~/downloads/sqldeveloper/ && ./sqldeveloper.sh"
alias elephant="pqiv --fullscreen -ti ~/pictures/dall-e"
alias l="if [ \$(pwd) == \"\$HOME/dev\" ]; then lsprj; else ls; fi"

# alias avec parametre
emoji(){ grep -i $1 ~/documents/emoji; }
dev(){ cd ~/dev/$1; }
cours(){ cd ~/cours/$1;}
lsd(){ ls -d $1*/;}
lsf(){ ls -p $1 | grep -v /$;}
ls..(){ ls $1..;}
ls.(){ ls -A $1 | grep ^\\.;}
fss(){ find $2 | grep -v \\.git | grep -v build | grep -i $1[^/]*$; }
lss(){ ls $2 | grep -i $1; }
cgit(){ [[ $1 = "" ]] && d="." || d=$1 && ls -d $d/*/ | xargs ls -a | grep ^\\.git$ | wc -l; }
lsc(){ ls $1 | wc -l; }
lsac(){ ls -A $1 | wc -l; }
waka(){ echo $1 > .wakatime-project; }
lole(){ [[ $1 = "" ]] && WTS=$(fortune) || WTS=$1; cowsay -f tux "$WTS" | lolcat && espeak -v en-us "$WTS"; }
lol(){ [[ $1 = "" ]] && WTS=$(fortune) || WTS=$1; cowsay -f tux "$WTS" | lolcat && espeak -v fr-fr "$WTS"; }
catall(){ find -type f | grep -v \.git | grep -v build | xargs file | grep text | sed "s/:.*$//g" | xargs tail -n +1; }
fgit(){ find | grep \\.git$ | sed s/\\.git//g; }
lgit(){ fgit | fgit | grep --color=never ^\\./[^/]*/$ ; }
cmkdir(){ mkdir $1 && cd $1; }
clo(){ clr && lole $1; }
alias sgit="for i in \$(lgit); do echo -e \"\n\$i\" && cd \$i && git status && back; done"

# at start
# clear
# mcphrase
