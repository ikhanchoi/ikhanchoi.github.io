import string

'''
code = ''
cursor = 0

with open('../mathnotes/essays/vlasov-poisson/vlasov-poisson.tex', 'r') as f:
	code = f.read()
'''



code = "{{aaa} aa}"
cursor = 0
post = ""

# string variables
command = ''
mathmode = 'text'


# counters
section = 0
subsection = 0
theorem = 0


# 현재 환경에 따라 확인하는 커맨드 목록이 달라진다
#


# main parser

if code[cursor] != '\\':
	post += code[cursor]


# functions
def read_command(backslash):
	i = 0 # command name length
	while code[backslash + i] in list(string.ascii_letters):
		i += 1
	if i == 0:
		i = 1

	global cursor
	cursor = backslash + i + 1
	return code[backslash + 1 : backslash + i + 1] # command name without backslash

def read_argument(lbrace):
	level = 1
	i = 0 # argument length
	while level > 0:
		i += 1
		if code[lbrace + i] == '{':
			level += 1
		if code[lbrace + i] == '}':
			level -= 1
	i -= 1

	global cursor
	cursor = lbrace + i + 2
	return code[lbrace + 1 : lbrace + i + 1]


