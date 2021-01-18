#This works but has no purpose. 


#William Banquier

import numpy as np
from interaction import *

#Create people
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

buyingOrder(people, land)


x = (sorted(people, key=lambda x: x.reputation, reverse=True))

# characterInfoPrint(x)
# landInfoPrint(land[x.land[0]])

#Counter of types of land
# v3 = 0
# v2 = 0
# v1 = 0
# v0 = 0
# for i in range(50):
#     try:
#         if (land[x[i].land[0]].type) == 3:
#             v3 +=1
#         elif (land[x[i].land[0]].type) == 2:
#             v2 +=1
#         elif (land[x[i].land[0]].type) == 1:
#             v1 +=1
#         else:
#             v0 +=1
#     except:
#         pass


characterInfoPrint(x[0])
















class NeuralNetwork():

    def __init__(self):
        np.random.seed(1)
    
        #Create random weights in the range of 0,-1
        self.synaptic_weights = 2 * np.random.random((4,1)) - 1
        


    def sigmond(self, x):
        #Sigmoid function https://en.wikipedia.org/wiki/Sigmoid_function
        return 1 / (1+np.exp(-x))
    
    def sigmond_derifative(self,  x):
        #Sigmoid derifative https://towardsdatascience.com/derivative-of-the-sigmoid-function-536880cf918e
        return x * (1-x)

    #Training Inputs, Training Outputs, Amount of Iterations for training
    def train (self, training_inputs, training_outputs, training_iterations):

        #Training for 'training_iterations' amount
        for iteration in range(training_iterations):

            #Creating Output from inputs in "think" function
            output = self.think(training_inputs)

            #Finds error between preinputted training output, an also machinelearning output
            error = training_outputs - output

            #Creates ajustments using matrix multiplication between the Transformed 'training_inputs'
            #and also the error multiplyed by the sigmoid derifative of the output
            adjustments = np.dot(training_inputs.T, error*self.sigmond_derifative(output))

            #Adds adjustments to the synaptic weights (ajustments can be negitive or positive)
            self.synaptic_weights += adjustments

    def think (self, inputs):

        #Turns inputs contents from int to float so it can run proper
        inputs = inputs.astype(float)
        #Puts inputs into sigmoid function, and also the random synaptic weights
        output = self.sigmond(np.dot(inputs, self.synaptic_weights))
        
        return output


if __name__ == "__main__":

    #Varible becomes class
    neural_network = NeuralNetwork()

    #Print Synaptic weights before training
    print("Random synaptic weights")
    print(neural_network.synaptic_weights)

    #Define inputs
    training_inputs = np.array([[100,100,100,100],
                                [-100,-100,100, 100],
                                [50,50, -50, 50],
                                [-50,-50, 100, 100]])
    #Define outputs
    training_outputs = np.array([[1, 1, 0, 1]]).T

    #Training function is called with the training inputs, and outputs defined above, and also the amount of iterations
    neural_network.train(training_inputs,training_outputs, 10000)

    #Weights after training are printed
    print("Synaptic weights after training")
    print(neural_network.synaptic_weights)

    #Userinput
    A = str(input("Input 1: "))
    B = str(input("Input 2: "))
    C = str(input("Input 3: "))
    D = str(input("Input 4: "))

    #Printing final data
    print("New situation: input data =",A,B,C,D)
    print("Output data:")
    print(neural_network.think(np.array([A,B,C,D])))
'''    
Three input length setup
#Printing final data
print("New situation: input data =",A,B,C)
print("Output data:")
print(neural_network.think(np.array([A,B,C])))'''

# AI will be for responses to questions depending on the opinion of the other person, see iteraction.py
