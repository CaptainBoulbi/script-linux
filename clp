#!/bin/bash
# compte le nombre de ligne ecrite dans un fichier text

if [[ $1 != "" ]]; then
	cd $1
elif [[ $(ls . | grep "src") = "src" ]]; then
	cd src
fi

var=$(find . | grep -v ".git" | xargs file -i | grep text | sed "s/:.*//g" | xargs wc -l | grep total)
echo "nombre de ligne :" ${var% total}
