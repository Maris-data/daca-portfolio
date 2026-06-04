### Week 8:
- REST API põhimõtted
- ETL andmetoru ehitamine
- Turvalisus ja veakäsitlus
- Automatiseerimine ja ajastamine

### Minu roll A: API Query (Andmete pärimine)

Lõin Python funktsioonid, mis pärivad UrbanStyle OÜ andmed Supabase API-st: müügi-, kliendi- ja tooteandmed.

SISEND: Supabase Python client (supabase-py), .env fail API tunnustega

VÄLJUND: data_fetcher.py — 3 funktsiooni, mis tagastavad DataFrame'e

1. Importisin teegid ja lõin Supabase client .env põhiselt
2. Kirjutasin fetch_sales(start_date, end_date) — pärisin müügiandmed,
   tagastas DataFrame. Lisasin kuupäevafiltrid parameetritena.
3. Kirjutasin fetch_customers() ja fetch_products() analoogselt
4. Lisa iga funktsiooni ümber try/except veakäsitlus
5. Testisin: prindi ridade arv ja .head() iga DataFrame kohta
  
### Olulisemad leiud
- loodud andmetoru hoiab kokku umbes 4 tundi manuaalset tööd nädalas ja tagavad andmete 99,8%-lise usaldusväärsuse.

### AI kasutamine
Notebook LM aitas materjale läbitöötada. 
API integratsioonid olid keerulised ja Claude aitas suunata ja koodigenereerimisel 

<img width="1538" height="857" alt="image" src="https://github.com/user-attachments/assets/5b91afc9-1617-4d18-af44-8210c08c1c22" />
