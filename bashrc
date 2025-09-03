export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

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
export DEV_PATH="$HOME/dev"
export OPT_PATH="$HOME/opt"
export DEV_OPT_PATH="$OPT_PATH/dev"
export SCRIPT_PATH="$DEV_PATH/script"

export PATH="$SCRIPT_PATH/:$PATH"
export PATH="$DEV_OPT_PATH/script.download/:$PATH"
export PATH="$DEV_OPT_PATH/built/:$PATH"
export PATH="$DEV_OPT_PATH/bin/:$PATH"
export PATH="$OPT_PATH/bin/:$PATH"
export PATH="$OPT_PATH/built/:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/opt/dmenu_path:$PATH"

export EDITOR="nvim"
export TERM="st"

#export PS1="\033[31m⚒\033[0m ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ "
export PS1='$(cmd-prompt-ps1)'

export SOUND_CARD=$(amixer scontrols | head -n 1 | cut -d "'" -f2)

# source file
source $SCRIPT_PATH/completion
#source /home/cptbb/downloads/git/bash-wakatime/bash-wakatime.sh

# variable
#myip=$(dig +short txt ch whoami.cloudflare @1.0.0.1 | sed 's/\"//g')

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
#alias shut="figlet 'finito' && sleep 0.5; shutdown 0"
alias v="nvim"
alias g="git"
alias hm="gnome-terminal --full-screen -- bash -c \"exec bash; cd $DEV_PATH && cls\" && exit"
alias hlm="dev; cls"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias send-nude="pqiv --fullscreen -ti ~/pictures/nude.jpeg"
alias lsa="ls -a"
alias lsA="ls -A"
alias lsl="ls -lh"
alias bashrc="nvim $SCRIPT_PATH/bashrc && exec bash"
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
alias mcphrase="shuf -n 1 $SCRIPT_PATH/mcphrase | figlet -w 999"
alias gay-ouataz="figlet gay-ouataz | lolcat -p 0.5 2>/dev/null"
alias tg="figlet TG "
alias livres="cd ~/livres"
alias spinningrat="pqiv --fullscreen -ti --background-pattern=white ~/videos/rat-spinning.gif"
alias cleanindicator="ls -A ~ | wc -l | figlet"
#alias srvcheck="ssh nbbsrv sh /home/cptbbot/arualiv.sh"
alias srvcheck="echo no srv ?"
alias nbprj="expr \$(cgit $DEV_PATH) - 1"
alias lsprj='echo -en $LIGHTBLUE && ls $DEV_PATH | grep -E -v ^test\|script\|opt$ | tr "\n" " " | column --table && echo -en $NC'
alias lsal="ls -al"
alias note="v $DEV_OPT_PATH/notes/global"
alias list="ssh nbbsrv docker exec mcsrv-create rcon-cli list"
alias listf="ssh nbbsrv docker exec mcsrv-f rcon-cli list"
alias listr="ssh nbbsrv docker exec mcsrv-ram rcon-cli list"
alias lista="list; listf; listr"
alias cpmake="cp $SCRIPT_PATH/Makefile ."
alias vbashrc="v $SCRIPT_PATH/bashrc"
alias obsidian="~/downloads/Obsidian-1.3.5.AppImage >/dev/null 2>/dev/null  &"
alias hamood="figlet habibi | lolcat -p 0.5 && espeak -v af habibi"
alias please="sudo"
alias m="make"
alias mr="make run"
alias refresh="echo -e '\033[0m' '\033[?25h' '\033[?1049l'"
alias space="echo -e '\033[?25l' && clear && read && echo -e '\033[?25h'"
alias lampp="sudo /opt/lampp/lampp"
alias clean="alias clr=\"clear\" && clear"
alias oracle="cd ~/downloads/sqldeveloper/ && ./sqldeveloper.sh"
alias elephant="pqiv --fullscreen -ti ~/pictures/dall-e"
alias l="if [ \$(pwd) == \"\$DEV_PATH\" ]; then lsprj; else ls $*; fi"
alias krunker="~/downloads/setup.AppImage"
alias :wq="echo don\'t worry, it\'s saved"
alias coredir="echo /var/lib/apport/coredump"
alias man="man -L fr"
alias todo="v $DEV_OPT_PATH/notes/TODO"
alias kys="shut"
alias lastcd="back && pwd && back"
alias sae="cd /opt/lampp/htdocs/SAE_Reseaux"
alias unity="/home/cptbb/Unity-2023.2.8f1/Editor/Unity"
alias qr-network="nmcli device wifi show-password"
alias cal="ccal -e --noc"
alias calendar="calcurse"
alias dicker="docker"
alias hexdump="hexdump --canonical"
alias p3="python3"
alias shrek="firefox https://www.youtube.com/watch?v=_S7WEVLbQ-Y"
alias ssh-save='eval $(ssh-agent) && ssh-add'
alias raylib="cd /usr/local/include && v raylib.h"
alias d="dev"
alias packtoday="grep ' install ' /var/log/dpkg.log | grep $(date +%Y-%m-%d) | cut -d' ' -f4"
alias amongus="p3 -c 'print(chr(sum(range(ord(min(str(not())))))))' | lolcat"
alias neofetch="neofetch --source $OPT_PATH/img/meme/penger/penger.txt"
alias j="journal"
alias mokdir="mkdir"
alias tt="tt -showwpm -words french_1k -t 30 -csv"
alias one-letter-command='sed -n "s/^alias *\(.\)=.*$/\1/p" '$SCRIPT_PATH'/bashrc | tr "\n" " " | lolcat && echo'
alias loser="echo il n\'y a pas de loser ici, que des winner \(des gens qui utilise linux\)"
alias monip="dig +short txt ch whoami.cloudflare @1.0.0.1 | sed 's/\"//g'"
alias pvpn="export $(dbus-launch) && gnome-keyring-daemon -r -d && protonvpn-app"
alias fix-minecraft-file-limit="echo 256 | sudo tee /proc/sys/fs/inotify/max_user_instances"

# alias avec parametre
emoji(){ grep -i $1 $OPT_PATH/emoji; }
dev(){ [ -z $1 ] && cd $DEV_PATH/ || cd $DEV_PATH/*$1* ;}
opt(){ [ -z $1 ] && cd $OPT_PATH/ || cd $OPT_PATH/*$1* ;}
work(){ [ -z $1 ] && cd ~/work/ || cd ~/work/*$1* ;}
cours(){ [ -z $1 ] && cd ~/cours/ || cd ~/cours/*$1* ;}
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
archive(){ if [[ $1 == "" ]]; then echo "usage: archive ./project"; else tar zcvf $DEV_OPT_PATH/archive/$(echo $1 | sed "s/\/$//g").tgz $1 && rm $DEV_PATH/$1; fi; }
unarchive(){ cd $DEV_PATH && tar -xvf "$DEV_OPT_PATH/archive/$(ls $DEV_OPT_PATH/archive/ | sed "s/\.tgz$//g" | dmenu).tgz"; }
alias sgit="for i in \$(lgit); do echo -e \"\n\$i\" && cd \$i && git status && back; done"

#newgrp docker

command_not_found_handle()
{
    echo "'$1' command not found, loser !"
    echo "shuting down in 3 second..."
    sleep 1
    echo "shuting down in 2 second..."
    sleep 1
    echo "shuting down in 1 second..."
    sleep 1
    echo "ratio"
    shutdown 0
}
