#This is very gimmicky with the loading screen, the whole thing works, rich formatting items can be removed easly.

#Looks at servers being viewed on your computer. Might work on all computers in a public network. I would not know as I have not gone out recently because of the Covid-19 pandamic.

amountOfTime = 10

import os
import subprocess
from rich.progress import Progress
import time
x = 0
os.system("clear")
with Progress() as progress:
    task1 = progress.add_task("[red]Working...", total=amountOfTime)
    proc=subprocess.Popen("tshark -Y 'tls.handshake.extensions_server_name' -T json -a'duration:"+str(amountOfTime)+"'", shell=True, stdout=subprocess.PIPE, )
    while not progress.finished:
        progress.update(task1, advance=0.1)
        time.sleep(0.1)
        if x == 10:
            os.system("clear")
        x+=1
os.system("clear")
output=proc.communicate()[0]
from rich.console import Console
console = Console()
for i in range(1, len(str(output).split('server_name": "'))):
    console.print("[u]http://"+(str(output).split('server_name": "')[i].split('"')[0])+"[/u]", style="blue")