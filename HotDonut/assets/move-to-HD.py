
import os
import sys
import shutil



dirList=os.listdir('./assets')
for fname in dirList:
	if "-hd" in fname:
		shutil.copyfile('./assets/' + fname, './assets/' + fname.replace("-hd", ""))
		os.remove('./assets/' + fname)


shutil.copyfile('./assets/hover1.lvl', './assets/hover1-hd.lvl')
