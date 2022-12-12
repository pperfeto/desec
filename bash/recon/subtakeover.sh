#!/bin/bash

if [ "$1" == "" ]
then
  echo "Modo de uso: ./subtakeover.sh SITE LISTA"
  echo "Exemplo: ./subtakeover.sh desecsecurity.com rockyou.txt"
else

for palavra in $(cat $2);
do
  host -t cname $palavra.$1 | grep "alias for"
done
