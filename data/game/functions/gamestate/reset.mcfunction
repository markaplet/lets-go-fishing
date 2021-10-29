#  ------------------------------------
#  GameState scoreboard matches 1
#  ------------------------------------

## Debug output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 1 - Reset Team Scores"}]

## Reset team scores to 0
scoreboard players set Red_Team catch 0
scoreboard players set Purple_Team catch 0
scoreboard players set Green_Team catch 0
scoreboard players set Gold_Team catch 0

## Reset game timers
scoreboard players set countdown GameState 81
scoreboard players set effects_timer GameState 100

## Move to gamestate 2 - Countdown
scoreboard players set dummy GameState 2