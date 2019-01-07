#!/bin/bash
for i in $@; do
    t=`mktemp`.png
    cp $i $t
    pngcrush -reduce -bail -ow $t
    mv $t $i
done
