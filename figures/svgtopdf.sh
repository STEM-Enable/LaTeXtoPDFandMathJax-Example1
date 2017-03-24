#!/bin/sh 

for i in $(ls *.svg); do
if [ ! -f $(basename "$i" .svg).pdf ] 
then
inkscape --without-gui --file=$i --export-pdf=$(basename "$i" .svg).pdf
else
echo "$i diagram already exists in PDF format"
fi
done
