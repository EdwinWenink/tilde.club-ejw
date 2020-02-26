#!/bin/bash

declare -a arr=("beavis.zen" "elephant" "skeleton" "surgery")

arrayLength=${#arr[@]}

randomIndex=$((RANDOM%=$arrayLength))

output=$(cowsay -f ${arr[$randomIndex]} $(fortune)!)

TARGET=~/public_html/fortunecookie.md

echo "# Fortune cookie\n" > $TARGET
echo "@$(date +%s)\n" >> $TARGET
echo "<pre>" >> $TARGET
echo "$output" >> $TARGET 
echo "</pre>" >> $TARGET
echo "Generated with <a href='https://tilde.club/~ejw/scripts/randomcowsay.sh'>randomcowsay.sh</a>." >> $TARGET
