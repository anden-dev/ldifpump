#!/bin/bash


if [[ -f "$1" ]]; then
    flatLdif="$1"
    sed -e ':a;N;$!ba;s/\n/"; "/g' -e $'s/\\"\\"/\\n/g' -e 's/^\"//g' -e 's/\"$//g' $flatLdif | sed -e 's/^;//' | sed "s/^ $/\n/" | grep -v -e "passwordResetFailureCount" -e "pwdFailureCountInterval"
else
    echo "Please specify an LDIF to inflate"
fi

