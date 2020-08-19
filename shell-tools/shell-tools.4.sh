#!/usr/bin/env bash
mkdir folder{1..5}
touch folder{1..5}/{1..5}\ content.html

# `-print0` uses a null character to split file names, and `-0` uses it as delimiter
find . -name "*.html" -print0 | xargs -0 tar -czf html.tar.gz

mkdir extracted
tar -xzf html.tar.gz -C extracted
