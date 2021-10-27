#  ------------------------------------
#  GameState scoreboard matches 5
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 5 - Winners"}]

## Scoreboard opperation to determine who won the match
scoreboard players operation $who_won catch > Red_Team catch
scoreboard players operation $who_won catch > Orange_Team catch
scoreboard players operation $who_won catch > Purple_Team catch
scoreboard players operation $who_won catch > Green_Team catch

## Announce the winner if team score is equal to
execute if score Red_Team catch = $who_won catch run say Red Team Won
execute if score Orange_Team catch = $who_won catch run say Orange Team Won
execute if score Purple_Team catch = $who_won catch run say Purple Team Won
execute if score Green_Team catch = $who_won catch run say Green Team Won

## Winner Title
title @a times 20 60 20
title @a title {"text":"The winner is","color":"dark_red"}
execute as @e[tag=whoWon] run title @a subtitle ["",{"text":"\u1360 "},{"selector":"@s "},{"text":"\u1360"}]

## Reset the who_won player 
scoreboard players reset $who_won catch

## Move game state back to the lobby
scoreboard players set dummy GameState 0