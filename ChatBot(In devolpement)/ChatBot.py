#imports

#functions

#Calculator Function
def math(x,sntax,y):
	if sntax == "+":
		print("The answer is",x+y)
	elif sntax == "-":
		print("The answer is",x-y)
	elif sntax == "*":
		print("The answer is",x*y)
	else:
		print("The answer is",x/y)


finished = False
testNS = input()
mathTest = testNS.split()

#Calculator Function Set Up
if "+" in mathTest or "-" in mathTest or "*" in mathTest or "/" in mathTest:
	pointA = 0
	pointB = 0
	for i in range(0,len(mathTest)):
		try:
			int(mathTest[i])
			if pointA!=0:
				pointB=i
			else:
				pointA=i
		except:
			x=""
try:
	math(int(mathTest[pointA]),mathTest[pointA+1],int(mathTest[pointB]))
	finished=True
except:
	randomVar=0
#End Of Calculator

greetings = ['hello','hi','hey','yo']

if finished == False:
	for i in range(0,len(greetings)):
		if greetings[i] == mathTest[0].lower():
			print("Hey")
			mathTest.remove(greetings[i])
			break
if finished == False:
	if "what" in mathTest or "whats" in mathTest or "what's" in mathTest:
		mathTest.remove(mathTest[0])
		if "name" in mathTest:
			print("My name is William")		
