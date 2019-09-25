import random as r

typeOfProblem = input("What is the event: ")
nameOfPerson = input("What is the person's name: ")



deadThing = ["dog","grandma","second cousin","aunts dog","grandfather","my pet"]

time = ["injured","hurt","coming in late"]

finalExcuse = ["- I am very worried and need to get there quick please don't worry about me. Sorry again :(.","I hope I can help them feel better","sadly there is not enough time for me to come I don't want to be a burden for everyone else"]

timeInt = r.randrange(len(time))

print("Sorry",nameOfPerson,"I wish I could go to",typeOfProblem,"but my",deadThing[r.randrange(0,len(deadThing))],"is",time[timeInt],finalExcuse[timeInt])