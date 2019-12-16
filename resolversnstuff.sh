#!/bin/bash

url=$1
output=$2

if [[ ! -d "$url" ]]; then
    mkdir $url
fi

cd ~/bass
touch ~/$url/bass_output.txt
python3 bass.py -d $url -o ~/$url/bass_output.txt


massdns () {
    ./massdns/bin/massdns
}
