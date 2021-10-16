#  This function will never be called by the game and only contains 
#  random notes and code snippets that I want to keep handy

## Used for marking off paths mobs will be forced to follow when summoned
give @p[gamemode=creative] chicken_spawn_egg{display:{Name:'{"text":"Conveyor Belt","color":"aqua"}'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:["ConveyorBelt"]}} 1

## Clickable sign to give above spawn egg
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"give @p[gamemode=creative] chicken_spawn_egg{display:{Name:\'{\\"text\\":\\"Conveyor Belt\\",\\"color\\":\\"aqua\\"}\'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:[\\"ConveyorBelt\\"]}} 1"}}',Text2:'{"text":"Give @p","color":"gold"}',Text3:'{"text":"Conveyor Belt","color":"gold"}'},display:{Name:'{"text":"Custom Sign"}'}}