--lisa uus fail 
mkdir week-0
echo "# Week 0 GitHub Harjutus" > week-0/github-harjutus.md
--push uues branch`is 
git add week-0/
git commit -m "Lisa Week 0 GitHub harjutus"
git push -u origin week-0-setup
--Täida pull Request vorm
Lisa Week 0 GitHub harjutus
-- lisa Description
## Muudatused
- Loodud kaust `week-0/`
- Lisatud fail `github-harjutus.md`
 ## Testimine
- [ ] Fail on nähtav
- [ ] Markdown kuvab õigesti
--Pärast merge'imist võid branch kustutada
git checkout main
git pull
git branch -d week-0-setup
