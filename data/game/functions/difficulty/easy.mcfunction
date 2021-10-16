#  ------------------------------------
#  Change Game Dificulty To Easy
#  ------------------------------------

## Update sign to reflect current difficulty
data merge block 2 5 4 {Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"function game:difficulty/hard"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"Easy","bold":true,"color":"green"}'}

## Announce current difficulty
tellraw @a[gamemode=creative] ["",{"text":"Game Difficulty set to: "},{"text":"Easy","color":"green"}]

## Update GameState Scorebord
scoreboard players set difficulty GameState 1
