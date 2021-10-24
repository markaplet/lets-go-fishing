#  ------------------------------------
#  GameState scoreboard matches 3
#  ------------------------------------

## Debug output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 3 - Summon Sheep"}]

## Reset countdown timer so it can be reused again
scoreboard players set countdown GameState 81

## Summon sheep based on dificulty
execute if score difficulty GameState matches 1 run function game:difficulty/summon_sheep_easy
execute if score difficulty GameState matches 2 run function game:difficulty/summon_sheep_hard

## Set gamestate to running
scoreboard players set dummy GameState 4