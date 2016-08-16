#!/bin/bash

# Diretórios que serão salvos os arquivos de anotações
DIR="/home/eduardo/Arquivos/Dropbox/IENH/2016_2"

# Lista os arquivos dentro do diretório.
find $DIR -name "*.txt" > /tmp/listaArquivos.txt 

while CONTEUDO=$(yad --text-info --title="Anotações" \
		--width=600 --height=250 \
		--show-uri --editable \
		--filename="/tmp/listaArquivos.txt" \
		--fore="black" --back="#AAFFAA" --fontname="Ubuntu Mono 12" \
		--justify="fill" --margins="10" \
		--button='Sair':1 --button='Salvar':0)
do
	echo "$CONTEUDO\n" > anotacoes.txt
	NOVO_LOCAL=$(yad --file --width='400' --height='350' --filename="anotacoes.txt" --save --confirm-overwrite)
	cp "$NOVO_LOCAL" eventos.txt
done

killall yad
