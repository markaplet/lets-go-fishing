
scoreboard objectives add GameState dummy
tellraw @a ["",{"text":"Scoreboard:","color":"red"},{"text":" GameState","color":"green"},{"text":" added"}]


scoreboard objectives add countdown dummy
scoreboard players set countdown countdown 81
tellraw @a ["",{"text":"Scoreboard:","color":"red"},{"text":" countdown","color":"green"},{"text":" added"}]

scoreboard objectives add dificulty dummy
scoreboard players set dificulty dificulty 1
tellraw @a ["",{"text":"Scoreboard:","color":"red"},{"text":" countdown","color":"green"},{"text":" added"}]

tellraw @a "Game Loaded"