#!/bin/bash

url=$1
output=$2

if [[ ! -d "$url" ]]; then
    mkdir $url
fi

cd ~/bass
touch ~/$url/resolvers.txt
python3 bass.py -d $url -o ~/$url/resolvers.txt

assetfinder -subs-only $url | sort -u | tee -a ~/$url/subs.txt

cd ~/massscan/bin
./massscan -r ~/$url/resolvers.txt -o ~/$url/subs/txt -w $output
