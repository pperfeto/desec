#!/bin/bash

if [ "$1" == "" ]
then
  echo "DESEC SECURITY - PORTSCAN"
  echo "Modo de uso: $0 REDE"
  echo "Exemplo: $0 172.16.1.1"
else
  for port in {20,21,22,25,53,80,123,179,443,500};
  do
    hping3 -S -p $port -c 1 $1 2>/dev/null
  done
fi