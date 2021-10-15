#I wrote stuff down on paper for this code (3 lines of text. BE SCARED)
class HumAIn():
    def __init__(self, name, brain):
        self.name = name
        self.brain = brain
        return
    def __str__(self):
        return self.name
    def __repr__(self):
        return self.name
    

class Door():
    def __init__(self, state):
        self.state = state #Open (True) or closed (False)
    def switchState(self, state):
        self.state = not state
# def convertToData(object):



door = Door(False)
door.switchState(door.state)
print(door.state)
