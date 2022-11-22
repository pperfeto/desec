#/bin/bash

if [ "$1" == "" ]
then
  echo -e "\nDESEC SECURITY - HTML PARSING\n"
  echo -e "Descricao:\nProcura por subdominios no codigo HTML do host informado.\n"
  echo "Modo de uso: $0 HOST"
  echo -e "Exemplo: $0 google.com\n"
else
  wget -q -O $1 $1
  echo -e "\nBuscando Hosts..."
  grep http $1 | cut -d "/" -f 3 | cut -d '"' -f 1 | egrep -v "<|>|)" | grep "\." | sort -u > $1.txt | rm $1
  for url in $(cat $1.txt);
  do
    echo "Host: $url"
  done
  echo -e "\nResolvendo Hosts..."
  for url in $(cat $1.txt);
  do
    host $url | grep "has address" | awk '{print $1 " => " $4}' >> ips-$1 | tail -n 1 ips-$1
  done
  rm $1.txt
  echo -e "\nHosts Resolvidos:"
  cat ips-$1
  echo -e "\nSalvo em: ips-$1\n"
fi

