#!/bin/bash

# Napomena: Ako vam je konfuzan deo sa sastavljanjem URL-a sa koga skidamo zipove, pogledajte skini_primer.sh da bi vam kroz upotrebu bilo jasnije.

# Kreiranje URL-a
url_base=$1   #Nepromenljivi deo URL-a.
url_changeable=$2 #Promenljivi deo URL-a
url_extension=$3  #Nepromenljivi sufiks URL-a (ukoliko ga ima, inace zadajte samo '')
url=$url_base$url_changeable$url_extension # Nadovezemo sve ove delove URL-a

# Provera da li nam je URL dobar.
# echo "URL is " $url

# Preuzimanje sadrzaja sa datog URL-a/
wget $url

# Otpakujemo ga.
unzip $url_changeable"v.zip"

# Preimenujemo redom datoteke sa ekstenzijom .c.
# (Ukoliko to zelite za neku drugu ekstenziju, samo je promenite u for petlji, npr. na *.py ako je .py ili *.java ako je .java, itd.
# Ovo je dato samo radi ilustracije. Ako vam nije potrebno, ili vas zbunjuje, samo zakomentarisite sve na dalje. (sa # u svakoj liniji)
# Bez ovoga ce samo automatski da preuzme i da unzipuje za vas, sto je i to veliki deo posla.
# for a simplicity we assume C-files are our desired files

# Zeljeni prefiks ide kao 4. argument.
pref=$4

# Za svaki fajl sa sufiksom .c (ovo dobijamo dzokerom) vrsi preimenovanje tako sto dodaje prefiks $pref na naziv.
for file in *.c; do
   mv "$file" "$pref$file";
done 
