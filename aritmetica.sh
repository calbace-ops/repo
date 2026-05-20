read -p "introdueix valor per x: " X
read -p "introdueix valor per y: " Y

echo "Has introduit ${X} i ${Y}"
SUMA=$((X+Y))
echo "${X}+${Y}=${SUMA}
RESTA=$((X-Y))
echo "${X}-${Y}=${RESTA}
PRODUCTE=$((X*Y))
echo "${X}*${Y}=${PRODUCTE}
DIVISIO=$(echo "scale=2; ${X}/${Y}" | bc)
echo "${X}/${Y}=${DIVISIO}
