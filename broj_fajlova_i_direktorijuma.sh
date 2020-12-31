#!/bin/zsh

# Primer sa upotrebom 'pajp-operatora'.
# Izvrsavamo komandu 'ls -l' koja ce u svakoj liniji da nam ispise detaljne informacije o svakom fajlu/direktorijumu unutar tekuceg direktorijuma (tj. izlistavanje sa detaljima). Izlaz te komande koristimo u komandi 'wc' (to nam radi pajpovanje). wc ce nam sa odgovarajucom opcijom prebrojati broj linija u ovom prikazu.

# Zapravo, time efektivno dobijamo ukupan broj fajlova i direktorijuma u tekucem direktorijumu. (bez sakrivenih fajlova i direktorijuma)

ukupan_broj=`ls -l | wc -l` 
echo "Broj linija ovde je" $ukupan_broj


