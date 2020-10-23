from math import trunc, floor
from termcolor import colored
from random import random
def createRelation (characterOne, characterTwo):
        if characterOne.id == characterTwo.id:
            return
        opinion = 0
        if characterOne.greed > 5:
            try:
                opinion += ((characterTwo.wealth + (characterTwo.profit * 3)) / (characterOne.wealth + (characterOne.profit * 3))) * characterOne.greed
            except:
                opinion = 0
        if characterOne.location == characterTwo.location:
            characterOne.relations [characterTwo.id] = trunc(clip( clip(opinion, -20, 20) + characterTwo.reputation, -100, 100))
        else:
            characterOne.relations [characterTwo.id] = trunc(clip( clip(opinion, -20, 20) + characterTwo.reputation, -100, 100)) // 2
def saveRelations(object):
    object.relations = dict(list({k: v for k, v in sorted(object.relations.items(), key=lambda item: item[1])}.items())[:5] + list({k: v for k, v in sorted(object.relations.items(), key=lambda item: item[1])}.items())[-5:])   
def findBuyableLand(person, land) -> list:
    possibleLand = []    
    #Shows IDS
    for i in range(0,len(land)):
        if land[i].ownership == -1:
            if land[i].location != person.location:
                if not (person.wealth) < (land[i].value * 2) - person.reputation:
                    possibleLand.append([land[i].id, land[i].value * 2])
            else:
                if not (person.wealth) < (land[i].value) - person.reputation:
                    possibleLand.append([land[i].id, land[i].value])
    return (list(sorted(possibleLand,key=lambda l:l[1], reverse=True)))
def buyingOrder(people, land) -> list:
    people_wealth = sorted(people, key=lambda x: x.wealth + x.reputation, reverse=True)
    # people_lands = sorted(people, key=lambda x: x.lands_unowned, reverse=True)
    for i in range(len(people_wealth)):
        try:
            people_wealth[i].land = findBuyableLand(people_wealth[i], land)[0]

        except:
            pass
        counter = 0
        for x in land:
            try:
                if x.id == people_wealth[i].land[0]:
                    land[counter].ownership = people_wealth[i].id
                    # print(land[counter].ownership)
                    people_wealth[i].wealth -= land[counter].value
            except:
                break
            counter += 1


def characterInfoPrint(object) -> None:
    string = ""

    string += (colored(("ID: " + str(object.id)), "cyan"))+"\n"

    
    if object.wealth < 0:
        string += (colored("Current Wealth = " + str(object.wealth), "red"))+"\n"
    elif object.wealth > 0:
        string += (colored("Current Wealth = " + str(object.wealth), "green"))+"\n"
    else:
        string += (colored("Current Wealth = " + str(object.wealth), "yellow"))+"\n"

    if object.profit < 0:
        string += (colored("Profit = " + str(object.profit), "red"))+"\n"
    elif object.profit > 0:
        string += (colored("Profit = " + str(object.profit), "green"))+"\n"
    else:
        string += (colored("Profit = " + str(object.profit), "yellow"))+"\n"

    if object.reputation < 0:
        string += (colored("Reputation = " + str(object.reputation), "red"))+"\n"
    elif object.reputation > 0:
        string += (colored("Reputation = " + str(object.reputation), "green"))+"\n"
    else:
        string += (colored("Reputation = " + str(object.reputation), "yellow"))+"\n"

    string += (colored("Location = " + str(object.location), "cyan"))+"\n"

    string += (colored("Land = " + str(object.land), "cyan"))+"\n"


    #Shows Relations -- Enable if you want
    # if input("Show Relations (y): ").lower() == "y":
    #     relations = list(object.relations.items())
    #     relationString = ""
    #     for i in range(len(relations)):
    #         relationString += colored("ID = " + str(relations[i][0]) + ", ", "cyan") + " "
    #         if relations[i][1] < 0:
    #             relationString += colored("Relation = " + str(relations[i][1]), "red") + " "
    #         elif relations[i][1] > 0:
    #             relationString += colored("Relation = " + str(relations[i][1]), "green") + " "
    #         else:
    #             relationString += colored("Relation = " + str(relations[i][1]), "yellow") + " "

    #     string += relationString + "\n"

    print(string)
def landInfoPrint(object) -> None:
    string = ""

    string += (colored(("ID: " + str(object.id)), "cyan"))+"\n"

    string += (colored("Location = " + str(object.location), "cyan"))+"\n"   

    if object.type == 0:
        string += (colored("Type = " + str(object.type), "red"))+"\n"
    elif object.type == 1:
        string += (colored("Type = " + str(object.type), "grey", 'on_white'))+"\n"
    elif object.type == 2:
        string += (colored("Type = " + str(object.type), "blue"))+"\n"
    else:
        string += (colored("Type = " + str(object.type), "yellow"))+"\n"
    
    print(string)
def clip(value, lower, upper):
    return lower if value < lower else upper if value > upper else value
class Itellegent_Animal():
    def __init__ (self, id, wealth, greed, location, reputation, income, losses, land):
        self.id = id
        self.wealth = wealth
        self.greed = greed
        self.relations = {}
        self.location = location
        self.reputation = reputation
        self.income = income
        self.losses = losses
        self.profit = income - losses
        self.land = land
class Land():
    def __init__(self, id, location, type, ownership):
        self.id = id
        self.location = location
        #Types are wastland (type 0) - (value 0), coal (type 1) - (value 20), lapis (type 2) - (value 40), gold (type 3) - (value 60)
        self.type = type 
        self.value = self.type * 20
        self.location = location
        #Ownership is character id [0...n] - intType. Unowned get an ownership value of -1
        self.ownership = ownership

people = []
land = []

for i in range(50): 
    people.append(Itellegent_Animal(i, trunc(100 * random())-50, floor(10 * random()), floor(3 * random()), trunc(100 * random())-50, floor(100 * random()), floor(100 * random()), []))
    
    randomNum = random()
    type = 0
    if randomNum > 0.9: 
        type = 3
    elif randomNum > 0.7: 
        type = 2
    elif randomNum > 0.4: 
        type = 1
    land.append(Land((i), floor(3 * random()), type, -1))

    for y in range(len(people)):
        createRelation(people[i],people[y])
    saveRelations(people[i])

'''
For the 0 in the index that number can be replaced from anywhere from 0 - 49 it shows the info of a character
'''
'''
landInfoPrint(land[0])
'''

buyingOrder(people, land)


x = (sorted(people, key=lambda x: x.reputation, reverse=True))

# characterInfoPrint(x)
# landInfoPrint(land[x.land[0]])

v3 = 0
v2 = 0
v1 = 0
v0 = 0
for i in range(50):
    try:
        if (land[x[i].land[0]].type) == 3:
            v3 +=1
        elif (land[x[i].land[0]].type) == 2:
            v2 +=1
        elif (land[x[i].land[0]].type) == 1:
            v1 +=1
        else:
            v0 +=1
    except:
        pass




'''
Land ownership
Owener ship is detuermend on the value of the land, and the reputaion of the owner

Price = land value - reputation | If location is diffenrt from person location price is multiplied by 3 for purchese
'''

from termcolor import cprint
cprint("Attention!", 'red', attrs=['bold'])
cprint(v3, "yellow")
cprint(v2, "blue")
cprint(v1, "grey", "on_white")
cprint(v0, "red")