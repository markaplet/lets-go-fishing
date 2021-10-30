setblock -7 9 -6 minecraft:redstone_block destroy
setblock -7 9 -6 minecraft:air destroy

## Red sign
data merge block 4 13 -4 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:floor/candycane"}}',Text2:'{"text":"Floor Pattern","color":"red"}',Text3:'["",{"text":"\\u2744","color":"white"},{"text":" Bells","color":"gold"},{"text":" \\u2744","color":"white"}]'}

## Yellow sign
data merge block -6 13 18 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:floor/candycane"}}',Text2:'{"text":"Floor Pattern","color":"red"}',Text3:'["",{"text":"\\u2744","color":"white"},{"text":" Bells","color":"gold"},{"text":" \\u2744","color":"white"}]'}

## Purple sign
data merge block 16 13 28 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:floor/candycane"}}',Text2:'{"text":"Floor Pattern","color":"red"}',Text3:'["",{"text":"\\u2744","color":"white"},{"text":" Bells","color":"gold"},{"text":" \\u2744","color":"white"}]'}

## Green sign
data merge block 26 13 6 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:floor/candycane"}}',Text2:'{"text":"Floor Pattern","color":"red"}',Text3:'["",{"text":"\\u2744","color":"white"},{"text":" Bells","color":"gold"},{"text":" \\u2744","color":"white"}]'}