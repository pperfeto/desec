#!/bin/bash

# How to use
if [ "$1" == "" ]
then
  echo "Modo de uso: ./dirfind.sh SITE LISTA EXTENSAO"
  echo "Exemplo: ./dirfind.sh businesscorp.com.br rockyou.txt php"

else

  # Finding directories
  #echo "Buscando por diretórios..."
#
  #for palavra in $(cat $2);
  #do
  #  resposta=$(curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0 " -o /dev/null -w "%{http_code}" http://$1/$palavra/)
  #  if [ "$resposta" == "200" ]
  #  then
  #    echo "Diretorio encontrado: http://$1/$palavra/"
  #  fi
  #done

  # Finding files
  echo -e "\nBuscando por arquivos..."
  
  for palavra in $(cat $2);
  do
    resposta=$(curl -s -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0 " -o /dev/null -w "%{http_code}" http://$1/$palavra/)
    if [ "$resposta" == "200" ]
    then
      echo "Arquivo encontrado: http://$1/$palavra"
      echo "Arquivo $3 encontrado: http://$1/$palavra.$3"
    fi
  done
fi
