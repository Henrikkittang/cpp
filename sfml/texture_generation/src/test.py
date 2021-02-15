


def les_fil(filnavn):
	with open(filnavn+'.txt', 'r') as f:
		return f.read()


try:
	les_fil('min_file')
except:
	print('fant ikke filenavn')

