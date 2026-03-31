#!/bin/bash

echo "I hope you remembered to run it with sudo!"

sudo apt update
sudo apt install -y ophcrack unzip wget

BASE_DIR="ophcrack/ophcrack_tables"
mkdir -p "$BASE_DIR"

install_vista_proba_free() {
    mkdir "$BASE_DIR/vista_proba_free"
    wget -O vista.zip "https://sourceforge.net/projects/ophcrack/files/tables/Vista%20proba%20free/vista_proba_free.zip/download"
    unzip vista.zip -d "$BASE_DIR/vista_proba_free"
    rm vista.zip
}

install_xp_special() {
    mkdir "$BASE_DIR/xp_special"
    files=(
        table0.start table0.index table0.bin
        table1.start table1.index table1.bin
        table2.start table2.index table2.bin
        table3.start table3.index table3.bin
    )

    for file in "${files[@]}"; do
        wget -c "https://sourceforge.net/projects/ophcrack/files/tables/XP%20special/$file" -P "$BASE_DIR/xp_special"
    done
}

install_vista_proba_free
install_xp_special

echo "Now, for xp_special (for example), run: ophcrack -t ophcrack/ophcrack_tables/xp_special -f hashes.txt"
echo "Once in ophcrack, hit \"Crack\" and pwn your passwords!"
