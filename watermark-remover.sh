#!/bin/bash

file=$1
text=$2

pdftk $file output uncompressed.pdf uncompress
sed -e "/$text/g" < uncompressed.pdf > temp.pdf
pdftk temp.pdf output "$text$file" compress
rm temp.pdf uncompressed.pdf

exit 0
