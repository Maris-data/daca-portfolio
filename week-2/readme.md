#  NÄDAL: 2  UrbanStyle andmete puhastamine ja andmekvaliteedi koondraport

## Projekti eesmärk

UrbanStyle’i kliendi-, toote- ja müügiandmetes esines mitu andmekvaliteedi probleemi, mis moonutasid müügitulu, kliendianalüüsi ja tootevaliku hindamist.

Sales Analytics puhastas andmestiku ning koostas koondraporti, et tuvastada peamised riskid, mõõta nende mõju ja anda soovitused edasiseks tööks.

## Suurim avastus

- Andmestikus oli 5 116 duplikaatkirjet, mis paisutasid müügitulu kunstlikult.

- Pärast duplikaatide eemaldamist selgus, et tegelik müügitulu on ligikaudu 1,4 miljonit eurot madalam kui puhastamata andmestikus.

## Hinnaerinevused ja tagastused

Andmestikus tuvastati 664 hinnaebakõla, kus müügihind ei klappinud tootetabelis oleva hinnaga.

Sales tabelis oli lisaks 305 tagastust, mis olid kirjendatud negatiivse total_price väärtusena.

Need kirjed tuleb enne tuluanalüüsi eraldi käsitleda, sest muidu segunevad müük ja tagastused ühes mõõdikus.

## Puuduvad ja probleemsed andmed

Duplikaatsed tootenimed mõjutasid tooteanalüüsi kõige rohkem. Kokku tuvastati 12 probleemset toodet, mis moonutasid müügistatistikat ja raskendasid täpset inventuuri.

Hinna ebakõlad mõjutasid igapäevast tööd kõige otsesemalt. Suurim tuvastatud hinnaerinevus oli 2 810 eurot.

## Äriline mõju

Andmekvaliteedi probleemid mõjutasid kolme peamist valdkonda:
- Müügitulu analüüs
Duplikaadid paisutasid tulu ning andsid tegelikust müügist vale pildi.
- Kliendianalüüs
592 klienti olid andmebaasis, kuid ei olnud ostnud. See segment vajab eraldi käsitlust, sest tegemist on potentsiaalse müügivõimalusega.
- Tooteanalüüs
12 toodet ei olnud kordagi müüdud. Nende puhul tuleb kontrollida nähtavust, hinda, saadavust ja tooteandmete korrektsust.

<img width="607" height="230" alt="image" src="https://github.com/user-attachments/assets/094fa5cb-0767-4946-a73d-d1dd5454baae" />


## Soovitused Toomasele
1. Eemalda duplikaadid enne igat tuluanalüüsi. Duplikaadid mõjutasid müügitulu kõige rohkem. Analüüsides tuleb kasutada ainult puhastatud andmestikku.

2. Käsitle tagastusi eraldi. Negatiivse total_price väärtusega read tuleb eraldada tavalisest müügist. 

3. Kontrolli hinnaerinevusi. 664 hinnaebakõla vajavad täiendavat analüüsi. Eriti oluline on kontrollida, kas erinevused tulenevad kampaaniatest, tagastustest, sisestusvigadest või tootehinna muutustest.

4. Võta ühendust vaimklientidega. 592 klienti ei ole ostu teinud. Neile saab luua eraldi aktiveerimiskampaania, näiteks esimese ostu pakkumise või personaalse meeldetuletuse.

5. Kontrolli müümata tooteid. 12 toodet, mida pole kordagi müüdud, tuleb üle vaadata veebipoes ja sisemistes süsteemides.


## Olulisemad tulemused:
Puhastuse järel on UrbanStyle’il parem alus müügi-, kliendi- ja tooteanalüüsiks.
- tuvastati 5 116 duplikaatkirjet
- korrigeeritud müügitulu on 1,4 miljonit eurot madalam
- leiti 664 hinnaebakõla
- eraldati 305 tagastust
- tuvastati 592 ostuta klienti
- tuvastati 12 müümata toodet

## Tööriistad
Analüüsi ja andmete puhastamiseks kasutati:
- Python
- pandas
- Jupyter Notebook
- CSV-andmestikud
- andmekvaliteedi kontrollid
- duplikaatide tuvastamine
- hinnaerinevuste kontroll
- kliendi- ja tooteandmete võrdlus müügitabeliga
  
## Kokkuvõte
UrbanStyle’i andmestikus olid peamised probleemid duplikaadid, hinnaerinevused, tagastuste käsitlus, ostuta kliendid ja müümata tooted.

Kõige suurem mõju tuli duplikaatidest, mis paisutasid müügitulu 1,4 miljoni euro võrra. Edaspidi tuleb tuluanalüüs teha ainult puhastatud andmetel ning tagastused tuleb hoida tavalisest müügist eraldi.
