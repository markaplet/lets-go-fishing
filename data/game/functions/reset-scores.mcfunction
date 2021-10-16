#  ------------------------------------
#  GameState scoreboard matches 2
#  ------------------------------------

tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 2 - Reset scores"}]
scoreboard players set dummy GameState 3

## Reset countdown timer so it can be reused again
scoreboard players set countdown GameState 81