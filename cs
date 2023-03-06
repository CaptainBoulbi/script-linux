#!/bin/bash
# facilite l'utilisation et la création des cheat sheet + listage et lien
# pour aide cs -h


if [[ $1 = "-l" ]]; then
	ls ~/dev/cheat-sheet
	exit
fi
if [[ $1 = "-ln" ]]; then
	ln -s ~/dev/cheat-sheet/$2 $3
	exit
fi
if [[ $1 = "-st" ]]; then
	cd ~/dev/cheat-sheet
	git status
	exit
fi
if [[ $1 = "-ci" ]]; then
	echo "commit avec -m : \"$2\""
	cd ~/dev/cheat-sheet
	git add .
	git commit -am "$2"
	exit
fi
if [[ $1 = "-h" ]]; then
	echo "cs -h : affiche aide commande"
	echo "cs <cheat-sheet> : ouvre le cheat-sheet ou le crée s'il n'exite pas"
	echo "cs -l : affiche liste cheat sheet"
	echo "cs -ln <cheat-sheet> <lien> : crée un lien symbolique du cheat-sheet nommé lien"
	echo "cs -st : affiche le status git des cheat-sheet (eq: cd ~/dev/cheat-sheet && git status)"
	echo "cs -ci \"message\" : commit les cheat-sheet (eq: cd ~/dev/cheat-sheet && git add . && git commit -am \"message\")"
	exit
fi

nvim ~/dev/cheat-sheet/$1
