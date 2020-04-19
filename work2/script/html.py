import glob
import sys,os
import urllib.parse as urllib
from tqdm import tqdm
htmls=glob.glob("Covid_19*.ipynb")
class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'
with tqdm(htmls) as t:
	for html in t:
		t.set_description(f'{bcolors.BOLD}File {html}{bcolors.ENDC}')
		url=urllib.quote(html)
		htmlName=html.replace(".ipynb",".html")
		ff=f'curl -s http://localhost:8888/notebooks/{url}/export/htmlx > "html/{htmlName}" '
		os.system(ff)