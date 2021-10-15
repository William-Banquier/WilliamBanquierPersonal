class Agent():
    def __init__(self, dna):
        self.dna = dna
        self.stats = Agent.read_DNA(self)
        print(self.stats)
        return
    def read_DNA(self):
        stats = {}
        currentInt = ""
        currentLetter = self.dna[0]
        for i in range(1,len(self.dna)):
            try:
                int(self.dna[i])
                currentInt+=self.dna[i]
                pass
            except:

                try:
                    stats[currentLetter] = int(currentInt)
                except:
                    stats[currentLetter]=0
                currentLetter = self.dna[i]
                currentInt = ""
                pass
        try:
            stats[currentLetter] = int(currentInt)
        except:
            stats[currentLetter]=0
        return stats

agent1 = Agent("")