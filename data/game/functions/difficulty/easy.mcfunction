#  ------------------------------------
#  Change Game Dificulty To Easy
#  ------------------------------------

## Update sign to reflect current difficulty
data merge block 10 13 -10 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:difficulty/medium"}}',Text2:'{"text":"Difficulty","bold":true,"color":"gold"}',Text3:'{"text":"Easy","bold":true,"color":"green"}'}

## Announce current difficulty
tellraw @a[gamemode=creative] ["",{"text":"Game Difficulty set to: "},{"text":"Easy","color":"green"}]

## Update GameState Scorebord
scoreboard players set difficulty GameState 1
