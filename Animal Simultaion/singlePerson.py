#I swear my programs are turning into large print functions


from random import random

from rich.console import Console #https://github.com/willmcgugan/rich
from rich.table import Table #https://github.com/willmcgugan/rich 

import names #Cool random name finder, all the names are from census data from 1990 -> https://pypi.org/project/names/

import re #Regex (Be scared)

class Person():
    def __init__(self, name = None, gender = None, firstName = None, lastName = names.get_last_name(), age = 0, id = None, stats = {}, statMultiplyer = 1, family = {}, statValues = None):
        if gender == None:
            if random() < 0.5:
                gender = 'male'
                firstName = names.get_first_name(gender=gender)
            else:
                gender = 'female'
                firstName = names.get_first_name(gender=gender)
        if  firstName == None and gender != None:
            gender.lower()
            try:
                firstName = names.get_first_name(gender=gender)
            except:
                print("Hello, there is an error. The error is that your 'gender' variable was incorrect, it can only be 'male', or 'female'. How about trying it again. Or leave all name info blank and get a completly random name with a random gender also.")
        self.firstName = firstName
        self.lastName = lastName
        if name != None:
            if lastName == False:
                self.fullName = name
            else:
                self.fullName = name + " " + lastName
            #Below is an idea to allow input of only the last name. I might re-add this later.
            # if firstName == False:
            #     self.fullName = name
            # else:
            #     self.fullName = firstName + " " + name
        else:
            if lastName == False:
                self.fullName = firstName
            else:
                self.fullName = firstName + " " + lastName
        self.age = age
        self.gender = gender #Gender was never defined, which creates errors with x.gender is required
        self.id = id
        if statValues == None:
            statDict = dict.fromkeys(stats)
            for key in statDict:
                statDict[key] = round((random()-0.5) * 10  * statMultiplyer, 2)
            
        else:
            statDict = dict(zip(stats, statValues))

        if stats != {}:
            statDict["statSum"] = round(sum(statDict.values()), 2)

        self.stats = statDict
        self.family = family
def tablePrint(person, hide) -> None:
        
    console = Console()
    #Dict value = {}
    dict = person.__dict__

    table = Table(show_header=True, header_style="bold magenta")


    table.add_column("Variable", justify="left")
    table.add_column("Value", justify="left")

    regex = re.compile('(?!^)(?=[A-Z])', re.MULTILINE) # Turns multiWordFunction -> Multi Word Function


    for key in dict:
        if key in hide:
            continue

        if key != "stats":
                
            regexReormattedText = re.sub(regex, " ", key)
            regexReormattedText = str(regexReormattedText[0].upper())+ str(regexReormattedText[1:]) # Cannnot use .capatalize() as it makes all lowercase
            table.add_row("[red bold]" + str(regexReormattedText) + "[/red bold]", "[blue bold]" + str(dict[key]) + "[/blue bold]")
        else:
            key1 = dict[key]
            for key2 in key1:
                regexReormattedText = re.sub(regex, " ", key2)
                regexReormattedText = str(regexReormattedText[0].upper()) + str(regexReormattedText[1:])
                if (key2 != list(key1.keys())[-1]):
                    if float(key1[key2]) < 0:
                        table.add_row("[blue bold]" + str(regexReormattedText) + "[/blue bold]", "[red bold]" + str(key1[key2]) + "[/red bold]")
                    else:
                        table.add_row("[cyan bold]" + str(regexReormattedText.capitalize()) + "[/cyan bold]", "[green bold]" + str(key1[key2]) + "[/green bold]")


                else:
                    if "statSum" not in hide:
                        if float(key1[key2]) < 0:
                            table.add_row("[green bold]" + str(regexReormattedText) + "[/green bold]", "[red bold]" + str(key1[key2]) + "[/red bold]")
                        else:
                            table.add_row("[green bold]" + str(regexReormattedText.capitalize()) + "[/green bold]", "[green bold]" + str(key1[key2]) + "[/green bold]")
    console.print(table)

def findCritical(person):
    d = person.stats.copy()
    del d['statSum']
    if max(list(d.values())) > abs(min(list(d.values()))):
        top = (max(list(d.values())))
            
        dKeys = list(d.keys())
        dValues = list(d.values())

        position = dValues.index(top)
        return(dKeys[position], "u")
    else:
        bottom = (max(list(d.values())))

        dKeys = list(d.keys())
        dValues = list(d.values())

        position = dValues.index(bottom)
        return(dKeys[position], " d")

#Summary Removed as it was useless, and had problems I did not want to fix.

if __name__ == "__main__":
    #This program will create and follow a single person. It will be modular so it can be redesturbuted in a import function

    from rich import print #Delete this later, it will slow down the program. But while debuging keep it as it looks nice.
    from os import system #Delete Later
    system("clear") #Delete Later

    person = (Person(
        age=25,
        firstName='William',
        lastName='Banquier',
        id=0,
        stats=["Chasity", "Absitince", "Liberality", "Diligence", "Patience", "Kindness", "Humility"], #Seven virtues, you can also use 'Strenth', 'Wisdom', and any thing else.
        statValues=[99,99,99,99,99,99,99], #Input Custom Stats
        gender="male", #has to be lowercase, and either male or female
        # lastName=False
    ))
    tablePrint(person, ["firstName", "lastName","id","family"])

