#!/bin/bash
for i in $@; do
    pngcrush -reduce -brute -ow $i `mktmp`
done
