#Asexual Animal Simulation 


'''

Animals have a hunger stat, a fertility stat, and a dynasty stat.
The stats affect their score, stats are gained though random mutations, and saved though them have a baby.
Dynasty can be improved or deproved by the 'skills' of the kid. If tbe kid is weak dynasty goes down and if strong dynasty goes up.
Next project will have more dynasty/prestige coming into play. Next will be a basic human simulation which follows greed and loyalty.
With some other stats too.


'''



import random as r

class AnimalKingdom ():
    def __init__ (self, dynasty):
        self.hunger = 1
        self.fertility = 1
        self.dynasty = 0
        self.score = (self.fertility * self.dynasty) - self.hunger

    def mutate (self, hunger, fertility, score):
        randomNum = r.random ()
        if randomNum < 0.5:
            self.hunger = self.hunger * (r.random () * 2)
            self.score = (self.fertility * self.dynasty) - self.hunger
        elif randomNum > 0.5:
            self.fertility = self.fertility * (r.random () * 2)
            self.score = (self.fertility * self.dynasty) - self.hunger

    def setStats(self, animalsParent): 
        self.hunger = animalsParent.hunger
        self.fertility = animalsParent.fertility
        if r.random() < 0.2:
            self.mutate (self.hunger, self.fertility, self.score)
        self.dynasty = animalsParent.dynasty + 1

        self.setScore(self.score)


        if self.score < animalsParent.score:
            self.dynasty = animalsParent.dynasty - 1
        if self.dynasty < 0:
            self.dynasty = 0


    def setScore(self, score):
        self.score = (self.fertility * self.dynasty) - (self.hunger)


def addNew(animals):
    x = len(animals)
    for i in range(0,len(animals)):
        animals.append (AnimalKingdom (animals[i].dynasty))
        animals[i+x].setStats(animals[i])
    for i in range(len(animals)):
        animals[i].setScore(animals[i].score)
        # if animals[i].dynasty:
            # print(True)

    animals.sort(key = lambda items: -items.score) 
    animals = animals[:len(animals)-(len(animals)//2)]
  
    return animals





#ROUND ONE CODE, NOT REAPETABLE

animals = []

for i in range (50):
    animals.append (AnimalKingdom (0))
    if r.random() < 0.2:
        animals[i].mutate (animals[i].hunger, animals[i].fertility, animals[i].score)
animals.sort(key = lambda items: -items.score)

animals = animals[:len(animals)-(len(animals)//2)]


turns = 200000
for i in range(turns):
    addNew(animals)
    # print(animals[0].score)

    print("%"+str(100*(i/turns)),"finished")
    # print(len(animals))
    if len(animals) > 50:
        animals = animals[0:50]




# for i in range (0,len (animals)):
#     print(animals[i].score)
animals.sort(key = lambda items: -items.score) 
print("Score Champion")
print(animals[0].hunger, animals[0].fertility, animals[0].dynasty, animals[0].score)

animals.sort(key = lambda items: -items.dynasty) 
print("Dynasty Champion")
print(animals[0].hunger, animals[0].fertility, animals[0].dynasty, animals[0].score)