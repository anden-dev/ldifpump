#!/bin/bash


if [[ -f "$1" ]]; then
    originalLdif="$1"
    sed  -e 's/^$/; /' -e 's/^/"/' -e 's/$/"/' -e 's/"; "/\'$'\n/g' $originalLdif | perl -p -e 's/\"\n/"/'
else
    echo "Please specify an LDIF to deflate"
fi

