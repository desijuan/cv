#!/bin/bash

date=$(date +%b-%Y)
commitHash=$(git rev-parse --short HEAD)

git restore cv-{en,es,pt}.tex

rm *.pdf

latexmk -pdf

for file in cv-{en,es,pt}.pdf
do
    mv $file desimoni-${file%.*}-$date-$commitHash.pdf
done

latexmk -c
