#!/bin/bash

head WELCOME
# Checking password
read -p "Enter password: " PASSWORD

if [[ "$PASSWORD" != "1" ]]; then
    echo "Wrong password. Transfer 2BTC to my wallet and receive it"
    exit 1
fi

# Selecting program
read -p "Select program (folderMachine/theCopir/processKiller/cleanup): " PROGRAM

theCopir() {
    echo "Welcome to THE TXT COPIR. It was made to copy txt files between universes"

    read -p "Do you want to move or copy files (mv/cp): " DECISION

    mkdir the_backup

    for file_path in $(find . -maxdepth 1 -name "*.txt"); do
        if [[ "$DECISION" == "mv" ]]; then
            mv "$file_path" "the_backup/$file_path.bak"
        elif [[ "$DECISION" == "cp" ]]; then
            cp "$file_path" "the_backup/$file_path.bak"
        else
            echo "Wrong decision"
        fi
    done
    echo "Done"
    exit 0
}

processKiller() {
    echo "This is a process killer. You can kill enemies like in CS: GO"

    ps
    read -p "Enter PID you wanna kill: " PID
    kill -9 $PID

    echo "+\$1500: For killing your enemy with knife"
    exit 0
}

folderMachine() {
    echo "It will create several folders with text file with your input"

    echo "Write text and then press Ctrl+C"

    read -p "Enter text to write everywhere: " TEXT_DATA
    read -p "Enter folders count (>=4): " COUNT

    if (($COUNT <= 4)); then
        echo "Too few folders. Try again with more than 4 folders"
        exit 1
    fi

    echo "Creating..."

    for i in $(seq 1 $COUNT); do
        mkdir "lorem$i"
        pushd "lorem$i" >>/dev/null

        touch "text.txt"
        echo "${TEXT_DATA}" >"text.txt"

        popd >>/dev/null
    done

    echo "Done"
    exit 0
}

cleanup() {
    for FOLDER_TO_REMOVE in $(ls | grep "^lorem"); do
        rm -rf $FOLDER_TO_REMOVE
    done

    rm -rf the_backup

    echo "Done"
    exit 0
}

if [[ "$PROGRAM" == "folderMachine" ]]; then
    folderMachine
fi
if [[ "$PROGRAM" == "theCopir" ]]; then
    theCopir
fi
if [[ "$PROGRAM" == "processKiller" ]]; then
    processKiller
fi
if [[ "$PROGRAM" == "cleanup" ]]; then
    cleanup
fi

echo "Program not found: ${PROGRAM}"

exit 1

# find . -name text.txt
# find . -name text.*

# find . -name text.*
# wc FILE - prints number of lines, words count and byte count
# head/tail FILE - reads first/last 10 lines of a file

# file FILE - detects extension of a file. eg, Determine if file is a Bash script even if file named 'a.jpg'
