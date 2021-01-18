#Script that takes from singlePerson.py, this will create familys, and children.

import singlePerson

#Ids are unique

people = []
peopleCount = 100
for i in range(peopleCount):
    people.append(singlePerson.Person(id = i,
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
    mother.family["Child"+str(cID)] = cID
    father.family["Child"+str(cID)] = cID
    return child

    
    


singlePerson.tablePrint(createChild(mother = people[0], father = people[1], cID = 200),[])
singlePerson.tablePrint(people[0], [])

