#  ------------------------------------
#  Change Game Dificulty To Hard
#  ------------------------------------

## Update sign to reflect current difficulty
data merge block 10 13 -10 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:difficulty/easy"}}',Text2:'{"text":"Difficulty","bold":true,"color":"gold"}',Text3:'{"text":"Hard\'ish","bold":true,"color":"light_purple"}'}

## Announce current difficulty
tellraw @a[gamemode=creative] ["",{"text":" Game Difficulty set to: "},{"text":"Hard'ish","color":"light_purple"}]

## Update GameState Scorebord
scoreboard players set difficulty GameState 2