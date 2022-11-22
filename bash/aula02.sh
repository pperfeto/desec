#!/bin/bash

echo "O cliente autorizou o Pentest?"
echo "1 - Sim"
echo "2 - Nao"
read resp
case $resp in
"1")
  echo "Pode iniciar o Pentest"
;;
"2")
  echo "Pentest pendente!"
;;
esac
