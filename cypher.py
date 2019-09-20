import random

letterCharSide = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&()*+,-./:;?@[]^_`{|}~'


#encrypt

def encrypt():
	caesarCipher = input("Put Code In (You will get random key)")
	caesarCipher = list(caesarCipher)
	x = random.randrange(0,26)
	final = ""
	i = 0
	while i != len(caesarCipher):
		if ord(caesarCipher[i])+x > 122:
			ncaesarCipher = chr(ord(caesarCipher[i])-26+x)
			final+=(ncaesarCipher)
		else:
			final+=(chr(ord(caesarCipher[i])+x))
		i+=1

	y = ""
	for i in range(0,random.randrange(5,25)):
		y+=letterCharSide[random.randrange(0,len(letterCharSide)-1)]
	final = y + final

	y = ""
	for i in range(0,random.randrange(5,25)):
		y+=letterCharSide[random.randrange(0,len(letterCharSide)-1)]
	final += y
	print(final, "Your Key Is", x)
	
#decrypt

def decrypt():
	key = int(input("Put Key In: "))
	caesarCipher = input("Put Code In ")
	caesarCipher = list(caesarCipher)
	final = ""
	i = 0
	while i != len(caesarCipher):
		if ord(caesarCipher[i])-key < 97:
			ncaesarCipher = chr(ord(caesarCipher[i])+26-key)
			final+=(ncaesarCipher)
		else:
			final+=(chr(ord(caesarCipher[i])-key))
		i+=1
	print(final)
	
	
	
#Start input
	
EorD = input("'e' for encrypt, 'd' for decrypt (no numbers for either): ")
if EorD == 'e':
	encrypt()
elif EorD == 'd':
	decrypt()