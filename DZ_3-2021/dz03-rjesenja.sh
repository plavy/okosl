#!/usr/bin/bash

#!#!#!#!#!#!#
# 1. Ispisite sve direktorije u /usr/share ciji naziv zapocinje s gtk. (0.5)
# (potrebno rijesiti koristeci zamjenske znakove)

ls -d /usr/share/gtk*

#!#!#!#!#!#!#
# 2. Ispisite sve direktorije u /usr/share koji u nazivu sadrze barem dvije
# znamenke. (0.5)
# (potrebno rijesiti koristeci zamjenske znakove)

ls -d /usr/share/*[0-9]*[0-9]*

#!#!#!#!#!#!#
# 3. Pronadite rijeci koje sadrze znamenke (ako ih ima) (0.7)

grep -e "[0-9]" /usr/share/dict/words

#!#!#!#!#!#!#
# 4. Pronadite rijeci koje pocinju slovom i, a u sredini rijeci sadrze veliko
# slovo. (0.7)
# Napomena: Radi jednostavnosti, sredina rijeci je definirana kao dio rijeci
# izmedu prvog i zadnjeg znaka.

grep -e "^i.*[A-Z].+$" /usr/share/dict/words

#!#!#!#!#!#!#
# 5. Pronadite rijeci koje ne sadrze samoglasnike. (ni velike ni male) (0.7).
# Napomena: Samoglasnici su aeiou. Samoglasnici iz drugih jezika se ne
# ubrajaju.

grep -e "^[^AEIOUaeiuo]*$" /usr/share/dict/words

#!#!#!#!#!#!#
# 6. Pronadite rijeci u kojima se barem dva samoglasnika pojavljuju jedan za
# drugim. (0.7)

grep -e "[AEIOUaeiou][AEIOUaeiou]+" /usr/share/dict/words

#!#!#!#!#!#!#
# 7. Bez koristenja naredbe wc, prebrojite rijeci koje zavrsavaju na ening.
# (0.7)

grep -ce "ening$" /usr/share/dict/words

#!#!#!#!#!#!#
# 8. Bez koristenja naredbe wc, prebrojite rijeci koje zavrsavaju na 's. (0.7)

grep -ce "'s$" /usr/share/dict/words

#!#!#!#!#!#!#
# 9. Bez koristenja naredbe wc, prebrojite rijeci koje zavrsavaju na veliko
# slovo. (0.7)

grep -ce "[A-Z]$" /usr/share/dict/words

#!#!#!#!#!#!#
# 10. Svim rijecima koje zavrsavaju na 's uklonite znak '. (0.7)

sed -r "s/'s$/s/" /usr/share/dict/words

#!#!#!#!#!#!#
# 11. Svako pojavljivanje niza word prenesite na pocetak rijeci u kojoj se niz
# nalazi. (0.7)

sed -r "s/(.*)word(.*)/word\1\2/" /usr/share/dict/words

#!#!#!#!#!#!#
# 12. Svim rijecima koje pocinju na veliko slovo prvo slovo promijenite u malo,
# a posljednje promijenite u veliko. (0.7)
# Primjer: Iowa -> iowA

sed -r "s/^([A-Z])(.*)(.)$/\L\1\E\2\U\3/" /usr/share/dict/words

#!#!#!#!#!#!#
