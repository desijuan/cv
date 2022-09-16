#!/bin/bash

date=$(date +%b-%Y)
commitHash=$(git rev-parse --short HEAD)

latexmk -pdf

for name in *.pdf
do
    mv $name desimoni-${name%.*}-$date-$commitHash.pdf
done

latexmk -c
