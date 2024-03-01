#!/bin/bash
# facilite l'utilisation et la création des cheat sheet + listage et lien
# pour aide cs -h

cs_folder=$DEV_OPT_PATH/cheat-sheet

case $1 in
	"-l") ls $cs_folder
		exit;;
	"-ln") ln -s $cs_folder/$2 $3
		exit;;
	"-st") cd $cs_folder
		git status
		exit;;
	"-ci") cd $cs_folder
		git add .
		git commit -am "$2"
		exit;;
	"-log") cd $cs_folder
		git plog
		exit;;
	"-ps") cd $cs_folder
		git push bbsrv
		exit;;
	"-h") echo "cs -h : affiche aide commande"
		echo "cs <cheat-sheet> : ouvre le cheat-sheet ou le crée s'il n'exite pas"
		echo "cs -l : affiche liste cheat sheet"
		echo "cs -ln <cheat-sheet> <lien> : crée un lien symbolique du cheat-sheet nommé lien"
		echo "cs -st : affiche le status git des cheat-sheet (eq: cd ~/dev/cheat-sheet && git status)"
		echo "cs -ci \"message\" : commit les cheat-sheet (eq: cd ~/dev/cheat-sheet && git add . && git commit -am \"message\")"
		echo "cs -log : affiche les log des commit git (eq: git plog)"
		echo "cs -ps : push le depot git sur le boulbi serveur"
		exit;;
esac

nvim $cs_folder/$1
