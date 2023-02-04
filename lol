#!/bin/bash
# lol hihiha

if [[ $1 = "" ]]; then
	fortune | cowsay -f tux | lolcat
else
	cowsay -f tux $1 | lolcat
fi

# lol
