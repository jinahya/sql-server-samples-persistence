#!/bin/sh
INPUT_FILE="_links.txt"

while IFS= read -r url; do

    if [[ -z "$url" || "$url" =~ ^# ]]; then
        continue
    fi

    filename=$(basename "$url")
    if [ ! -f "$filename" ]; then
        curl -O -L "$url"
    fi

done < "$INPUT_FILE"

