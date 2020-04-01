# covid
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lucasiscovici/covid19/docker?filepath=work%2FCovid_19.ipynb)   
cloner le repo dans un dossier par example: "work"
```bash
git clone https://github.com/lucasiscovici/covid19.git work
```
1re option  
lancer le docker
```bash
docker run -d --rm --name covid -p 8888:8888 -v $PWD/work:/home/mlds/work luluisco/covid19 mlds.sh
```
ouvrir votre navigateur sur localhost:8888, mdp: mlds

2me option  
```bash
cd work; make install
```
et ensuite relancer jupyter  

3me option  
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/lucasiscovici/covid19/docker?filepath=work%2FCovid_19.ipynb)    

notebook avec l'extension hide_code:
- afficher le code: maj+c  (command mode)  
- cacher le code: c (command mode)  
- afficher l'output: maj+o (command mode)
- cacher l'output: o (command mode)
