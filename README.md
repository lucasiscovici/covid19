# covid

cloner le repo dans un dossier par example: "work"
```bash
git clone https://github.com/lucasiscovici/covid.git work
```
1re option  
lancer le docker
```bash
docker run -d --rm --name covid -p 8888:8888 -v $PWD/work:/home/mlds/work luluisco/covid mlds.sh
```
ouvrir votre navigateur sur localhost:8888, mdp: mlds

2me option  
```bash
cd work; make install
```
et ensuite relancer jupyter  


notebook avec l'extension hide_code:
- afficher le code: maj+c  (command mode)  
- cacher le code: c (command mode)  
- afficher l'output: maj+o (command mode)
- cacher l'output: o (command mode)
