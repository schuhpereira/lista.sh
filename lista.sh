#!/bin/bash

# Diretórios que serão salvos os arquivos de anotações
DIR="/home/eduardo/Arquivos/Dropbox/IENH/2016_2"

# Lista os arquivos nos diretórios citados acima
#find $DIR -name "*.txt" > listaArquivos.txt 

for d in $DIR do

find $d -type f
yad --text-info --title="Arquivos Recentes" \
		--width=600 --height=300 \
		--filename="listaArquivos.txt" \
		--fore="black" --back="#AAFFAA" --fontname="Ubuntu Mono 12" \
		--justify="fill" --margins="10" \
		--show-uri \
		--button='Sair':1 --button='Abrir':0
done
