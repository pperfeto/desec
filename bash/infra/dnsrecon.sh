#!/bin/bash

if [ "$1" == "" ]
then
  echo "Modo de uso: ./dnsrecon.sh SITE LISTA"
  echo "Exemplo: ./dnsrecon.sh desecsecurity.com rockyou.txt"
else

for palavra in $(cat $2);
do
  host $palavra.$1 | grep -v "NXDOMAIN"
done

