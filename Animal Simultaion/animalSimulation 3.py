#Class of ages, and stats in class of generation

import random as r
from rich import print

def printInfo(allAnimals, ID):
    print(allAnimals[ID].age)
    print(allAnimals[ID].health)
    print(allAnimals[ID].strength)
    print(allAnimals[ID].healthTalent)
    print(allAnimals[ID].strengthTalent)

def addTime(allAnimals):
    for i in range(len(allAnimals)):
        allAnimals[i].health += allAnimals[i].healthTalent / ((allAnimals[i].age**2) + 1)
        allAnimals[i].strength += allAnimals[i].strengthTalent / ((allAnimals[i].age**2) + 1)
        allAnimals[i].age+=1
    return


class Animals():
    def __init__(self, name, parentHealthTalent = 1, parentStrengthTalent = 1):
        self.name = name
        self.health = 0
        self.strength = 0
        self.healthTalent = r.random() * 2 * parentHealthTalent
        self.strengthTalent = r.random() * 2 * parentStrengthTalent
        self.age = 0

allAnimals = []
for i in range(20):
    allAnimals.append(Animals(str(i)))

for i in range(40):
    addTime(allAnimals)

printInfo(allAnimals, 0)