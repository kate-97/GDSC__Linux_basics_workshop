# Osnovne komande u Linux komandnoj liniji

* ` echo <neki tekst> ` -- ispisuje poruku <neki tekst>
* ` clear` -- čisti sadržaj terminala (isto se postiže i sa ` CTRL + L`)
<br/><br/>
* `ls [opcija/e] [putanja]` -- izlistava sadrzaj na datoj putanji ili sadrzaj tekuceg direktorijuma ukoliko ne prosledimo putanju. Opcijama mozemo menjati nacin izlistavanja (nisu obavezne).
* `pwd` -- daje nam (apsolutnu) putanju do direktorijuma u kome se trenutno nalazimo. (tekuceg direktorijuma)
* `cd <putanja>` -- menjamo tekuci direktorijum tako da se pozicioniramo na direktorijum dat putanjom
<br/><br/>
* `touch <putanja>` -- na datoj putanji kreira prazan fajl.
* `mkdir <putanja>` -- na datoj putanji kreira prazan direktorijum.
* `rm [opcija/e] <putanja>` -- brise fajl na datoj putanji. Uz zadavanje opcije `-r` i putanje do direktorijuma rekurzivno se brise citav sadrzaj direktorijuma i on sam na kraju. Mozete pri tome dodati i opciju `-i` tako da vas za svaki fajl/direktorijum pita da li zelite da ga obrisete.
* `rmdir <putanja>` -- brise direktorijum na datoj putanji. Napomena: radi samo za prazan direktorijum.
* `mv <pocetna putanja> <zeljena putanja>` -- inicijalno sluzi za premestanje fajla sa pocetne na zeljenu putanju. Takodje, koristi se i za preimenovanje nekog fajla/direktorijuma. (u putanjama izmenite samo deo sa nazivom)
* `cp <prva putanja> <nova putanja>` -- kopira fajl/direktorijum sa prve putanje na novu. (pri tome bez brisanja na prvoj putanji)
<br/><br/>
### Precice:
`↑` -- Njom mozete naci citavu komandu koju ste vec ukucavali.
`↓` -- Slicno kao taster na gore, samo sto ide unapred po istoriji.
`tab` -- ako nju kliknemo dok ukucavamo neku putanju, pokusace da nam je dopuni.
`tab` na slican nacin moze da se iskoristi i za dopunjavanje komandi i programa koje pokrecemo u terminalu.
### Man strane (Manual pages)
`man <komanda/funkcija>` -- dobijamo man stranu za datu komandu/funkciju
Dodatno, za pretragu na man strani mozete kucati '/' i iza nje rec koju zelite da nadjete. Sa `man -k <kljucna rec>` mozete naci man stranu po kljucnoj reci.
Iz man strane izlazite pritiskom na `q`.
### Dzokeri
`*` -- oznacava 0 ili proizvoljno mnogo simbola. (npr. sa m* bi uzimali sve fajlove/direktorijume ciji naziv pocinje na slovo m)
`?` -- oznacava tacni jedan simbol.

### Komande - filteri za datoteke
`cat <putanja>` -- ispisuje sadrzaj datoteke na datoj putanji
`less <putanja>` -- omogucava pregled sadrzaja datoteke. Iz njega, kao iz mana, izlazimo pritiskom na `q`.
`head <putanja>` -- ispisuje prvih nekoliko linija nekog fajla. Broj linija mozemo zadavati uz zadavanje opcije `-n` i zeljenog broja linija.
`tail <putanja` -- ispisuje poslednjih nekoliko linija nekog fajla. Isto kao i kod komande `head` mozemo zadati zeljeni broj linija.
`wc [opcija/e] <putanja>`-- ukoliko se ne zada nijedna opcija, ispisace nam, redom, broj linija, broj reci i ukupan broj karaktera u fajlu. Opcijama mozemo izabrati sta zelimo da nam se od ova 3 broja prikaze u terminalu.
`nl <putanja>` -- prikazuje nam sadrzaj fajla na datoj putanji uz navedene brojeve uz linije.
`sort [opcija/e] <putanja>` -- sortira linije fajla na datoj putanji. Bez zadavanja ikakve opcije leksikografski rastuce ce sortirati linije.
`sed <izraz> <putanja>` -- zadavanjem izraza u formi 's/rec/druga_rec/g' prikazuje sadrzaj fajla na datoj putanji gde je svako pojavljivanje reci rec zamenjeno recju druga_rec. Postoje i drugi nacini upotrebe.
### Pajpovanje i redirekcija
`prva komanda | druga komanda` -- izlaz izvrsavanja prve komande se koristi u drugoj komandi.
`komanda > putanja` -- izlaz izvrsavanja komande se preusmerava u fajl na datoj putanji
`komanda < putanja` -- ulaz za neku komandu ili program se preusmerava na fajl na datoj putanji
`komanda 2> putanja` -- greske pri izvrsavanju neke komande (ako ih ima) ce se ispisivati u fajlu na datoj putanji
