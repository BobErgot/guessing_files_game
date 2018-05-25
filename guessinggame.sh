#!/usr/bin/env bash
# File: guessinggame.sh

function game {
local ls_no=$( ls | wc -l )
local flag=0
local distance 
local check
while [[ flag -eq 0 ]]
do
	echo "Guess a number:"
	read response
	if [[ $response =~ ^[0-9]+$ ]] && [[ $response -eq $ls_no ]]
	then
		echo "Congratulations!"
		let flag=1
	elif [[ $response =~ ^[0-9]+$ ]] && [[ $response -lt $ls_no ]]
	then
                echo "Low"
	elif [[ $response =~ ^[0-9]+$ ]] && [[ $response -gt $ls_no ]]
	then
		echo "High"
	else
		echo "Wrong input"
	fi

done
}
game

