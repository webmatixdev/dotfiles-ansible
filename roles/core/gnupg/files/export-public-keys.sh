## usage: ./export-public-keys.sh [output file] [identity]

gpg --export --export-options backup --output $1 $2
