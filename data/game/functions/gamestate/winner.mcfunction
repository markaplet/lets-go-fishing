#  ------------------------------------
#  GameState scoreboard matches 5
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 5 - Winners"}]

## Scoreboard operation to determine who won the match
scoreboard players operation $who_won catch > Red_Team catch
scoreboard players operation $who_won catch > Orange_Team catch
scoreboard players operation $who_won catch > Purple_Team catch
scoreboard players operation $who_won catch > Green_Team catch

## Winner Title
title @a times 20 60 20
title @a title {"text":"The winner is","color":"dark_red"}

## Announce the winning team
execute if score Red_Team catch = $who_won catch run title @a subtitle ["",{"text":"Red Team"}]
execute if score Orange_Team catch = $who_won catch run title @a subtitle ["",{"text":"Orange Team"}]
execute if score Purple_Team catch = $who_won catch run title @a subtitle ["",{"text":"Purple Team"}]
execute if score Green_Team catch = $who_won catch run title @a subtitle ["",{"text":"Green Team"}]

## Reset the who_won player 
scoreboard players reset $who_won catch

## Move game state back to the lobby
scoreboard players set dummy GameState 0