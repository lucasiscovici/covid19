docker: create_work2 

create_work2:
	rm -rf work2
	mkdir work2
	cp ../work/Covid_19.ipynb work2/
	cp -r ../work/__studyFiles work2/
	rm -rf work2/__studyFiles/study_study_project_EXP/covid_nlp.study_study_project.EXP.bz2
	cp -r ../work/images work2/
	mkdir work2/data
	cp ../work/data/*.csv work2/data/
	cp ../work/data/*.numbers work2/data/
	cp -r ../work/data/WPP2019_POP_F15_1_ANNUAL_POPULATION_BY_AGE_BOTH_SEXES work2/data/

push:
	git checkout docker || git checkout -b docker
	git add *
	git commit -m "docker build"
	git push origin docker