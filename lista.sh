#!/bin/bash

# Diretórios que serão salvos os arquivos de anotações
DIR="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/STI_segunda/"
DIR2="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/RLD_terca/"
DIR3="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/ADM2_quarta"
DIR4="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/PR2_quinta"
DIR5="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/SRI_sexta"
DIR6="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/EstagioUm_quarta"
DIR7="/home/eduardo/Arquivos/Dropbox/IENH/2016_2/EstagioDois_quarta"


# Lista os arquivos nos diretórios citados acima
find $DIR $DIR2 $DIR3 $DIR4 $DIR5 $DIR6 $DIR7 -name "*.txt" > listaArquivos.txt 
	yad --text-info --title="Arquivos Recentes" \
		--width=500 --height=400 \
		--filename="listaArquivos.txt" --editable --show-uri --wrap \
		--fore="black" --back="#AAFFAA" --fontname="Ubuntu Mono 12" \
		--justify="fill" --margins="10" \
		--show-uri \
		--button='Sair':1 --button='Abrir':0
