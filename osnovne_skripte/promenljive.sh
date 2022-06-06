#!/bin/zsh

# Primer sa koriscenjem promenljivih u skripti.
# BITNO: Pri inicijalizaciji NE SME biti razmak oko '='.
x=5
y=7

# Promenljive mozemo sabirati, mnoziti, oduzimati, itd.
# Pri upotrebi promenljivih uvek koristimo '$' u prefiksu.
echo "Proizvod promenljivih"
echo $x * $y
echo "/n/n"

# Argumenti se zadaju pri pokretanju skripte, posle navodjenja imena skripte, naravno, medjusobno ih odvajajuci sa razmakom.
# Primer pokretanja: ./promenljive prvi_argument drugi_argument
echo "Argumenti komandne linije:"
echo $0
echo $1

# Mozemo da vidimo i ukupan broj datih argumenata:
echo "\n\nBroj argumenata:\n"
echo $#

# Mozemo i sve njih prikazati:
echo "\n\n I svi dati argumenti u komandnoj liniji: \n"
echo $*

# Takodje imamo i promenljive u samom sistemu.
# echo $PATH
echo $SHELL
echo $RANDOM


