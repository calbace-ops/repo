#!/bin/bash

usage() {
    echo "Usage ${0}"
    echo
    echo "has de ser root"
    echo "l'usari no és pot reptir"
    exit 1
}

#Script per crear un usuari

#primer comprovam si som l'usari root
if [[ ${UID} -ne 0 ]]
then
    usage
fi

read -p "Introdueix el nom d'usuari: " USER_NAME
