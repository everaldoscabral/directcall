#!/bin/bash
#Usuário
client_id="USUARIO"

#Senha
client_secret="SENHA"

access_token=$(curl -s -X POST "https://api.directcallsoft.com/request_token" --data "client_id="$client_id"&client_secret="$client_secret | sed -n -e '/"access_token":/ s/^.*"\(.*\)".*/\1/p')
echo -e "\nAPI DirectCall . Requisitando ACCESS_TOKEN: " ${access_token}
echo -e "\nEnviando SMS."

retorno=$(curl -s -X POST "https://api.directcallsoft.com/sms/send" --data "access_token=${access_token}&origem=$1&destino=$1&texto=$2:$3&tipo=texto" | sed -n -e '/"msg":/ s/^.*"\(.*\)".*/\1/p')
echo -e "\nRetorno:"${retorno}
echo -e "\n"
