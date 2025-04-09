#!/bin/bash

FILES_DIR="./files"

for filepath in "$FILES_DIR"/*; do
    filename=$(basename "$filepath")
    first_letter=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')
    if [[ "$first_letter" =~ [a-z] ]]; then
        mv "$filepath" "./$first_letter/"
    fi
done
