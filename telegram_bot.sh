
source $HOME/.telegram_bot/config

URL="https://api.telegram.org/bot$TOKEN/getupdates"

curl -X GET $URL
