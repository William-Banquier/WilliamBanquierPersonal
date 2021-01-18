#Beep Boop, this will probbaly be dicontinued, not deleting this, as maybe there will be some value in this code that I do not see right now

#The thing most gained from this program was the practise with __function__ type functions. I deleted a lot of code while editing this. It is NOT optimized.



class Items():
    def __init__(self, name = None, type = None, location = None, materials = None, forger = None, owner = None, age = None, attack = None, use = None, unique = None):
        self.name = name #String
        self.type = type #String
        self.location = location #String
        self.materials = materials #2D list -> [[material -> string, percent -> float value from 0 - 1]]
        self.forger = forger #List, [name -> string, name -> string]
        self.owner = owner #List, [name -> string, name -> string]
        self.age = age #Int value greater than or equal to 0
        self.attack = attack #Int value
        self.use = use #String description of the tool, or wepons use
        self.unique = unique #Bool, leave None for if you don't know if the wepon is unique
    def printInformation(self):
        values = []
        for property, value in vars(self).items():
            if value != None:
                values.append(value)
        print(values)



if __name__ == "__main__":
    print("Debug Mode")
    Nose_Trimmer = Items("Nose Trimmer", "Misc", "Mike's Barbers", [["Iron", 0.8], ["Rubber", 0.2]], ["ACME Nose Trimmers CO"], ["Mike","Mikeson"], 8, 1, "A tool with the purpose of removing hair from the nose.")
    Rare_Sword = Items(name = "Rare Sword", attack = 3)
    Rare_Sword.printInformation()
    Nose_Trimmer.printInformation()

