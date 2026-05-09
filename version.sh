#!/bin/sh

echo -n '#let wersja = "'
./gitVersion.sh
echo '"'

echo -n '#let data = "'
LC_ALL=pl_PL.UTF-8 date +'%e %B %Y r.' | sed 's/^ //' | tr -d '\n'
echo '"'

echo -n '#let rok = "'
LC_ALL=pl_PL.UTF-8 date +'%Y' | tr -d '\n'
echo '"'