### Nädal 5: andmete visualiseerimise põhimõtted ja strateegiline disain

## Projekti fookus

Week 5 keskendus andmete visualiseerimisele ja dashboardi disainile. Eesmärk oli muuta UrbanStyle’i müügi- ja kliendiandmed investoritele arusaadavaks ülevaateks, kus kõige olulisemad KPI-d, trendid ja kanalite erinevused on kiiresti nähtavad.

Minu roll oli analüüsida müügikanaleid ja kliendihanke mustrit. Fookus oli küsimusel: millised kanalid toovad UrbanStyle’ile kõige rohkem müüki ja uusi kliente ning kus on näha kasvu või riski.

## Õpiväljundid

Nädala jooksul rakendasime järgmisi andmevisualiseerimise põhimõtteid:

- õige diagrammitüübi valik vastavalt küsimusele;
- KPI kaartide ehk hero number’ite kasutamine;
- data-ink ratio põhimõte: näidata ainult infot, mis aitab otsust teha;
- dashboardi paigutus ja kasutajakogemus;
- värvide kasutamine tähenduse loomiseks, mitte dekoratsiooniks;
- ligipääsetavuse arvestamine värvide, kontrasti ja loetavuse kaudu;
- investoritele suunatud UrbanStyle’i dashboardi koostamine.

## Minu roll B: müügikanalite analüüs

Minu ülesanne oli luua marketing dashboard, mis näitab kanalite efektiivsust ja kliendihankimise mustrit. Analüüsis kasutasin UrbanStyle’i `sales` ja `customers` andmeid Supabase’ist või CSV-failidest.

Dashboard pidi vastama kahele äriküsimusele:

1. millised müügikanalid toovad kõige rohkem müügitulu;
2. kuidas muutub uute klientide arv ajas.

## Kasutatud sisendandmed

- `sales` — müügitehingud, müügikanalid, müügitulu ja tellimused;
- `customers` — kliendiinfo, registreerumise aeg, linn ja kanal.

## Dashboardi peamised KPI-d

UrbanStyle’i müügikanalite ülevaates kasutati kolme peamist KPI-d:

| KPI | Tulemus | Tähendus |
|---|---:|---|
| Kogu müügitulu | 2,97 mln € | UrbanStyle’i vaadeldud perioodi kogukäive |
| Aktiivsed kliendid | 2541 | Kliendid, kes on perioodi jooksul ostnud |
| Keskmine tellimuse väärtus | 299 € | Keskmine müügitulu ühe tellimuse kohta |

Need hero number’id annavad kiire ülevaate ettevõtte müügimahust, kliendibaasist ja ostukorvi väärtusest.

## Diagramm 1: müügitulu linnade ja kanalite lõikes

Esimene diagramm näitas, millised linnad ja kanalid toovad suurima müügitulu.

### Peamised leiud

- Tallinna pood toob suurima müügitulu: **1,11 mln €**.
- Tartu müügitulu on **0,53 mln €**.
- Pärnu müügitulu on **0,29 mln €**.
- Pärnu müük seisab ja vajab eraldi tähelepanu.
- Füüsiline pood on tugevam kanal: **1,94 mln €**.
- Online-kanal toob **1,03 mln €** ja kasvab.

### Äritõlgendus

Tallinna pood on UrbanStyle’i peamine müügimootor, kuid online-kanali kasv näitab, et digitaalne müük muutub järjest olulisemaks. Pärnu tulemused vajavad ülevaatamist, sest müügi seismine võib viidata nõrgale kohalikule nõudlusele, piiratud nähtavusele või sortimendi probleemile.

## Diagramm 2: uute klientide arv ajas

Teine diagramm näitas, kuidas on muutunud uute klientide arv kuude lõikes.

### Peamised leiud

- 2023 aasta jaanuaris lisandus **220 uut klienti**.
- 2024 aastal lisandub keskmiselt umbes **58 uut klienti kuus**.
- Uute klientide arv on langenud ligikaudu **4 korda**.
- Online-kanal toob üha rohkem uusi kliente, kuid üldine kliendihanke tase on langenud.

### Äritõlgendus

Müügitulu on stabiilne, kuid uute klientide leidmine on oluliselt aeglustunud. See on strateegiline risk, sest kasv ei saa pikalt toetuda ainult olemasolevatele klientidele.

## Olulisemad leiud

- UrbanStyle’i kogumüügitulu on **2,97 mln €**.
- Aktiivseid kliente on **2541**.
- Keskmine tellimuse väärtus on **299 €**.
- Suurima müügitulu toob Tallinna pood: **1,11 mln €**.
- Füüsiline pood on suurem kanal kui online: **1,94 mln € vs 1,03 mln €**.
- Online-kanal kasvab ja toob järjest rohkem uusi kliente.
- Uute klientide arv on 2023. aasta algusega võrreldes langenud umbes **4 korda**.
- Pärnu müük seisab ja vajab eraldi analüüsi.

## Strateegiline järeldus

UrbanStyle’i müük on praegu tugev, kuid kliendihanke nõrgenemine on oluline risk. Kui uute klientide arv jääb madalaks, hakkab see mõjutama tulevast käivet, kordusoste ja investoritele näidatavat kasvupotentsiaali.

Kõige olulisem äriline küsimus ei ole ainult see, milline kanal müüb täna kõige rohkem, vaid milline kanal suudab tuua juurde uusi kliente ja kasvatada tulevast müüki.

## Ettepanekud

### 1. Suunata turundus eelkõige online-kanali kasvatamisele

Online-kanal toob juba 1,03 mln eurot müügitulu ja näitab kasvu. Kuna see kanal toob ka rohkem uusi kliente, tasub seda kasutada kliendihanke peamise kasvukanalina.

Fookuses peaksid olema:

- sihitud kampaaniad uutele klientidele;
- e-poe konversioonimäära parandamine;
- esmaostu pakkumised;
- kordusostu automatiseeritud pakkumised;
- kanalipõhine kliendihanke kulu mõõtmine.

### 2. Hoida Tallinna pood põhilise müügimootorina

Tallinna pood toob suurima müügitulu ja on UrbanStyle’i tugevaim füüsiline müügipunkt. Seda kanalit tasub kasutada ka brändi nähtavuse ja lojaalsuse kasvatamiseks.

Praktilised sammud:

- jälgida enim müüdud toodete laoseisu;
- siduda poeostud lojaalsusprogrammiga;
- koguda klientide kontaktandmeid edasiseks turunduseks;
- testida poe ja online-kanali ühiskampaaniaid.

### 3. Analüüsida Pärnu müügi seisu põhjuseid

Pärnu müük on madal ja ei näita kasvu. Enne suuremate otsuste tegemist tuleb hinnata, kas probleem on nõudluses, sortimendis, hinnastuses, nähtavuses või laoseisus.

Kontrollida tasub:

- Pärnu poe külastatavust;
- toodete saadavust;
- kohalike kampaaniate mõju;
- keskmist ostukorvi;
- kordusostude osakaalu.

### 4. Uuendada kliendihanke strateegiat

Uute klientide arvu langus on dashboardi kõige olulisem hoiatussignaal. Kui 2023. aasta jaanuaris lisandus 220 uut klienti ja 2024. aastal keskmiselt 58 uut klienti kuus, siis senine kliendihanke mudel ei tööta enam sama hästi.

Vaja on mõõta:

- uute klientide arv kanalite lõikes;
- kliendihanke kulu;
- esimese ostu väärtus;
- kordusostu tõenäosus;
- uue kliendi eluaegne väärtus.

## Visualiseerimise põhimõtted, mida dashboardis kasutati

### Õige diagrammitüübi valik

Kanalite ja linnade võrdlemiseks sobib tulpdiagramm, sest see näitab selgelt kategooriate erinevusi. Uute klientide muutuse jaoks sobib joondiagramm, sest eesmärk on näha trendi ajas.

### KPI kaardid

Hero number’id paigutatakse dashboardi ülaossa, sest need annavad kiire ülevaate ettevõtte seisust. Investor näeb kohe müügitulu, aktiivsete klientide arvu ja keskmist tellimuse väärtust.

### Data-ink ratio

Dashboardil ei ole vaja liigseid ruudustikke, varje ega dekoratiivseid elemente. Iga element peab aitama vastata äriküsimusele.

### Värviteooria ja ligipääsetavus

Värve kasutatakse tähenduse eristamiseks, näiteks füüsiline pood ja online-kanal. Vältida tuleb ainult värvile toetumist: sildid, väärtused ja legend peavad samuti infot selgelt edasi andma.

### Paigutus ja kasutajakogemus

Dashboardi loogiline järjestus:

1. kõigepealt KPI kaardid;
2. seejärel müügitulu kanalite ja linnade lõikes;
3. lõpuks uute klientide trend;
4. allosas lühike äriline kokkuvõte ja soovitused.


<img width="645" height="265" alt="image" src="https://github.com/user-attachments/assets/aab75380-e4a9-408a-8383-c6ce5f9965bb" />

## Näidis-SQL päringud

### Kogu müügitulu, aktiivsed kliendid ja keskmine tellimuse väärtus

```sql
SELECT
    ROUND(SUM(total_amount), 2) AS total_revenue,
    COUNT(DISTINCT customer_id) AS active_customers,
    ROUND(AVG(total_amount), 2) AS avg_order_value
FROM sales;




