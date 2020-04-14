.PHONY: html

help:
	echo install: install-python-packages install-jupyter-extensions trust
	echo install-python-packages
	echo install-jupyter-extensions
	echo trust
	echo html
install: install-python-packages install-jupyter-extensions trust

install-python-packages:
	pip install -r requirements.txt

install-jupyter-extensions:
	#contrib
	jupyter contrib nbextension install 
	pip install jupyter_nbextensions_configurator
	jupyter nbextensions_configurator enable
	jupyter-nbextension enable collapsible_headings/main
	jupyter-nbextension enable livemdpreview/livemdpreview
	jupyter-nbextension enable splitcell/splitcell
	jupyter-nbextension enable tree-filter/index
	jupyter-nbextension enable codefolding/main
	jupyter-nbextension enable comment-uncomment/main
	jupyter-nbextension enable execute_time/ExecuteTime
	jupyter-nbextension enable exercise2/main
	jupyter-nbextension enable init_cell/main
	jupyter-nbextension enable load_tex_macros/main
	jupyter-nbextension enable scroll_down/main
	jupyter-nbextension enable toc2/main
	jupyter-nbextension enable export_embedded/main
	jupyter-nbextension enable table_beautifier/main
	jupyter-nbextension enable freeze/main
	mkdir tmpfiles
	#hide_code
	jupyter-nbextension install --py hide_code
	jupyter nbextension enable hide_code --py
	jupyter-serverextension enable hide_code --py
	#execution_dependencies
	git clone https://github.com/lucasiscovici/execution_dependencies tmpfiles/execution_dependencies2
	jupyter-nbextension install tmpfiles/execution_dependencies2
	jupyter nbextension enable execution_dependencies2/execution_dependencies
	#notes
	git clone https://github.com/lucasiscovici/notes tmpfiles/notes
	jupyter-nbextension install tmpfiles/notes
	jupyter nbextension enable notes/main

trust:
	jupyter trust Covid_19.ipynb

html:
	@echo "\033[94mGenerate HTML FROM Ipython notebooks\033[0m"
	@python3 script/html.py
