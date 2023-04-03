#!/bin/bash
echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "indo para o diretorio tmp"
cd /tmp
echo "Fazendo o download"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "descompactando"
unzip main.zip
echo "Entrar no diretorio"
cd linux-site-dio-main
echo "copiando o arquivo de forma recursiva para a pasta var/www/html"
cp -R */var/www/html/
