#!/bin/bash

# Skripta koja za vas pokrece skriptu skini_i_unzipuj.sh i oslobadja vas vecine posla.
# Dovoljno je da zadate sajt sa koga skidate zip-ove (to je prvi nepromenljivi deo URL-a), i ekstenziju koja je ista kod svih datoteka. (npr. .zip da ga ne pisete svaki put)
prvi_nepromenljivi_deo_URL="http://poincare.matf.bg.ac.rs/~vladimir_kuzmanovic/OS3i/"
nepromenljivi_sufiks_URL="v.zip"


# Na kraju vam za ovu skriptu ostaje samo da, redom, zadate promenljivi deo datoteka (npr. 1 za 1.zip, ako su zipovi na sajtu nazvani po brojevima) i prefiks za zeljeno preimenovanje. (ako vam ne treba, samo uklonite iz naredne linije $2)
./skini_i_unzipuj.sh $prvi_nepromenljivi_deo_URL $1 $nepromenljivi_sufiks_URL $2

