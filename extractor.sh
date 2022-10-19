#!/bin/bash

function extractor {
    local file=$1
    if [ -f "$file" ]; then # if file exists
        case $file in
            *.tar) tar -xvf "$file" ;;
            *.tgz) tar -xzf "$file" ;;
            *.tar.gz) tar -xzf "$file" ;;
            *.tar.bz2) tar-xjf "$file" ;;
            *.tbz2) tar -xjf "$file" ;;
            *.bz2) bunzip2 "$file" ;;
            *.rar) rar x "$file" ;;
            *.gz) gunzip "$file" ;;
            *.zip) unzip "$file" ;;
            *.Z) uncompress "$file" ;;
            *.7z) 7za x "$file" ;;
            *.xz) xz -d "$file" ;;
            *) echo "File $1 is not recognized archive."
                exit 1 ;;
        esac
        current_directory=`pwd`
        echo "File extract with success in ${current_directory}/"
    else
        echo "File $file does not exists"
    fi
}

function help {
    echo "Usage:"
    printf "./extractor.sh <file|directory>\n"
}

if [ -e "$1" ]; then # if file exists
    file=$1
    extractor $file
elif [ -z "$1" ]; then # if the length of string is not zero
    help
elif [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    help
else
    echo "Type --help for help"
fi
