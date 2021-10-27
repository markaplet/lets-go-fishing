#  ------------------------------------
#  GameState scoreboard matches 5
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 5 - Winners"}]

summon armor_stand 0 5 -1 {CustomNameVisible:1b,Tags:["score","red_score"],CustomName:'{"text":"Red Score"}'}
summon armor_stand 0 5 -2 {CustomNameVisible:1b,Tags:["score","orange_score"],CustomName:'{"text":"Orange Score"}'}
summon armor_stand 0 5 -3 {CustomNameVisible:1b,Tags:["score","purple_score"],CustomName:'{"text":"Purple Score"}'}
summon armor_stand 0 5 -4 {CustomNameVisible:1b,Tags:["score","green_score"],CustomName:'{"text":"Green Score"}'}

scoreboard players operation @e[tag=red_score] catch = Red_Team catch
scoreboard players operation @e[tag=orange_score] catch = Orange_Team catch
scoreboard players operation @e[tag=purple_score] catch = Purple_Team catch
scoreboard players operation @e[tag=green_score] catch = Green_Team catch

scoreboard players operation #whoWon caught > @e[tag=score] caught
scoreboard players operation @e[tag=score] caught -= #whoWon caught

kill @e[tag=score]

## Winner Title
title @a times 20 60 20
title @a title {"text":"The winner is","color":"dark_red"}
title @a subtitle ["",{"text":"\u1360 "},{"selector":"@e[tag=score] "},{"text":"\u1360"}]

scoreboard players reset #whoWon

scoreboard players set dummy GameState 0