#Script that takes from singlePerson.py, this will create familys, and children.

import singlePerson

#Ids are unique

people = []
peopleCount = 100
currentID = 0
for i in range(peopleCount):
    currentID = i
    people.append(singlePerson.Person(id = currentID,
                                    age = int(singlePerson.random()*100),
                                    stats=["Chasity", "Absitince", "Liberality", "Diligence", "Patience", "Kindness", "Humility"],))

# singlePerson.tablePrint(people[0], [])

#this function is for parent w/ inherited stats
def createChild(mother, father, cID, genderConfirm = False, mutations = False, mutationChance = 0.05, takeLastNameFromFather = True):
    if genderConfirm == True:
        if mother.gender != 'female' or father.gender != 'male':
            print("Error: 'mother.gender' not equal to female and or 'father.gender' not equal to male")
            print(mother.gender, father.gender)
    
    mStats = list(mother.stats.values())
    fStats = list(father.stats.values())
    cStats = []
    if len(mStats) != len(fStats):
        print("Error, the amount of stats on both objects are differnt. Try to make them the same amount.")

    if mutations == False:
        for i in range(len(mStats)):
            #No mutations
            cStats.append(round((mStats[i] + fStats[i]) / 2, 2))
    else:
        if singlePerson.random() < mutationChance:
            cStats.append(round(((mStats + fStats) / 2) * singlePerson.random() * 2, 2))
        else:
            cStats.append(round((mStats + fStats) / 2, 2))


    if takeLastNameFromFather == True:
        cLastName = father.lastName
    else:
        cLastName = mother.lastName
    
    if singlePerson.random() < 0.5:
        cGender = 'female'
    else:
        cGender = 'male'
    
    child = singlePerson.Person(lastName=cLastName,
                                gender = cGender,
                                stats=mother.stats.keys(),
                                statValues=cStats,
                                family={"mother":mother.id, 'father':father.id},
                                id = cID)
    return child


def createGeneration(people, startingID = 0, endingID = None, countID = None, amountOfNewPeople = None):
    if amountOfNewPeople == None:
        amountOfNewPeople = int (len (people) / 2)
    people.sort(key=lambda x: x.id, reverse=False)
    if endingID == None:
        people = people[startingID::]
    else:
        people = people[startingID:endingID]
    if countID == None:
        countID = people[-1].id + 1

    kids = []
    for i in range(amountOfNewPeople):
        kids.append(createChild(mother = people[i],
                                father = people[int(len(people) / 2) + i], cID = countID))
        try:
            people[i].age+=1
        except:
            people[i].age = 0
        try:
            people[int (len (people) / 2) +i].age += 1
        except:
            people[int (len (people) / 2) +i].age = 0
        countID+=1
    return kids

def findPerson(people, id):
    for i in range(len(people)):
        if people[i].id == id:
            return people[i]

def removeGeneration(people, cutOff = 3):
    peopleCount = len(people)
    people.sort(key=lambda x: x.age, reverse=True)
    singlePerson.tablePrint(people[0], [])
    for i in range(peopleCount):
        if people[i].age < 3:
            return
        people.pop(0)


# people .append (createChild(mother = people[i], father = people[int(peopleCount/2)+i], cID = currentID))


# singlePerson.tablePrint(people[-1],[])
# print(currentID)
people += (createGeneration(people))
removeGeneration(people)
people += (createGeneration(people))
removeGeneration(people)
people += (createGeneration(people))
removeGeneration(people)
people += (createGeneration(people))
removeGeneration(people)
people += (createGeneration(people))

print(people[0].age)

# singlePerson.tablePrint(people[200], [])
# singlePerson.tablePrint(findPerson(people, 125), [])
