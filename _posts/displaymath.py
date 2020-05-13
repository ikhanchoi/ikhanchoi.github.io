from os import listdir
from os.path import isfile, join
for f in [f for f in listdir('./') if isfile(join('./', f))]:
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
	print('done')