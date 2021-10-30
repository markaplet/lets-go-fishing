#  ------------------------------------
#  GameState scoreboard matches 1
#  ------------------------------------

## Debug output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 1 - Reset Team Scores"}]

## Red team sign
data merge block 5 13 -3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:misc/stop-round"}}',Text2:'{"text":"\\u1368 Stop Match \\u1368","color":"light_purple"}',Text3:'{"text":"click here","color":"aqua"}'}

## Gold team sign
data merge block -5 13 17 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:misc/stop-round"}}',Text2:'{"text":"\\u1368 Stop Match \\u1368","color":"light_purple"}',Text3:'{"text":"click here","color":"aqua"}'}

## Purple team sign
data merge block 15 13 27 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:misc/stop-round"}}',Text2:'{"text":"\\u1368 Stop Match \\u1368","color":"light_purple"}',Text3:'{"text":"click here","color":"aqua"}'}

## Green team sign
data merge block 25 13 7 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:misc/stop-round"}}',Text2:'{"text":"\\u1368 Stop Match \\u1368","color":"light_purple"}',Text3:'{"text":"click here","color":"aqua"}'}

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