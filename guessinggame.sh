#!/usr/bin/env bash

echo "[Welcome to Guessing Game v0.0]"
echo "*************************************************"
echo "*   Guess the number of files in this folder!   *"
echo "*************************************************"

function getGuess {
	echo "Please enter your best guess:"
	read guess
    files=$(ls -1 | wc -l)
}

getGuess
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	getGuess
done

echo "Well done! It is the correct answer on the folder --" $DIR ", here is the detail of the files:"
echo "---" && ls -l 
