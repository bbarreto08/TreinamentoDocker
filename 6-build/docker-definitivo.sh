#!/bin/sh

curl --url https://www.google.com.br -o /home/index.html

echo "Acesso ao google efetuado"

sleep 4

cat /home/index.html

sleep 4

echo "Finalizado com Sucesso"