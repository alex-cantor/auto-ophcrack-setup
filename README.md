# auto-ophcrack-setup
Automatically pulls files for popular ophcrack tables

## Usage

To install
```bash
wget https://raw.githubusercontent.com/alex-cantor/auto-ophcrack-setup/refs/heads/main/ophcracker.sh -O ophcracker.sh
chmod +x ophcracker.sh
./ophcracker.sh
```

Then, once installed, you can run ophcrack on your favorite tables!
```bash
ophcrack -t ophcrack/ophcrack_tables/xp_special -f hashes.txt
```
