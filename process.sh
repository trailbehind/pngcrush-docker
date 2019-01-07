#!/bin/bash
for i in $@; do
    pngcrush -reduce -bail -ow $i `mktemp`
done
