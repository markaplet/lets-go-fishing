#  ------------------------------------
#  Load Base Game States
#  ------------------------------------

## Defults to lobby mode
#scoreboard players set dummy GameState 0

## Ensure the countdown timer is set to incase the game was reloaded mid countdown
scoreboard players set countdown GameState 81


## Announce that game was successfully loaded
tellraw @a ["",{"text":"Let's Go Fishing!","bold":true,"color":"red"},{"text":" \u1368Holiday Edition\u1368 "},{"text":"by","color":"green"},{"text":" hogbits","color":"green"}]