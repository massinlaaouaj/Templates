#!/bin/bash

#Compare the contents of 2 dirs. Show only 2 columns, each for files unique to the directory.

clear

echo "+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
|C|O|M|P|A|R|E|T|W|O|D|I|R|E|C|T|O|R|I|E|S|
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

echo ""

read -e -p "Write the first directory to compare (DIR1): " DIR1

read -e -p "Write the second directory to compare (DIR2): " DIR2

clear

echo "DIR1 | DIR2"

comm -3 <(ls $DIR1) <(ls $DIR2)