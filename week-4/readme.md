### Nädal 4 andmete agregeerimine ja müügiandmete analüüs

## Projekti fookus

Nädal 4 keskendus andmete agregeerimisele ja äriliste KPI-de arvutamisele. Eesmärk oli kasutada SQL-i, et koondada müügiandmed kategooriate, klientide ja ajaperioodide lõikes ning muuta tehnilised päringutulemused ärilisteks järeldusteks.

Analüüsi keskne küsimus oli: millised tootekategooriad ja kliendigrupid loovad UrbanStyle’i müügis suurimat väärtust ning milliseid otsuseid saab nende andmete põhjal teha.

## Kasutatud SQL-i teemad

Nädala jooksul kasutati järgmisi SQL-i võtteid:

- agregaatfunktsioonid: `COUNT`, `AVG`, `MIN`, `MAX`, `SUM`;
- andmete filtreerimine `WHERE` ja `HAVING` tingimustega;
- tulemuste grupeerimine `GROUP BY` abil;
- CTE vahetabelid keerukamate päringute lihtsustamiseks;
- aknafunktsioonid kategooriate ja klientide võrdlemiseks;
- äriliste KPI-de arvutamine müügimahu, käibe ja kliendiväärtuse põhjal.

## Minu roll: müügiandmete analüüs

Minu ülesanne oli analüüsida UrbanStyle’i müügiandmeid tootekategooriate kaupa. Keskendusin sellele, millised kategooriad annavad suurima müügimahu, millised on kõige efektiivsemad ühe toote kohta ning millised kategooriad vajavad ärilist tähelepanu.

Analüüsis vaatasin eelkõige kolme mõõdikut:

1. müüdud ühikute koguarv;
2. kategooria osakaal kogumüügist;
3. keskmine müük ühe toote kohta.

## Peamised tulemused kategooriate lõikes

### Meeste riided

Meeste riided olid suurima müügimahuga kategooria. Kokku müüdi **4121 ühikut**, mis moodustab ligikaudu **22,5% kogu vaadeldud müügist**.

See näitab, et meeste riided on UrbanStyle’i müügis tugev põhikategooria. Kategooria vajab laoseisu jälgimist, sest suur müügimaht tähendab ka suuremat riski populaarsete toodete otsalõppemiseks.

### Lasteriided

Lasteriided olid kõige efektiivsem kategooria ühe toote kohta. Kokku müüdi **3686 ühikut**, kuid keskmine müük ühe toote kohta oli **54,21 ühikut**, mis oli kõigist kategooriatest kõrgeim.

See tähendab, et lasteriiete sortiment töötab hästi: väiksema kogumahu juures suudavad üksikud tooted müüa väga tugevalt.

### Jalanõud

Jalanõud olid üks tugevamaid kategooriaid nii müügimahu kui ka käibe poolest. Kokku müüdi **3737 ühikut**, mis moodustab ligikaudu **20,4% kogumüügist**. Keskmine müük ühe toote kohta oli **52,63 ühikut**.

Oluline leid oli see, et müüdud ühikute arvult juhivad meeste riided, kuid kogumüügi summa järgi juhivad jalanõud. See viitab kõrgemale hinnatasemele või suuremale ostukorvi väärtusele.

### Naisteriided

Naisteriideid müüdi kokku **3604 ühikut** ja keskmine müük ühe toote kohta oli **53,00 ühikut**.

See näitab, et kategooria on tasakaalus: kogumaht on tugev ja tooted müüvad keskmiselt hästi. Naisteriided ei ole kõige suurema mahuga kategooria, kuid tulemused on stabiilsed.

### Aksessuaarid

Aksessuaarid jäid kogumüügi poolest teistest kategooriatest maha. Kokku müüdi **3231 ühikut**, mis moodustab ligikaudu **17,6% kogumüügist**.

Keskmine müük ühe toote kohta oli siiski **52,11 ühikut**, seega probleem ei ole toodete efektiivsuses. Pigem viitab tulemus sellele, et kategooria kogumaht on väiksem: valik, nähtavus või turundus ei too piisavalt müüki.

## Olulisemad ärilised leiud

- Müüdud ühikute arvult on esikohal meeste riided.
- Kogumüügi summa järgi juhivad jalanõud.
- Lasteriided on kõige efektiivsem kategooria ühe toote kohta.
- Aksessuaarid on väikseima kogumüügiga kategooria, kuigi ühe toote keskmine müük on korralik.
- 2024 aasta käive kahekordistus.
- VIP-kliente tuvastati **936**.
- VIP-kliendid tõid ligikaudu **1,8 miljonit** käivet.
- Lasteriietel on madalam käive, kuigi ühikupõhine efektiivsus on tugev.
- Laos tasub teha inventuur ja tellida juurde tugeva müügiga tooteid.

## Ettepanekud

### 1. Arendada meeste riiete kategooriat

Meeste riided annavad suurima müügimahu, seega on see kategooria üks olulisemaid kasvuallikaid. Selle kategooria puhul tasub jälgida:

- laoseisu;
- enim müüdud tooteid;
- suuruste saadavust;
- kordusostude osakaalu;
- hooajalisi müügimustreid.

Suur müügimaht tähendab, et isegi väike hinnastuse, nähtavuse või laoseisu parandus võib anda märgatava mõju.

### 2. Kasutada lasteriiete efektiivsust paremini ära

Lasteriided näitavad parimat tulemust ühe toote kohta. See tähendab, et olemasolev sortiment müüb hästi, kuid kogukäive jääb madalamaks.

Selle kategooria puhul tasub testida:

- valiku laiendamist;
- populaarsete toodete juurde tellimist;
- komplektpakkumisi;
- hooajalisi kampaaniaid;
- nähtavuse suurendamist e-poes või müügikanalites.

### 3. Hoida jalanõud prioriteetse kategooriana

Jalanõud on tugev kategooria, sest ühikuline müük on kõrge ja kogumüügi summa järgi on kategooria esikohal. See teeb jalanõudest olulise käibeveduri.

Selle kategooria puhul on oluline jälgida marginaali, laoseisu ja populaarsete mudelite saadavust.

### 4. Vaadata üle aksessuaaride kategooria

Aksessuaaride kogumüük on kõige madalam, kuid keskmine müük ühe toote kohta ei ole nõrk. See tähendab, et kategoorias on potentsiaali.

Parandada saab eelkõige:

- tootevalikut;
- toodete nähtavust;
- ristmüüki teiste kategooriatega;
- kampaaniate sidumist riiete ja jalanõudega;
- lisasoovitusi ostukorvis.

## KPI-d, mida analüüsis kasutada

| KPI | Mida see näitab |
|---|---|
| Müüdud ühikute arv | Kategooria kogumüük mahus |
| Müügi osakaal | Kategooria tähtsus kogumüügis |
| Keskmine müük ühe toote kohta | Kategooria efektiivsus |
| Käive | Kategooria rahaline mõju |
| VIP-klientide arv | Kõrge väärtusega klientide hulk |
| VIP-klientide käive | Suurima väärtusega kliendigrupi mõju |
| Aastane käibekasv | Äri üldine kasvutrend |


<img width="1875" height="1055" alt="image" src="https://github.com/user-attachments/assets/db08baca-3bbc-40df-bef1-6f66173ac2a7" />

### AI kasutamine

Kasutasin AI-d aknafunktsioonide selgitamisel, CTE vahetabelite loomisel ja äriliste järelduste sõnastamisel. AI aitas tehnilisi SQL-i mõisteid kiiremini mõista ning muuta päringutulemused selgemateks ärilisteks tähelepanekuteks.

Lõplikud järeldused põhinesid analüüsi tulemustel ja minu enda tõlgendusel.

### Kokkuvõte

Nädal 4 näitas, kuidas SQL-i agregeerimise tööriistad aitavad liikuda üksikutelt müügiridadelt äriliste otsusteni. Kõige olulisemad leiud olid meeste riiete suur müügimaht, jalanõude tugev käibepositsioon, lasteriiete kõrge efektiivsus ja aksessuaaride kasvupotentsiaal.

Järgmine praktiline samm on siduda need leiud lao, hinnastuse ja turunduse otsustega: tellida juurde tugeva müügiga tooteid, parandada aksessuaaride nähtavust ning kasutada VIP-klientide infot sihitud pakkumistes.

## Näidis-SQL päringud

### Müük kategooriate lõikes

```sql
SELECT
    category,
    SUM(quantity) AS total_units_sold,
    COUNT(DISTINCT product_id) AS product_count,
    ROUND(SUM(quantity) * 1.0 / COUNT(DISTINCT product_id), 2) AS avg_units_per_product
FROM sales
GROUP BY category
ORDER BY total_units_sold DESC;





