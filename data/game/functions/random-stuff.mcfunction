#  This function will never be called by the game and only contains 
#  random notes and code snippets that I want to keep handy

## Used for marking off paths mobs will be forced to follow when summoned
give @p[gamemode=creative] chicken_spawn_egg{display:{Name:'{"text":"Conveyor Belt","color":"aqua"}'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:["ConveyorBelt"]}} 1

## Clickable sign to give above spawn egg
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"give @p[gamemode=creative] chicken_spawn_egg{display:{Name:\'{\\"text\\":\\"Conveyor Belt\\",\\"color\\":\\"aqua\\"}\'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:[\\"ConveyorBelt\\"]}} 1"}}',Text2:'{"text":"Give @p","color":"gold"}',Text3:'{"text":"Conveyor Belt","color":"gold"}'},display:{Name:'{"text":"Custom Sign"}'}}

## Difficulty: Easyish
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"scoreboard players set difficulty GameState 1"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"Easy\'ish","bold":true,"color":"light_purple"}'},display:{Name:'{"text":"Custom Sign"}'}}

## NOTE: Difficulty block data hard set to test location

scoreboard players set debug GameState 0

give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"Debug","clickEvent":{"action":"run_command","value":"scoreboard players set debug GameState 0"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"False","bold":true,"color":"light_purple"}'},display:{Name:'{"text":"Custom Sign"}'}}

data merge block ~ ~1 ~ {Text1:'{"text":"Debug : False","clickEvent":{"action":"run_command","value":"summon"}}'}

give @p minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"Debug : False","clickEvent":{"action":"run_command","value":"scoreboard players set debug GameState 0"}}'},display:{Name:'{"text":"Custom Sign"}'}}