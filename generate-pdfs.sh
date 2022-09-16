#!/bin/bash

date=$(date +%b-%Y)
commitHash=$(git rev-parse --short HEAD)

rm *.pdf

latexmk -pdf

for file in *.pdf
do
    mv $file desimoni-${file%.*}-$date-$commitHash.pdf
done

latexmk -c
