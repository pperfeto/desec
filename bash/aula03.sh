#/bin/bash

if [ "$1" == "" ]
then
  echo "DESEC SECURITY"
  echo "Modo de uso: $0 192.168.0.20 80"
else
  echo "Explorando host: $1 e porta: $2"
fi
