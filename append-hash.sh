#!/bin/bash
#
# Append date and short commit hash to filename for all pdfs.

date=$(date +%b-%y)
commitHash=$(git rev-parse --short HEAD)

for name in *.pdf
do
    mv $name ${name%.*}-$date-$commitHash.pdf
done
