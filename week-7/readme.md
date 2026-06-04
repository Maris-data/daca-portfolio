### Nädal 7: Python Pandas — RFM kliendisegmenteerimine

## Projekti fookus

Nädal 7 keskendus RFM kliendisegmenteerimisele Pythonis. Eesmärk oli kasutada UrbanStyle’i e-poe kliendi- ja müügiandmeid, et tuvastada väärtuslikumad kliendigrupid, riskis olevad kliendid ja kasvupotentsiaaliga segmendid.

RFM analüüs aitab vastata kolmele äriküsimusele:

1. millised kliendid ostsid kõige hiljuti;
2. millised kliendid ostavad kõige sagedamini;
3. millised kliendid toovad kõige rohkem käivet.

Nende kolme mõõdiku põhjal saab kliendid jagada segmentidesse ja teha igale grupile sobivamaid turundus- ja lojaalsustegevusi.

## Minu roll

**Roll D — RFM analüüs UrbanStyle e-poe klientide segmenteerimiseks**

Minu ülesanne oli koostada RFM analüüs UrbanStyle’i e-poe klientide segmenteerimiseks. Andmed laeti Supabase andmebaasist ja analüüsiti Pythoniga.

Töö käigus kasutasin Pandast andmete puhastamiseks, agregeerimiseks ja RFM skooride arvutamiseks. Tulemuste esitamiseks koostasin 3 Plotly diagrammi ning lisasin äritõlgenduse, peamised leiud ja soovitused.

## Äriprobleem

UrbanStyle’il on suur kliendibaas, kuid kõik kliendid ei loo sama palju väärtust. Osa klientidest ostab sageli ja suure summaga, osa on ostnud varem, kuid ei ole enam aktiivne, ning osa klientidest näitab kasvupotentsiaali.

Ilma segmenteerimiseta on turundus liiga üldine. Sama sõnum saadetakse klientidele, kelle vajadus ja väärtus ettevõtte jaoks on erinev. RFM analüüs aitab suunata tegevused täpsemalt:

- VIP klientidele tuleb pakkuda hoidmise ja lojaalsuse tegevusi;
- At Risk klientidele tuleb teha tagasivõitmise kampaaniaid;
- Potential klientidele tuleb luua kordusostu ja lojaalsuse kasvatamise teekond.

## Kasutatud andmed ja tööriistad

### Andmed

- `sales` — ostutehingud, tellimused, müügitulu ja ostukuupäevad;
- `customers` — kliendiandmed ja kliendi identifikaatorid;
- Supabase — andmebaasiallikas;
- Python — andmete töötlemine ja analüüs.

### Tööriistad

- **Pandas** — andmete puhastamine, koondamine ja RFM arvutused;
- **Plotly** — interaktiivsed diagrammid;
- **Supabase** — andmete laadimine;
- **Python notebook** — analüüsi läbiviimine ja dokumenteerimine.

## RFM metoodika

RFM tähendab kolme mõõdikut:

| Mõõdik | Tähendus | Äriloogika |
|---|---|---|
| Recency | Kui hiljuti klient viimati ostis | Hiljuti ostnud klient on tõenäolisemalt aktiivne |
| Frequency | Kui sageli klient ostab | Sagedased ostjad on lojaalsemad |
| Monetary | Kui palju klient raha kulutab | Suurema käibega kliendid on ettevõttele väärtuslikumad |

Iga kliendi kohta arvutati viimase ostu kaugus, ostude arv ja kogukäive. Seejärel jagati kliendid RFM skooride põhjal segmentidesse.

## Peamised KPI-d

| KPI | Tulemus | Tähendus |
|---|---:|---|
| Klientide arv | 2540 | Analüüsitud kliendibaasi suurus |
| Kogukäive | 2,7 mln € | Analüüsitud klientide loodud müügitulu |
| VIP klientide osakaal | 18% | Kõige väärtuslikum kliendigrupp |
| VIP klientide käibeosakaal | 43% | VIP kliendid annavad peaaegu poole käibest |
| At Risk klientide arv | 531 | Tagasivõitmist vajav kliendigrupp |
| At Risk klientide osakaal | 21% | Oluline osa kliendibaasist |
| At Risk käibeosakaal | 7% | Praegu madal panus, kuid taastamise potentsiaal |
| Potential segment | 30% | Kliendid, keda saab arendada lojaalsemaks |

## Diagramm 1: klientide jaotus RFM segmentide lõikes

Esimene Plotly diagramm näitas, kuidas UrbanStyle’i kliendibaas jaguneb RFM segmentidesse.

### Äritõlgendus

Potential segment moodustab 30% kliendibaasist. Need kliendid ei ole veel kõige lojaalsemad, kuid neil on eeldus kasvada püsiklientideks, kui neid toetada kordusostu pakkumiste ja personaalsema kommunikatsiooniga.

## Diagramm 2: käibe jaotus segmentide lõikes

Teine diagramm näitas, millised kliendisegmendid annavad suurima osa käibest.

### Äritõlgendus

VIP kliendid moodustavad ainult 18% kliendibaasist, kuid annavad 43% kogukäibest. See näitab tugevat kontsentratsiooni: väike osa klientidest loob väga suure osa ettevõtte tulust.

## Diagramm 3: At Risk segment ja taastamise potentsiaal

Kolmas diagramm keskendus At Risk klientidele ning näitas nende osakaalu ja käibepotentsiaali.

### Äritõlgendus

At Risk kliente on 531 ehk ligikaudu 21% kõigist klientidest. Kuigi nende käibeosakaal on praegu ainult 7%, on see piisavalt suur kliendigrupp, et tagasivõitmise kampaaniad saaksid anda mõõdetava mõju käibele.

## Peamised leiud

### 1. UrbanStyle’i kliendibaasis on 2540 klienti

Analüüs hõlmas 2540 klienti. See annab piisava aluse kliendisegmentide loomiseks ja turundustegevuste täpsemaks suunamiseks.

### 2. Kogukäive on 2,7 miljonit eurot

Analüüsitud kliendid tõid kokku 2,7 miljonit eurot käivet. See võimaldab hinnata segmentide ärilist mõju mitte ainult klientide arvu, vaid ka rahalise väärtuse põhjal.

### 3. VIP kliendid on äriliselt kriitilised

VIP kliendid moodustavad 18% kliendibaasist, kuid annavad 43% kogukäibest. See tähendab, et UrbanStyle sõltub tugevalt oma kõige väärtuslikumatest klientidest.

VIP klientide kaotamine mõjutaks käivet ebaproportsionaalselt tugevalt.

### 4. At Risk segment on suur tagasivõitmise võimalus

At Risk kliente on 531, mis moodustab umbes 21% kõigist klientidest. Nende käibeosakaal on praegu 7%, kuid segmendi suurus teeb sellest olulise taastamise võimaluse.

Kui osa At Risk klientidest tagasi tuua, on mõju käibele otsene ja mõõdetav.

### 5. Potential segment on kõige olulisem kasvubaas

Potential segment moodustab 30% kliendibaasist. Need kliendid ei ole veel lojaalsed, kuid neil on käitumise põhjal eeldus kasvada väärtuslikumaks kliendigrupiks.

Selle segmendi arendamine aitab suurendada kordusoste ja vähendada sõltuvust ainult VIP klientidest.

## Peamised järeldused

UrbanStyle’i äriline fookus peaks olema kolmel suunal.

### 1. VIP klientide hoidmine

VIP kliendid annavad peaaegu poole käibest. Seetõttu tuleb nende hoidmine seada esimeseks prioriteediks.

Olulised tegevused:

- personaalsed pakkumised;
- varajane ligipääs uutele kollektsioonidele;
- lojaalsusprogrammi kõrgem tase;
- eripakkumised sünnipäeva või ostuajaloo põhjal;
- VIP klientide ostukäitumise regulaarne jälgimine.

### 2. At Risk klientide tagasivõitmine

531 At Risk klienti on piisavalt suur grupp, et mõjutada käivet. Nende puhul ei ole eesmärk üldine bränditeavitus, vaid konkreetne tagasituleku põhjus.

Sobivad tegevused:

- „Tule tagasi“ kampaania;
- piiratud ajaga soodustus;
- personaalne pakkumine viimase ostu kategooria põhjal;
- meeldetuletus uue kollektsiooni või sarnaste toodete kohta;
- e-kirja ja online reklaami kombinatsioon.

### 3. Potential klientide arendamine Loyal tasemele

Potential kliendid moodustavad 30% kliendibaasist. See on kõige olulisem grupp pikaajalise kasvu jaoks.

Soovituslikud tegevused:

- teise ostu kampaania;
- soovitused ostuajaloo põhjal;
- lojaalsusprogrammi liitumise pakkumine;
- komplektpakkumised;
- kordusostu automatiseeritud e-kirjad.

## Soovitused

### 1. Luua segmentidepõhine turundusplaan

Kõigile klientidele ei peaks saatma sama kampaaniat. RFM segmentide põhjal saab luua eraldi kommunikatsiooni:

| Segment | Eesmärk | Soovituslik tegevus |
|---|---|---|
| VIP | Hoida ja kasvatada väärtust | Eksklusiivsed pakkumised ja varajane ligipääs |
| Loyal | Säilitada ostusagedus | Lojaalsusprogrammi eelised |
| Potential | Kasvatada kordusoste | Teise ostu pakkumine ja personaalsed soovitused |
| At Risk | Tuua klient tagasi | Tagasivõitmise kampaania |
| Low Value | Hoida kulud kontrolli all | Automaatne madala kuluga kommunikatsioon |

### 2. Mõõta kampaaniaid segmendipõhiselt

RFM analüüsi väärtus tekib siis, kui turundustegevuste mõju mõõdetakse segmentide kaupa.

Mõõdikud:

- kampaania avamise määr;
- ostu sooritamise määr;
- kordusostu määr;
- keskmine ostukorv;
- segmendi käibe muutus;
- At Risk klientide tagasivõitmise määr.

### 3. Uuendada RFM analüüsi regulaarselt

RFM segment ei ole püsiv tunnus. Klient võib liikuda Potential segmendist Loyal või VIP segmendiks, aga ka aktiivsest kliendist At Risk gruppi.

Soovitus on uuendada RFM analüüsi vähemalt kord kuus, et turundus põhineks värskel kliendikäitumisel.


<img width="691" height="392" alt="image" src="https://github.com/user-attachments/assets/93c748c6-3611-4c03-8ae8-aece67f7a67b" />


### AI kasutamine

AI-d kasutasin RFM segmentide loogika selgitamiseks, Pythoni töövoo struktureerimiseks, Plotly diagrammide ideede täpsustamiseks ja äriliste järelduste sõnastamiseks.

AI aitas sõnastada tehnilised tulemused selgemaks juhtkonnale mõeldud soovitusteks. 

### Kokkuvõte

RFM analüüs näitas, et UrbanStyle’i käive sõltub tugevalt väärtuslikumatest kliendisegmentidest. VIP kliendid moodustavad 18% kliendibaasist, kuid annavad 43% kogukäibest. See teeb VIP klientide hoidmise äriliselt kriitiliseks.

Samas on kasvupotentsiaal kahes suunas: At Risk klientide tagasivõitmine ja Potential klientide arendamine lojaalsemaks. Kui UrbanStyle kasutab RFM segmente turunduse ja lojaalsusprogrammi juhtimiseks, saab ettevõte suurendada kordusoste, parandada kliendisuhteid ja vähendada sõltuvust üksikutest kõrge väärtusega klientidest.
### Andmete ettevalmistus

```python
import pandas as pd

sales["order_date"] = pd.to_datetime(sales["order_date"])

snapshot_date = sales["order_date"].max() + pd.Timedelta(days=1)

rfm = (
    sales
    .groupby("customer_id")
    .agg(
        recency=("order_date", lambda x: (snapshot_date - x.max()).days),
        frequency=("order_id", "nunique"),
        monetary=("total_amount", "sum")
    )
    .reset_index()
)

