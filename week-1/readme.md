#  NÄDAL: 1  UrbanStyle andmete uurimine 

## Projekti eesmärk

UrbanStyle’i andmestikus oli vaja hinnata, kas kliendi-, müügi- ja tooteandmed sobivad müügi-, kampaania- ja kliendianalüüsiks.

Analüüsi käigus kontrolliti andmete mahtu, puuduvaid väärtusi, kategooriate ühtlust, asukohti, kanaleid ja müügitabeli loogikat.

## Andmemaastik

Analüüsis kasutati nelja põhiandmestikku.

1. Müük

Online-müük domineerib ja moodustab ligi 50% kogu müügist. See tähendab, et online-kanal on UrbanStyle’i müügianalüüsis keskne ning selle andmekvaliteet mõjutab otseselt kogu raporti usaldusväärsust.

Sales tabeli suurim probleem on 1 487 puuduvat kliendi-id väärtust. See piirab kliendipõhist analüüsi, sest osa müügist ei saa siduda konkreetse kliendiga.

Lisaks esines total_price veerus negatiivseid summasid. Need viitavad tõenäoliselt tagastustele või paranduskannetele ning tuleb müügitulu analüüsis eraldi käsitleda.

2. Kliendid

Klienditabelis on kokku 3 150 klienti ja 9 veergu.

Olulisemad tähelepanekud:
- vanim registreerimine on 02.01.2020
- uusim registreerimine on 27.02.2025
- e-maile on kokku 3 150, kuid unikaalseid e-maile on 2 640
- 380 kliendil puudub e-mail
- kõige rohkem kliente on Tallinnast: 1 238
- Tartust on 658 klienti
- Pärnust on 346 klienti

Puuduvad ja korduvad e-mailid mõjutavad otseturundust, kliendi tuvastamist ja kampaaniate mõõtmist.

3. Asukohad

Kliendid on pärit 12 linnast:

Jõhvi, Paide, Narva, Viljandi, Tallinn, Rakvere, Haapsalu, Valga, Pärnu, Kuressaare, Võru ja Tartu.

Suurim kvaliteediprobleem ei ole ainult puuduvates e-mailides. city veerus on 54 erinevat väärtust, kuigi tegelikke linnu on 12. See tähendab, et linnapõhiseid kampaaniaid ja müügianalüüsi ei saa teha enne asukohaväärtuste korrastamist.Tooted

4. Tooted
   
Toodete tabelis on 362 rida ja 9 veergu.

Toodete tabelis suuri üllatusi ei tuvastatud. Peamine paranduskoht on kategooriate ühtlustamine: väärtuse jalanõud asemel on soovitatav kasutada väärtust jalatsid.

See on väike kosmeetiline parandus, kuid aitab hoida kategooriapõhise analüüsi ühtlasena.

### Suurim üllatus

Kõige olulisem leid oli city veeru kvaliteediprobleem.

Andmetes on 12 tegelikku linna, kuid city veerus on 54 erinevat väärtust. See viitab kirjavigadele, erinevatele kirjaviisidele või ebastandardsetele sisestustele.

Selle mõju on praktiline: linnapõhised kampaaniad, piirkondlik müügianalüüs ja kliendisegmentide võrdlus annavad enne puhastamist vale tulemuse.

### Kanalid ja asukohad müügiandmetes

Müügikanalite ja asukohtade andmetes olulisi probleeme ei leitud. 
Kanali- ja asukohaväljadega oli mugav töötada. Soovitus on asendada NULL väärtus selgema tähendusega, näiteks e-pood, kui see tähistab online-müüki.

### Puuduvad andmed

- customer_id sales tabelis	1 487	müügitehingut ei saa siduda kliendiga
- e-mail customers tabelis	380	klienti ei saa kasutada e-maili kampaaniates
- city standardiseerimata väärtused	54 väärtust 12 linna kohta	linnapõhine analüüs ja kampaaniad on moonutatud
- 380 puuduva e-mailiga klienti moodustavad 12,1% kliendibaasist. See on piisavalt suur osakaal, et mõjutada kampaaniate katvust ja kliendiandmete kvaliteeti.

## Soovitused Toomasele
1. Korrasta e-mailid esimesena. E-mailide kvaliteet mõjutab otseturundust, kliendi tuvastamist ja korduvklientide analüüsi.

Puuduvad e-mailid tuleb märkida eraldi väärtusega või koguda uuesti kliendi järgmise kontakti käigus.

2. Standardiseeri linnanimed. city veerg tuleb puhastada enne linnapõhiseid kampaaniaid ja piirkondlikku müügianalüüsi.

Soovitatav on luua kinnitatud linnade nimekiri 12 väärtusega ning kaardistada kõik kirjavead ja alternatiivsed vormid nende alla.

3. Käsitle negatiivset total_price väärtust eraldi. Negatiivsed summad tuleb eraldada tavalisest müügist. Need on tõenäoliselt tagastused või parandused.

4. Paranda customer_id puudujäägid sales tabelis. 1 487 müügireal puudub kliendi-id. Need read tuleb siduda kliendiga juhul, kui seda saab teha e-maili, ostuaja, kanali või muu tunnuse kaudu.

5. Ühtlusta tootekategooriad. Tootekategooriates tuleks kasutada ühtset sõnastust. Väärtus jalanõud tuleks asendada väärtusega jalatsid.

## Tulemused

Analüüs andis UrbanStyle’ile selge ülevaate sellest, millised andmed sobivad kohe kasutamiseks ja millised vajavad puhastamist.

Olulisemad tulemused:

- sales tabelis on 15 234 rida ja 12 veergu
- customers tabelis on 3 150 rida ja 9 veergu
- products tabelis on 362 rida ja 9 veergu
- 1 487 müügireal puudub kliendi-id
- 380 kliendil puudub e-mail
- e-maile on 3 150, kuid unikaalseid e-maile on 2 640
- city veerus on 54 erinevat väärtust, kuigi tegelikke linnu on 12
- online-müük moodustab ligi 50% kogu müügist
- toodete tabelis suuri kvaliteediprobleeme ei tuvastatud
- kanali- ja asukohaväljades suuri probleeme ei esinenud

## Tööriistad

Analüüsi koostamiseks kasutati:

- Python
- pandas
- Jupyter Notebook
 

## Kokkuvõte

UrbanStyle’i andmestik on kasutatav, kuid enne täpsemat müügi- ja kliendianalüüsi tuleb puhastada kolm kriitilist kohta: puuduvad kliendi-id müügitabelis, puuduvad või korduvad e-mailid klienditabelis ning standardiseerimata linnanimed.

Kõige suurem praktiline risk on city veerus, kus 12 tegelikku linna on andmetes esindatud 54 erineva väärtusena. See takistab linnapõhiseid kampaaniaid ja piirkondlikku müügianalüüsi.
