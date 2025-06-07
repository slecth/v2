#!/bin/bash

read -p "Qual seu apontamento v2ray? ex: 5: " vaga

if [[ ! "$vaga" =~ ^[0-9]+$ ]]; then
    echo "Erro: Você deve inserir um número válido."
    exit 1
fi

sed -i "s|\"path\": \"/ws/\"|\"path\": \"/ws$vaga/\"|g" /etc/v2ray/config.json && systemctl restart v2ray

echo "Configuração alterada e V2Ray reiniciado!"
