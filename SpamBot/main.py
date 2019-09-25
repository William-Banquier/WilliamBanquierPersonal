filterdWords = input("Space Divided words").split()
filterdWords += ["put words in here (comma spererted)"]

def Filter(pages):
	x = len(pages)
	z = len(filterdWords)
	for i in range (0,x):
		for y in range (0,z):
			try:	
				if pages[i] == filterdWords[y]:
					del(pages[i])
					x = len(pages)
					z = len(filterdWords)
			except:
				return

	return




page = open("spam.txt","r")
pages = page.read().split()

Filter(pages)

print(pages)