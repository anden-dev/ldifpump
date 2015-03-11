# deflate an ldif

## transform from
entry id
entry attribute1
entry attribute2

entry id2
entry attribute1
entry attribute2

## to

"entry id" "entry attribute1" "entry attrbute2"



# inflate an ldif

transform back


# but why

grep ldif backups... for example: which entries have attribute2 == foobar? 
