#!/bin/bash
echo "insert directory current name:"
read olddir
echo "do you want to change this name? [y/n]"
read chname
echo "insert directory current location:"
read olddirpath

newdir="esame_abinfo_bresciani"
old="$olddirpath/$olddir"

if [ "$chname" = "n" ] ; then
    if [ ! -d "$newdir" ]; then
        mkdir -v $newdir
    fi
    cp -r -u $old $newdir
    echo "data has been copied in ${newdir}"
else
    echo "insert new name:"
    read newname
    if [ ! -d "$newdir" ]; then
        mkdir -v $newdir
    fi
    cp -r -u $old $newdir
    nold="$newdir/$olddir"
    nnew="$newdir/$newname"
    mv $nold $nnew
    echo "${newname} has been copied in ${newdir}"
fi
