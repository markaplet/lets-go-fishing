#  ------------------------------------
#  Load Base Game States
#  ------------------------------------

## Create a GamesState scoreboard for managing behind the scenes score keeping
scoreboard objectives add GameState dummy

## Initialize base scoreboard values
scoreboard players set dummy GameState 0
scoreboard players set countdown GameState 81
scoreboard players set difficulty GameState 1

## Announce that scoreboard was added
tellraw @a ["",{"text":"Scoreboard:"},{"text":" GameState","color":"green"},{"text":" added"}]

## Announce that game was successfully loaded
tellraw @a "Game Loaded"