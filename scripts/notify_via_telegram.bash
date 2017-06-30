#!/usr/bin/env bash

DIR="$(dirname "$0")"
USAGE="script.sh 'message' [chat_id]"
CONFIG_PATH=$DIR/.telegram_config

if [ ! -f $CONFIG_PATH ]; then
    echo "File .telegram_config not found!"
    exit
else
    source $CONFIG_PATH
fi

if [ $2 ]; then
    CHAT_ID=$2
elif [ -z "$CHAT_ID" ] && [ -z "$2" ] ; then
    echo "No chat ID specified!"
    echo $USAGE
    exit
fi

if [ ! -z "$1" ]; then
    ENDPOINT="https://api.telegram.org/bot"$TOKEN"/sendMessage"
	response=`curl -s -X POST $ENDPOINT -F chat_id="$CHAT_ID" -F text="$1"`
	echo "Message sent! Here's Telegram's response:"
    echo $response
else
	echo "No message specified!"
    echo $USAGE
fi
