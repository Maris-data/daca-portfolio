### Nädal 8: REST API ja automatiseeritud ETL andmetoru

### Projekti fookus

Week 8 keskendus REST API põhimõtetele, ETL andmetoru ehitamisele, turvalisusele, veakäsitlusele ja automatiseerimisele. Eesmärk oli luua UrbanStyle’i jaoks korduvkasutatav andmetoru, mis pärib andmed Supabase API-st, puhastab ja valideerib need Pythonis ning salvestab tulemused analüüsiks sobivatesse väljundfailidesse.

Töö praktiline väärtus seisneb selles, et andmete kogumine ja ettevalmistus ei sõltu enam käsitsi ekspordist. Andmetoru käivitub ühe käsuga ning loob igal käivitusel ajakohased KPI-d, tabelid ja visualiseeringud.

## Minu roll

**Roll A — API query ehk andmete pärimine**

Minu ülesanne oli luua Python funktsioonid, mis pärivad UrbanStyle OÜ andmed Supabase API-st. Fookuses olid kolm põhiandmestikku:

- müügiandmed;
- kliendiandmed;
- tooteandmed.

Töö väljund oli `data_fetcher.py` fail, mis sisaldab kolme funktsiooni ja tagastab tulemused Pandas DataFrame’idena.

## Õpiväljundid

Week 8 jooksul rakendasime järgmisi teemasid:

- REST API põhimõtted;
- Supabase API kaudu andmete pärimine;
- ETL andmetoru ehitamine;
- `.env` faili kasutamine API tunnuste hoidmiseks;
- turvalisus ja ligipääsuandmete eraldamine koodist;
- `try/except` veakäsitlus;
- andmete valideerimine;
- automatiseerimine ja ajastatav töövoog;
- tulemuste salvestamine CSV ja HTML failidesse.

## Äriprobleem

UrbanStyle’i analüüsiprotsess sõltus varem liiga palju käsitsi andmete tõmbamisest, puhastamisest ja koondamisest. See tekitas kolm probleemi:

1. töö võttis liiga palju aega;
2. käsitsi sammud suurendasid vigade riski;
3. tulemuste kordamine ei olnud piisavalt ühtlane.

Andmetoru eesmärk oli muuta protsess automaatseks, kontrollitavaks ja korratavaks. Kui andmeid saab pärida otse Supabase API-st, puhastada samas töövoos ja salvestada valmis väljunditesse, muutub analüütiku töö kiiremaks ja usaldusväärsemaks.

## Lahendus

Meeskond ehitas automatiseeritud data pipeline’i, mis:

1. pärib andmed Supabase API-st;
2. puhastab ja valideerib andmed Pandas funktsioonidega;
3. liidab müügi-, kliendi- ja tooteandmed;
4. arvutab KPI-d ja nädalased koondnäitajad;
5. loob Plotly diagrammid;
6. salvestab tulemused CSV ja HTML failidesse;
7. käivitub ühe käsuga läbi `pipeline.py`.

Pipeline jooksis edukalt algusest lõpuni ja genereeris automaatselt väljundfailid.

## Sisend

Andmete pärimiseks kasutati:

- Supabase Python client’i ehk `supabase-py`;
- `.env` faili API URL-i ja võtmete hoidmiseks;
- Supabase andmebaasi tabeleid;
- Pythonit ja Pandast andmete töötlemiseks.

`.env` fail hoiab tundlikud andmed koodist eraldi. See on oluline, sest API võtmeid ei tohi lisada GitHubi ega jagada avalikult.

#### 1. Teekide import ja Supabase client’i loomine

Alustasin vajalike teekide importimisest ja Supabase client’i seadistamisest. API tunnused loeti .env failist, et tundlik info ei oleks koodis nähtav.

Näide:

#### 2. Müügiandmete pärimine

Kirjutasin funktsiooni fetch_sales(start_date, end_date), mis pärib müügiandmed Supabase API-st ja tagastab tulemuse DataFrame’ina.

Funktsioonis lisasin kuupäevafiltrid parameetritena, et analüüsis saaks pärida kindlat perioodi, mitte alati kogu tabelit.

Näide:
#### 3. Kliendiandmete pärimine

Kirjutasin funktsiooni fetch_customers(), mis pärib kliendiandmed ja tagastab DataFrame’i.

Näide:

#### 4. Tooteandmete pärimine

Kirjutasin funktsiooni fetch_products(), mis pärib tooteandmed ja tagastab DataFrame’i.

Näide:

#### 5. Veakäsitlus

Lisasin iga funktsiooni ümber try/except ploki. See teeb töövoo vastupidavamaks, sest API tõrke, vale päringu või ühenduse probleemi korral ei katkesta üks viga kogu programmi.

Kui päring ebaõnnestub, tagastab funktsioon tühja DataFrame’i ja prindib veateate. Nii saab pipeline edasi liikuda kontrollitud kujul ja vea põhjus jääb logidesse nähtavaks.

#### 6. Testimine

Testisin iga funktsiooni eraldi. Kontrollisin:

kas päring tagastab andmed;
mitu rida DataFrame’is on;
kas .head() näitab oodatud veerge;
kas tühja tulemuse korral programm ei kuku kokku;
kas kuupäevafiltrid töötavad müügiandmete päringus.

### ETL töövoog

#### Extract

Andmed päringuti Supabase API-st data_fetcher.py funktsioonidega.

#### Transform

Pandas abil puhastati ja valideeriti andmed. See hõlmas puuduvate väärtuste kontrolli, andmetüüpide korrigeerimist ja müügi-, kliendi- ning tooteandmete ühendamist.

#### Load

Tulemused salvestati CSV ja HTML failidesse. CSV sobib edasiseks analüüsiks ning HTML failid sobivad KPI-de ja Plotly visualiseeringute jagamiseks.

#### Tehnilised tööriistad: 
Python — andmetoru põhiloogika;
Pandas — andmete puhastamine, valideerimine ja koondamine;
supabase-py — Supabase API-ga ühenduse loomine;
python-dotenv — .env failist tunnuste lugemine;
Plotly — interaktiivsed diagrammid;
CSV ja HTML — väljundfailide salvestamine;
pipeline.py — kogu töövoo käivitamine ühe käsuga.

### Turvalisus

API tunnuseid ei lisatud otse koodi. Selle asemel kasutati .env faili.

.env fail peab olema lisatud .gitignore faili, et API võti ei satuks GitHubi.

### Automatiseerimise mõju

Loodud andmetoru hoiab kokku umbes 4 tundi manuaalset tööd nädalas. Lisaks parandab see andmete usaldusväärsust, sest samad puhastamise ja valideerimise reeglid käivituvad igal korral ühtemoodi.

Andmetoru tagab hinnanguliselt 99,8% andmete usaldusväärsuse, sest käsitsi kopeerimise, filtreerimise ja ühendamise vead vähenevad.

### Olulisemad leiud
Pipeline töötab ühe käsuga läbi pipeline.py.
Süsteem päris Supabase API-st üle 10 000 müügirea.
Pärast puhastamist ja valideerimist jäi analüüsi 8947 kirjet.
Lõplik kogukäive oli 2 675 896.82 €.
Unikaalseid kliente oli 2540.
Keskmine tellimuse väärtus oli 299.08 €.
Tellimusi oli kokku 8947.
Pipeline salvestas tulemused CSV ja HTML failidesse.
Automatiseerimine vähendab käsitsi tööd umbes 4 tundi nädalas.
.env kasutamine hoiab API tunnused koodist eraldi.
Äritõlgendus

UrbanStyle’i andmetoru muudab analüüsi töökindlamaks ja kiiremaks. Kui müügi-, kliendi- ja tooteandmeid saab pärida otse Supabase API-st, on juhtkonnal võimalik saada värskemaid KPI-sid ilma käsitsi andmetöötluseta.

Kõige olulisem mõju on korduvuses: sama pipeline arvutab igal nädalal samad näitajad samade reeglite alusel. See teeb tulemused võrreldavaks ja vähendab vaidlusi selle üle, milline fail või versioon on õige.

### Soovitused
#### 1. Lisada ajastatud käivitus

Pipeline töötab juba ühe käsuga. Järgmine samm on lisada ajastamine, näiteks kord nädalas.

Võimalikud lahendused:

cron job;
GitHub Actions;
pilvepõhine ajastaja;
Supabase edge function või muu automaatne käivitusloogika.
#### 2. Parandada logimist

Praegu on oluline info nähtav väljundis, kuid järgmine samm on salvestada logid eraldi faili. See aitab hiljem kontrollida, millal pipeline jooksis, mitu rida töödeldi ja kas mõni samm ebaõnnestus.

Soovituslikud logitavad näitajad:

käivitamise aeg;
päringu ridade arv;
puhastatud ridade arv;
eemaldatud vigaste kirjete arv;
loodud väljundfailid;
veateated.
#### 3. Lisada andmekvaliteedi kontrollid

Enne KPI-de arvutamist tuleks kontrollida, kas andmed on piisavalt kvaliteetsed.

Näited:

kas customer_id puudub mõnel müügireal;
kas order_date on korrektne;
kas total_amount on positiivne;
kas duplikaattellimusi on;
kas kliendi- ja tooteandmed liituvad müügiandmetega korrektselt.
#### 4. Luua hoiatused vigade korral

Kui API päring ebaõnnestub või ridade arv erineb ootamatult palju, peaks süsteem saatma teavituse. See aitab avastada probleemi enne, kui vigased KPI-d jõuavad dashboardile.

#### 5. Versioonida väljundfailid

Failinimedes kasutatud ajatempel on hea praktika. Seda tasub jätkata, sest see võimaldab tulemusi hiljem võrrelda ja kontrollida, millal konkreetne raport loodi.

### AI kasutamine

NotebookLM aitas õppematerjale läbi töötada ja REST API ning ETL töövoo põhimõtteid paremini mõista. API integratsioonid olid keerulisemad, seetõttu kasutasin Claude’i koodi suunamiseks, vigade selgitamiseks ja funktsioonide struktuuri parandamiseks.


<img width="1538" height="857" alt="image" src="https://github.com/user-attachments/assets/5b91afc9-1617-4d18-af44-8210c08c1c22" />

#### Kokkuvõte

Week 8 tulemusena valmis UrbanStyle’i automatiseeritud ETL andmetoru, mis pärib andmed Supabase API-st, töötleb need Pandas abil ja salvestab tulemused CSV ning HTML failidesse.

Minu roll oli luua API päringu kiht data_fetcher.py failis. Selle kaudu saab pärida müügi-, kliendi- ja tooteandmeid otse Supabase’ist. Pipeline töötas edukalt, töötles 8947 valideeritud müügikirjet ja arvutas kogukäibeks 2 675 896.82 €.

Suurim väärtus on korduv ja usaldusväärne töövoog: andmete käsitsi ettevalmistus väheneb, KPI-d muutuvad võrreldavaks ning analüüs saab liikuda tehniliselt andmekogumiselt äriliste järelduste tegemisele.




