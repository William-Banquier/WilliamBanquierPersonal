from requests import get
from os import system
from time import sleep
from rich import print

stock = "NVCN.TO"
sleepTime = 120
startingValue = 1.500
shareCount = 300

def moneyGained(startingValue, value):
    return value - startingValue
def findStockInfo(stock):
    site = get("https://ca.finance.yahoo.com/quote/"+stock).text
    value = float(site.split("Trsdu(0.3s) Fw(b) Fz(36px) Mb(-4px) D(ib)")[1].split(">")[1].split("<")[0])

    return site, value

while True:
    site, value = findStockInfo(stock)
    system("clear")
    print(stock)
    if value > startingValue:
        print("[bold green]" + str(value) + "[/bold green]")
        print("[bold green]$" + str(round((moneyGained(startingValue, value) * shareCount), 4)) + " gained[/bold green]")
    else:
        print("[bold red]" + str(value) + "[/bold red]")
        print("[bold red]$" + str(round((moneyGained(startingValue, value) * shareCount), 4)) + " lost[/bold red]")
    sleep(sleepTime)
    
