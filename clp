#!/bin/bash
# compte le nombre de ligne ecrite dans un fichier text

if [[ $1 != "" ]]; then
	cd $1
fi

var=$(find . | grep -v "\\.git" | grep -v "build" | xargs file -i | grep text | sed "s/:.*//g" | xargs wc -l | grep total)
echo ${var% total}
