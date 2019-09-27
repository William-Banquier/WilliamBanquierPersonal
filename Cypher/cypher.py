#This is is a ceaser cipher I made a while ago. I wanted to upgrade it and also practise commenting things out. 

#A ceaser cipher is when you get the value of a letter (a = 1, b = 2) then increase the value by the key.
#If the key was 1 a would turn into b, and b into c

#This is technily not a ceaser cipher anymore

#for more parts of a ceaser cipher go to this link: http://practicalcryptography.com/ciphers/caesar-cipher/



#imports
import random


#functions

#encrypt

def encrypt():

	#gets unscrabled code and turns into list
	caesarCipher = input("Put Code In (You will get random key)")
	caesarCipher = list(caesarCipher)

	#random key
	x = random.randrange(0,26)
	#final output
	final = ""

	#using a while loop like a for loop...
	i = 0
	while i != len(caesarCipher):
		#checks if assii value of the letter of the input is a letter and with x is greater than the letter z
		if ord(caesarCipher[i])+x > 122:
			#adds x to the assii value of the letter minus 26 then turns the number back into a string.
			ncaesarCipher = chr(ord(caesarCipher[i])-26+x)
			#adds to final output
			final+=(ncaesarCipher)
		else:
			#if assii value with x is less than z final can just be the number plus x with out -26
			final+=(chr(ord(caesarCipher[i])+x))
		#sould of made it a for loop
		i+=1

	#random letters before and after text

	#empty string
	y = ""

	#for loop that runs a random amount of times
	for i in range(0,random.randrange(5,25)):
		#y gets a random letter from the string at line ****** ADD Line
		y+=letterCharSide[random.randrange(0,len(letterCharSide)-1)]
	#adds y to the start of final
	final = y + final


	#exact same thing but adds y to the back of final
	y = ""
	for i in range(0,random.randrange(5,25)):
		y+=letterCharSide[random.randrange(0,len(letterCharSide)-1)]
	final += y
	print(final, "Your Key Is", x)
	
#decrypt

def decrypt():
	#integer input for key
	key = int(input("Put Key In: "))
	#str input for the cipher
	caesarCipher = input("Put Code In ")
	#turns cipher into list 
	caesarCipher = list(caesarCipher)
	#output
	final = ""

	#should of used for loop
	i = 0
	while i != len(caesarCipher):
		#Checks if the value of the letter minus the key is greater than the value for "a"
		if ord(caesarCipher[i])-key < 97:
			#makes a new string which is just the letter plus the 26 minus the key.
			ncaesarCipher = chr(ord(caesarCipher[i])+26-key)
			#adds the letter to the output
			final+=(ncaesarCipher)
		else:
			#adds the letter to the out put. The letters value is subtracted by the key
			final+=(chr(ord(caesarCipher[i])-key))
		i+=1
	#final out put
	print(final)

#end of functions
	


#getting all the characters for later use
letterCharSide = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&()*+,-./:;?@[]^_`{|}~'



#Checking User Inputs
	
EorD = input("'e' for encrypt, 'd' for decrypt (no numbers for either): ")
if EorD == 'e':
	encrypt()
elif EorD == 'd':
	decrypt()