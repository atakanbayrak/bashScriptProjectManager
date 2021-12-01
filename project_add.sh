#!/bin/bash

cd "project_$1";
cd include/

echo '#ifndef  '"$1"'_H_
#define '"$1"'_H_

// Class declaration goes here

#endif // '"$1"'_H_' > "$1".h

cd ..
cd src/

echo '#include "'"$1".h"'"' > $1.c
