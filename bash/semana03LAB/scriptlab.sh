#!/bin/bash

for porta in {13,37,30000,3000};
do
  hping3 -S -p $porta -c 1 $1 -q >/dev/null 2>&1
done

hping3 -S -p 1337 -c 1 $1
