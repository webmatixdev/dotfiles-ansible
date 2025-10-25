## usage: ./export-secret-keys.sh [output file] [identity]

gpg --export-secret-keys --export-options backup --output $1 $2
