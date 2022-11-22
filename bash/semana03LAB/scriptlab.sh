#!/bin/bash

if [ "$1" == "" ]
then
  echo "DESEC SECURITY - PORTSCAN NETWORK"
  echo "Modo de uso: $0 REDE PORTA"
  echo "Exemplo: $0 172.16.1 80"
else
  for porta in {13,37,30000,3000};
  do
    hping3 -S -p $porta -c 1 $1
  done
fi
