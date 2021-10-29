#  ------------------------------------
#  Change Game Dificulty To Easy
#  ------------------------------------

## Update sign to reflect current difficulty
data merge block 10 13 -10 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:difficulty/hard"}}',Text2:'{"text":"Difficulty","bold":true,"color":"gold"}',Text3:'{"text":"Medium","bold":true,"color":"aqua"}'}

## Announce current difficulty
tellraw @a[gamemode=creative] ["",{"text":"Game Difficulty set to: "},{"text":"Easy","color":"green"}]

## Update GameState Scorebord
scoreboard players set difficulty GameState 2
