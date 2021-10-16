#  ------------------------------------
#  Change Game Dificulty To Hard
#  ------------------------------------

## Update sign to reflect current difficulty
data merge block 2 5 4 {Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"function game:difficulty/easy"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"Hard\'ish","bold":true,"color":"light_purple"}'}

## Announce current difficulty
tellraw @a[gamemode=creative] ["",{"text":" Game Difficulty set to: "},{"text":"Hard'ish","color":"light_purple"}]

## Update GameState Scorebord
scoreboard players set difficulty GameState 2