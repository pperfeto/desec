#/bin/bash

if [ "$1" == "" ]
then
  echo "Modo de uso: ./metadados.sh SITE"
  echo "Exemplo: ./metadados.sh desecsecurity.com"
else

  mkdir $1
  cd $1
  
  echo -e "Acessando site e coletando link dos arquivos...\n"
  lynx --dump "https://google.com/search?q=site:$1+ext:pdf" | grep ".pdf" | cut -d "=" -f2 | grep "http" | grep -v google | sed 's/...$//' > links

  for url in $(cat links)
  do
    echo "Baixando arquivo $url"
    wget -q $url 
  done
  
  echo -e "\nColetando metadados..."
  exiftool *.pdf

fi

