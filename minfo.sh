#!/bin/bash

# Verifica o argumento passado e executa o comando correspondente
if [ "$1" == "hostname" ]; then
    # Exibe o nome da máquina
    hostname
elif [ "$1" == "uptime" ]; then
    # Exibe o tempo de atividade do sistema
    uptime -p
elif [ "$1" == "disk" ]; then
    # Exibe o uso da partição "/"
    df -h /
elif [ "$1" == "all" ]; then
    # Exibe todas as informações
    hostname
    uptime -p
    df -h /
else
    # Caso o argumento não seja válido, exibe a mensagem de uso e sai com código 1
    echo "Uso: $0 {hostname|uptime|disk|all}"
    exit 1
fi
