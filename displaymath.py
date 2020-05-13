from os import listdir
from os.path import isfile, join
for f in [f for f in listdir('./_posts/') if isfile(join('./_posts/', f))]:
	f = './_posts/' + f
	newlines = []
	if not f.endswith('md'):
		continue
	with open(f, 'r') as g:
		for line in g:
			if line.startswith('$$'):
				line = '\\\\[' + line[2:]
			if line.endswith('$$\n'):
				line = line[:-3] + '\\\\]\n'
			newlines.append(line)
	with open(f,'w') as h:
		for line in newlines:
			h.write(line)