
#!bin/bash

#es mostra l'script executat
echo "nom del script ${0}"

#mostram el PATH (ruta) I el filename del script

echo "el PATH: $(dirname ${0}) el fitxer seria $(basename ${0})"


#per determinar el número del paràmetre
NUMERO_DE_PARAMETRES=${#}

if [[ ${NUMERO_DE_PARAMETRES} -eq 0 ] ]
then
    echo"USAGE: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi

# ${*} muestra todos los parámetros en una sola palabra: "${1} ${2} ... ${n}"
echo "$*"
echo

# ${@} muestra los parámetros como palabras separadas: "${1}" "${2}" ... "${n}"
echo "$@"

# Bucle FOR para iterar los parámetros
for USER_NAME in "$@"
do
    PASSWORD=$(date +%s%N | sha256sum | head -c10)
    echo "${USER_NAME}:${PASSWORD}"
done
