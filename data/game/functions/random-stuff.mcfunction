#  This function will never be called by the game and only contains 
#  random notes and code snippets that I want to keep handy

## Used for marking off paths mobs will be forced to follow when summoned
give @p[gamemode=creative] chicken_spawn_egg{display:{Name:'{"text":"Conveyor Belt","color":"aqua"}'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:["ConveyorBelt"]}} 1

## Clickable sign to give above spawn egg
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"give @p[gamemode=creative] chicken_spawn_egg{display:{Name:\'{\\"text\\":\\"Conveyor Belt\\",\\"color\\":\\"aqua\\"}\'},Enchantments:[{}],EntityTag:{NoAI:1b,Tags:[\\"ConveyorBelt\\"]}} 1"}}',Text2:'{"text":"Give @p","color":"gold"}',Text3:'{"text":"Conveyor Belt","color":"gold"}'},display:{Name:'{"text":"Custom Sign"}'}}

## Difficulty: Easyish
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"Difficulty","clickEvent":{"action":"run_command","value":"scoreboard players set difficulty GameState 1"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"Easy\'ish","bold":true,"color":"light_purple"}'},display:{Name:'{"text":"Custom Sign"}'}}

## Easy v2
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:difficulty/hard"}}',Text2:'{"text":"Difficulty","color":"yellow"}',Text3:'{"text":"Easy","color":"green"}'},display:{Name:'{"text":"difficulty_easy"}'}}

data merge block ~ ~1 ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function game:difficulty/hard"}}',Text2:'{"text":"Difficulty","color":"yellow"}',Text3:'{"text":"Easy","color":"green"}'}

## Start Match
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'},display:{Name:'{"text":"StartGame"}'}}

data merge block ~ ~1 ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"\\u1368 Start Match \\u1368","color":"yellow"}',Text3:'{"text":"click here","color":"aqua"}'}

## NOTE: Difficulty block data hard set to test location

scoreboard players set debug GameState 0

give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"Debug","clickEvent":{"action":"run_command","value":"scoreboard players set debug GameState 0"},"bold":true,"color":"gold"}',Text2:'{"text":""}',Text3:'{"text":"False","bold":true,"color":"light_purple"}'},display:{Name:'{"text":"Custom Sign"}'}}

data merge block ~ ~1 ~ {Text1:'{"text":"Debug : False","clickEvent":{"action":"run_command","value":"summon"}}'}

give @p minecraft:birch_sign{BlockEntityTag:{Text1:'{"text":"Debug : False","clickEvent":{"action":"run_command","value":"scoreboard players set debug GameState 0"}}'},display:{Name:'{"text":"Custom Sign"}'}}

execute at @e[type=armor_stand,tag=cb_north] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~-0.1


## Scoreboard for team colors. Will be displayed in sidebar when game running
# scoreboard objectives add catch dummy {"text":"Example", "bold":"true"}

## Players standing on thier teams color will add them to that team color.
## Players moving to another color will switch teams automatically.
## TODO: Find out if there is a better method
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:purple_wool run team join purple @s
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:red_wool run team join red @s
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:green_wool run team join green @s
execute as @e[type=player] at @e[type=player] if block ~ ~-1 ~ minecraft:orange_wool run team join orange @s


give @p written_book{pages:['["",{"text":"Fishing License","bold":true,"color":"dark_blue"},{"text":"\\n\\nFish in these parts are larger than normal and grow wool coats for the winter.\\n\\nUsing your supplied ","color":"reset"},{"text":"Castmaster","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"give TODO"}},{"text":" 3000 lucky fisherman can reel these wooly abominations in to their ","color":"reset"},{"text":"catch zone","color":"dark_red"},{"text":" for points.","color":"reset"}]'],display:{Name:'{"text":"Fishing License","color":"aqua"}'},title:"Fishing License",author:"Department of Fish and Game"}

give @p written_book{display:{Name:'{"text":"Fishing License","color":"aqua"}'},title:"",author:""} 1

## Start Match Sign
give @p minecraft:dark_oak_sign{BlockEntityTag:{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"scoreboard players set dummy GameState 1"}}',Text2:'{"text":"Start Game","bold":true,"color":"green"}',Text3:'{"text":"Click Here","underlined":true,"color":"white"}'},display:{Name:'{"text":"Custom Sign"}'}}

#/execute at @e[type=fishing_bobber] run say @e[distance=.1..1]

execute as @e[type=fishing_bobber] run tag @s add red_bobber

#execute as @e[type=fishing_bobber,limit=1,distance=..2] run tag @s add red_bobber

#execute as @a[team=red] run data merge entity @e[type=minecraft:fishing_bobber,limit=1,distance=..2] {Tags:red_bobber}

#execute if @a[type=player,team=red] as @e[type=fishing_bobber,limit=1,distance=..2] run tag @s add red_bobber




#/execute @e[name=unknown] ~ ~ ~ /execute @e[tag=goFish,r=0] ~ ~ ~ tp @e[tag=goFish,r=0] @p

#/execute @e[type=sheep,tag=goFish] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 14 /scoreboard players add RedTeam scores 1


#execute if entity @a[team=red] run execute as @e[type=fishing_bobber] run tag @s add red_bobber


#https://insidedarkweb.com/arqade/execute-as-selector-if-nearest-entity-has-a-tag/
#execute
#  as @e[type=armor_stand,limit=1]      # ARMOUR STAND NOW HAS CONTROL
#  at @s                                # Move the location to me.
#  as @e[type=pig,limit=1,sort=nearest] # NEAREST PIG NOW HAS CONTROL
#  if entity @s[tag=carrot]             # If I have the tag carrot, continue to the next step, otherwise stop.
#  as @e[type=armor_stand,limit=1]      # ARMOUR STAND NOW HAS CONTROL
#say The nearest pig to me has the carrot tag!