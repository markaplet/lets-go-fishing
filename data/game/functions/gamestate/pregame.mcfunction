#  ------------------------------------
#  GameState scoreboard matches 3
#  ------------------------------------

## Debug output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 2 - Reset scores"}]

## Reset countdown timer so it can be reused again
scoreboard players set countdown GameState 81



## Summon adult sheep for easy mode
execute if score difficulty GameState matches 1 run summon sheep 6 4 15 {Silent:1b,NoAI:1b,Color:1b}

## Summon baby sheep for hard mode
execute if score difficulty GameState matches 2 run summon sheep 6 4 15 {Silent:1b,NoAI:1b,Color:1b,Age:-25000}

## Set gamestate to running
scoreboard players set dummy GameState 4