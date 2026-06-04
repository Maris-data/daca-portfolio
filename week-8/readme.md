

### Ülesande kirjeldus
Lõime Python funktsioonid, mis pärivad UrbanStyle OÜ andmed Supabase API-st: müügi-, kliendi- ja tooteandmed.

Minu ülesanne:
Luua  Plotly diagrammid töödeldud andmetest ja ekspordi tulemused failidesse (CSV + HTML). 

### SISEND: Roll B töödeldud DataFrame'id (koondandmed, KPI-d)

### VÄLJUND: visualize_export.py — diagrammifunktsioonid + eksport

1. Kirjutasin create_weekly_chart(df_weekly) — Plotly joondiagramm
   nädalastest tululiikumistest
2. Kirjutasin create_kpi_summary(kpis) — Plotly indicator või tabel,
   mis näitab peamisi KPI-sid
3. Kirjutasin export_results(df, output_dir) — salvesta DataFrame
   CSV-sse ajatempliga failinimega + diagrammid HTML-ina
4. Lõin output/ kaust (os.makedirs)
5. Testisin: käivitasin ja kontrollisin, et failid tekivad output/ kausta

### Klindiraport:
UrbanStyle’i kliendibaasis on 2540 klienti ning kogukäive on 2,7 miljonit eurot. Analüüs näitab, et ettevõtte käive sõltub tugevalt väärtuslikumatest kliendisegmentidest: VIP kliendid moodustavad 18% kliendibaasist, kuid annavad 43% kogukäibest. See teeb VIP-segmendi hoidmise äriliselt kriitiliseks.

Samas on märkimisväärne osa kliendibaasist riskis. At Risk kliente on 531, mis moodustab ligikaudu 21% kõigist klientidest. Nende käibeosakaal on praegu vaid 7%, kuid segmendis on selge taastamise potentsiaal. Kui osa neist klientidest õnnestub tagasi tuua, on mõju käibele otsene ja mõõdetav.

Lisaks moodustab Potential segment 30% kliendibaasist. Need kliendid ei ole veel kõige lojaalsemad, kuid neil on eeldus kasvada püsiklientideks. Õigesti üles ehitatud arendustegevused aitavad suurendada kordusoste ja kasvatada stabiilsemat kliendibaasi.

## Peamised järeldused:

Andmetoru hoiab kokku umbes 4 tundi manuaalset tööd nädalas ja tagavad andmete 99,8%-lise usaldusväärsuse.

UrbanStyle’i äriline fookus peaks olema kolmel suunal:
1.	VIP klientide hoidmine, sest väike osa klientidest annab peaaegu poole käibest. 
2.	At Risk klientide tagasivõitmine, sest 531 klienti on piisavalt suur grupp, et mõjutada käivet. 
3.	Potential klientide arendamine Loyal tasemele, et suurendada kordusoste ja vähendada sõltuvust üksikutest suurtest ostjatest. 
