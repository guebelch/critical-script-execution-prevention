#!/bin/bash
ENV=$1
CODE=$2

if [[ "$ENV" = "prod" ]]; then
  dayNumber=$(date +"%d")
  hourNumber=$(date +"%H")
  minuteNumber=$(date +"%M")
  correctCode=$dayNumber$hourNumber$minuteNumber

  if ! [[ "$CODE" = "$correctCode" ]]; then
    echo "FAIL: The code is not correct. Must be day number in the month, hour number and minute number".
    echo "At the time you execute the command the code was: $correctCode".
    exit 0
  fi
  echo "Code ok"
fi

#START OF YOUR CRITICAL SCRIPT
