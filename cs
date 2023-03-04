#!/bin/bash


if [[ $1 = "-l" ]]; then
	ls ~/dev/cheat-sheet
	exit
fi
if [[ $1 = "-ln" ]]; then
	ln -s ~/dev/cheat-sheet/$2 $3
	exit
fi
if [[ $1 = "-h" ]]; then
	echo "cs -h : affiche commande"
	echo "cs <cheat-sheet> : ouvre le cheat-sheet ou le crée s'il n'exite pas"
	echo "cs -l : affiche liste cheat sheet"
	echo "cs -ln <cheat-sheet> <lien> : crée un lien symbolique du cheat-sheet nommé lien"
	exit
fi

nvim ~/dev/cheat-sheet/$1
