from random import randint, randrange
class animal():
    def __init__(self, name, health, strength, loot):
        self.name = name
        self.health = health
        self.strength = strength
        self.loot = loot
class biome():
    def __init__(self, name, tempMin, tempMax, resources = [], animals = []):
        self.name = name
        self.tempMin = tempMin
        self.tempMax = tempMax
        self.resources = resources
        self.animals = animals
class resource():
    def __init__(self, name, amount):
        self.name = name
        self.amount = amount
class agent():
    def __init__(self, tempRessitance = 0, mHealth = 100, cHealth = 100, strength = 10, movePreference = 0.5, currentBiome = biome("Planes", 10, 30, [resource("Sticks", 2), resource("Wood", 1), resource("Stone", 1), resource("Iron", 1), resource("Leaves", 1)], [animal("Deer", 20, 3, [resource("Hide", 3), resource("Meat", 2)])]), items = {None:1}, id = 0):
        
        
        self.tempRessitance = tempRessitance
        self.mHealth = mHealth
        self. cHealth = cHealth
        self.strength = strength
        self.movePreference = movePreference
        self.currentBiome = currentBiome
        self.items = items
        self.id = id
class crafting():
    def __init__(self, items, output, workStation = None):
        self.items = items
        self.output = output
        self.workStation = workStation
resources = [
    resource("Sticks", 2),
    resource("Wood", 1),
    resource("Stone", 1),
    resource("Iron", 1),
    resource("Leaves", 1),
    resource("Pickaxe", 1), 
    resource("Hide", 3),
    resource("Meat", 2)
]
craftingRecipes = [
    crafting({resource("Sticks", 2):4, resource("Iron", 1) : 3}, resource("Pickaxe", 1))
]

animals = [
    animal("Deer", 20, 3, [resource("Hide", 3), resource("Meat", 2)])
]

biomes = {
    biome("Planes", 10, 30, [
        resource("Sticks", 2),
        resource("Wood", 1),
        resource("Stone", 1),
        resource("Iron", 1),
        resource("Leaves", 1)
    ], [animal("Deer", 20, 3, [resource("Hide", 3), resource("Meat", 2)])]) : 0
}



agents = []
for i in range(20):
    agents.append(agent(randint(-10,10), randint(90, 110), randint(90, 110), randint(8,12), id = i))


def turn(agents, craftingRecipes, biomes):
    def pickUpResource(agent):
        r = agent.currentBiome.resources
        
        r = r[randrange(len(r))]
        print(agent.id)
        print(r)

        if r in agent.items:
            agent.items[r] += 1
        else:
            agent.items[r] = 1
        print(agent.items)
        return agent
    def craftResource(agent, craftingRecipes):
        craftingRecipe = craftingRecipes[randrange(0, len(craftingRecipes))]
        a = agent
        t = False
        if craftingRecipe.workStation not in list(a.items.keys()):
            return agent

        l = list(craftingRecipe.items.items())
        for i in range(len(list(craftingRecipe.items.items()))):
            if l[i][0] in a.items:
                if l[i][1] <= a.items[l[i][0]]:
                    a.items[l[i][0]] -= l[i][1]
                else:
                    t = True
                    break
            else:
                t = True
                break
        

        if t == True:
            a=0
            return agent
        else:
            print("Crafting")
            if craftingRecipe.output in a.items:
                a.items[craftingRecipe.output] += 1
            else:
                a.items[craftingRecipe.output] = 1
            return a
    def moveBiome(agent, biomes):
        
        agent.currentBiome = list(biomes.keys())[randrange(len(list(biomes.keys())))]
        return agent
    def hunt(agent):
        if randint(0, 5) == 5:
            return agent
        animal = agent.currentBiome.animals[randrange(0, len(agent.currentBiome.animals))]

        while True:
            if animal.strength > agent.cHealth:
                return "Dead"
            else:
                agent.cHealth -= animal.strength
            if animal.health < agent.strength:
                break
            else:
                animal.health -= agent.strength
        l = (animal.loot)
        t = len(animal.loot)
        l = (animal.loot[randrange(t)])
        
        if l in agent.items:
            agent.items[l] +=1
        else:
            agent.items[l] = 1
        return agent

    for i in range(len(agents)):
        
        
        t = randrange(0, 4)
        # print(i,t)
        if t == 0:
            agents[i] = pickUpResource(agents[i])
            print(agents[i])
        if t == 1:
            agents[i] = craftResource(agents[i], craftingRecipes)
        if t == 2:
            agents[i] = moveBiome(agents[i], biomes)
        if t == 3:
            agents[i] = hunt(agents[i])

    try:
        agents.remove("Dead")
        print("Someone Died")
    except:
        pass
    return agents


for i in range(1):
    agents = turn(agents, craftingRecipes, biomes)


print(list(agents[10].items.items()))

# q = (sorted(agents, key=lambda x: len(list(x.items.items())), reverse=False)[0].items)
# for i in range(len(list(q.items()))):
#     # print( list(q.items())[i][0].name , list(q.items())[i][1] )
#     try:
#         print(list(q.items())   [i][0].name  , list(   q.items())   [i][1] )
#     except:
#         pass

print(agents)