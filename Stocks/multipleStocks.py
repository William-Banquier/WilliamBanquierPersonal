from requests import get
from os import system
from time import sleep
from rich import print

stock = "NOK"
sleepTime = 120
startingValue = 1.500
shareCount = 300

def moneyGained(startingValue, value):
    return value - startingValue
def findStockInfo(stock):
    value = float(get("https://ca.finance.yahoo.com/quote/"+stock).text.split("Trsdu(0.3s) Fw(b) Fz(36px) Mb(-4px) D(ib)")[1].split(">")[1].split("<")[0])
    return value




class Stocks():
    def __init__(self, stock, startingValue, shareCount, sleepTime):
        self.stock = stock
        self.startingValue = startingValue
        self.shareCount = shareCount
        self.sleepTime = sleepTime

        #Data That Will Be Updated
        self.value = findStockInfo(stock) 
        self.moneyGained = round(moneyGained(startingValue, self.value) * shareCount, 4)
        if __name__ == "__main__":
            print("INIT COMPLETE")

stocks = [
    Stocks("GME", 1, 600, 120),
]

from rich.table import Table
from rich.console import Console

def colouredGains(moneyGained):
    if moneyGained < 0:
        return "[bold red]$"+str(moneyGained)+"[bold red]"
    return "[bold green]$"+str(moneyGained)+"[bold green]"

def update(stockItem):
    stock = stockItem.stock
    stockItem.value = findStockInfo(stock)
    stockItem.moneyGained = round(moneyGained(stockItem.startingValue, stockItem.value) * stockItem.shareCount, 4)



def displayData(stocks):
    table = Table(show_header=True, header_style="bold magenta")

    table.add_column("Stock")
    table.add_column("Value", justify="right")
    table.add_column("Profit/Loss", justify="right")
    table.add_column("Shares", justify="right")

    for i in range(0,len(stocks)):
        
        table.add_row(
            "[bold yellow]"+stocks[i].stock+"[/bold yellow]",
            "[bold]"+str(stocks[i].value)+"[/bold]",
            colouredGains(stocks[i].moneyGained),
            "[bold]"+str(stocks[i].shareCount)+"[/bold]",
        )
        update(stocks[i])
    print(table)

    return

displayData(stocks)

stocks = sorted(stocks, key=lambda x: x.sleepTime, reverse=False)
sleepFor = (stocks[0].sleepTime)


while True:
    system("clear")
    displayData(stocks)
    sleep(sleepFor)
