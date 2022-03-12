#!/bin/bash
echo -n "Upiši godinu za koju te zanima koliko puta se dogodio petak 13.: "
read godina;
petkovi=$( ncal ${godina} | grep "^pe" | grep -o "13" | wc -l )
echo "U godini ${godina}. petak 13. dogodio se ${petkovi} puta."
