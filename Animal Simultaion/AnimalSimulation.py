import numpy as np
import matplotlib.pyplot as plt


points = 20

reproduceValue = 1.2




y = [x+1 for x in range(points)]
x = []


n = 0.5


# print(reproduceValue * x * (1- x))
for null in range(points):
    n = reproduceValue * n * (1- n)
    x.append(n)
    # print(reproduceValue * x * (1- x))

#Points is constanint across all animals, it represents time on the x axis.
def createAnimal(reproduceValue, n, points):
    x = [n]
    for null in range(points):
        n = reproduceValue * (n) * (1 - n)
        x.append(n)
    return x




fig, ax = plt.subplots(figsize=(10,6))

ax.scatter([0,1],[0,1] ,facecolor = "white", s = 1)


# ax.scatter(y, createAnimal(2.4, 0.5, points), facecolor='black', s = 2, linestyle='-', marker='o')
# ax.scatter(y, createAnimal(3.6, 0.5, points), facecolor='mediumvioletred', s = 2,  marker='o')

#3.6321
#4.06 is the first number to kill off the population in less than 20 iterations
ax.plot(createAnimal(4.06, 0.4, points), linestyle='-', marker='o', color = "black")
# ax.plot(createAnimal(2.8, 0.1, points), linestyle='-', marker='o', color = "lightgreen")

plt.show()


x = createAnimal (2, 0.4, points)
y = []
for i in range (len (x)):
    y.append (x[i] - x[i-1])

print(sum (y) / len(y))