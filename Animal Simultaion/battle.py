from math import sqrt, log
from rich import print
from time import sleep
class fighters():
    def __init__(self, name, strength = 5, health = 20, speed = 5, escape = 10):
        self.name = name
        self.strength = strength
        self.mHealth = health
        self.cHealth = health
        self.speed = speed
        self.escape = escape
        self.wins = 0

from random import randint
def d20():
    return randint(1,20)
def d6():
    return randint(1,6)

def strBonus(avatar):
    t = avatar.strength * (d20()/10)
    return t

def speedBonus(avatar):
    t = avatar.speed * (max(d6(), d6(), d6()) / 4)
    return t

def fightWPrint(A, B):
    print("[bold plum2]"+str(A.name)+ " is fighting "+str(B.name) + "[/bold plum2]")
    sleep(1)

    while True:
        aSt=strBonus(A)
        aSe=speedBonus(A)
        print("[blue]"+A.name+ " hits for "+ str(round(sqrt(aSt*aSe),2))+ " damage[/blue]")
        if B.cHealth > (aSt * aSe):
            B.cHealth -= (aSt * aSe)
        else:
            aWins = True
            break
        sleep(1)
        bSt=strBonus(A)
        bSe=speedBonus(A)
        print("[gold3]"+B.name+ " hits for "+ str(round(sqrt(bSt*bSe),2)) + " damage[/gold3]")

        if A.cHealth > (bSt * bSe):
            A.cHealth -= (bSt * bSe)
        else:
            aWins = False
            break
        sleep(1)
    death = False
    sleep(1)

    # A.cHealth = A.mHealth Removed From Print Fight
    # B.cHealth = B.mHealth

    if aWins: 
        print("[bold indian_red]"                       +
        "\nName: "            +str(A.name)              +
        "\nMax Health: "      +str(A.mHealth)           +
        "\nCurrent Health: "  +str(round(A.cHealth, 2)) +
        "\nStrength: "        +str(A.strength)          +
        "\nSpeed: "           +str(A.speed)             +
        "\nEscape: "          +str(A.escape)            +
        "\nWins: "            +str(A.wins)              +
        "\nGeneration: "      +str(len(A.name))         +
        "[/bold indian_red]\n"
        )

    else:
        print("[bold indian_red]"                       +
        "\nName: "            +str(B.name)              +
        "\nMax Health: "      +str(B.mHealth)           +
        "\nCurrent Health: "  +str(round(B.cHealth, 2)) +
        "\nStrength: "        +str(B.strength)          +
        "\nSpeed: "           +str(B.speed)             +
        "\nEscape: "          +str(B.escape)            +
        "\nWins: "            +str(B.wins)              +
        "\nGeneration: "      +str(len(B.name))         +
        "[/bold indian_red]\n"
        )

    if aWins:
        A.wins+=1
        print("[green1]"+str(A.name) + " Wins[/green1]")
        sleep(1)
        if B.escape * (d20()/10) < A.strength:
            death = True
            print("[red bold]"+str(B.name) +" dies[/red bold]")
            return (aWins, death)
        else:
            print("[dark_magenta bold]"+str(B.name) +" escapes[/dark_magenta bold]")
            return (aWins, death)
    else:
        B.wins+=1
        print("[green1]"+str(B.name) + " Wins[/green1]")
        sleep(1)
        if A.escape + (d20()/10) < B.strength:
            death = True
            print("[red bold]"+str(A.name) +" dies[/red bold]")
            return (aWins, death)
        else:
            print("[sea_green1 bold]"+str(A.name) +" escapes[/sea_green1 bold]")
            return (aWins, death)

def fight(A, B):

    while True:
        aSt=strBonus(A)

        
        if B.cHealth > (aSt) + 1:
            B.cHealth -= (aSt) + 1
        else:
            aWins = True
            break

        bSt=strBonus(A)

        if A.cHealth > (bSt) + 1:
            A.cHealth -= (bSt) + 1
        else:
            aWins = False
            break

    death = False
    A.cHealth = A.mHealth
    B.cHealth = B.mHealth

    

    if aWins:
        A.wins +=1
        if B.escape * (d20()/10) < A.strength:
            death = True
            return (aWins, death)
        else:
            return (aWins, death)
    else:
        B.wins +=1
        if A.escape + (d20()/10) < B.strength:
            death = True
            return (aWins, death)
        else:
            return (aWins, death)

A = fighters(name = "Mikel", strength = 5, health = 20, speed = 20, escape = 10)
B = fighters(name = "Reuduefl", strength = 5, health = 20, speed= 5, escape = 10)

allFighters = [fighters(name = str(i), strength = 1, health = 1, speed = 1, escape = 1) for i in range(20)]


def turn(fighters):
    nextRoundOfFighters = []
    for i in range(0, len(fighters), 2):
        info = (fight(fighters[i], fighters[i+1]))
        if info[1] == True:
            if info[0] == True:
                nextRoundOfFighters.append(fighters[i])
            else:
                nextRoundOfFighters.append(fighters[i+1])
        else:
            nextRoundOfFighters.append(fighters[i])
            nextRoundOfFighters.append(fighters[i+1])
    return nextRoundOfFighters

def mutate(allFighters, count, fighters):
    allFighters.sort(key=lambda x: x.wins, reverse=True)
    for i in range(count - len(allFighters)):

        t = fighters(
            #———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
            strength    =    round(     allFighters[i].strength    +    (max(d6(), d6(), d6()) - 3),     3),
            health      =    round(     allFighters[i].mHealth     +    (max(d6(), d6(), d6()) - 3),     3),
            speed       =    round(     allFighters[i].speed       +    (max(d6(), d6(), d6()) - 3),     3),
            escape      =    round(     allFighters[i].escape      +    (max(d6(), d6(), d6()) - 3),     3),
            name        =               allFighters[i].name        +    (str(i))                       
            #———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        )
        allFighters.append(t)

    return allFighters

print("Started Rounds")
for i in range(0,10000):

    allFighters = (turn(allFighters))
    allFighters = mutate(allFighters, 30, fighters)
    if i % 1000 == 0:
        print(i)
    if allFighters[0].wins % 500 == True and i != 0:
        print(allFighters[0].name, "has", allFighters[0].wins - 1, "wins at round", i+1)
        allFighters[0].strength = allFighters[0].strength*1.001
        allFighters[0].speed =    allFighters[0].speed*1.001

allFighters.sort(key=lambda x: x.wins, reverse=True)
try:
    fightWPrint(allFighters[0], allFighters[1])
except KeyboardInterrupt:
    print("[bold indian_red]"                       +
    "\nName: "                  +str(allFighters[0].name)              +
    "\nMax Health: "            +str(allFighters[0].mHealth)           +
    "\nCurrent Health: "  +str(round(allFighters[0].cHealth, 2)) +
    "\nStrength: "              +str(allFighters[0].strength)          +
    "\nSpeed: "                 +str(allFighters[0].speed)             +
    "\nEscape: "                +str(allFighters[0].escape)            +
    "\nWins: "                  +str(allFighters[0].wins)              +
"\nGeneration: "            +str(len(allFighters[0].name))         +
    "[/bold indian_red]\n"
    )

    print("[bold indian_red]"                       +
    "\nName: "                  +str(allFighters[1].name)              +
    "\nMax Health: "            +str(allFighters[1].mHealth)           +
    "\nCurrent Health: "  +str(round(allFighters[1].cHealth, 2)) +
    "\nStrength: "              +str(allFighters[1].strength)          +
    "\nSpeed: "                 +str(allFighters[1].speed)             +
    "\nEscape: "                +str(allFighters[1].escape)            +
    "\nWins: "                  +str(allFighters[1].wins)              +
"\nGeneration: "            +str(len(allFighters[1].name))         +
    "[/bold indian_red]\n"
    )
