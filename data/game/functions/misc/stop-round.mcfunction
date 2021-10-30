kill @e[tag=go_fish]

## Red team sign
data merge block 5 13 -3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'}

## Yellow team sign
data merge block -5 13 17 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'}

## Purple team sign
data merge block 15 13 27 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'}

## Green team sign
data merge block 25 13 7 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'}



scoreboard players set dummy GameState 0