#!/bin/bash
for i in $@; do
    pngcrush -reduce -brute -bail -ow $i `mktmp`
done
