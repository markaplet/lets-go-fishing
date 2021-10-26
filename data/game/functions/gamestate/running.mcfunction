#  ------------------------------------
#  GameState scoreboard matches 4
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 4 - Match Running"}]

## Armor Stand entity conveyor (Use terracotta to improve performance)
#execute at @e[type=armor_stand,tag=cb_north] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~-0.1
#execute at @e[type=armor_stand,tag=cb_east] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~0.1 ~ ~
#execute at @e[type=armor_stand,tag=cb_south] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~0.1
#execute at @e[type=armor_stand,tag=cb_west] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~-0.1 ~ ~

## Terracotta entity conveyor only work when match is running
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @e[distance=..0.1] ~ ~ ~0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @e[distance=..0.1] ~-0.1 ~ ~
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @e[distance=..0.1] ~ ~ ~-0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @e[distance=..0.1] ~0.1 ~ ~


## Players must stand on color wool blocks when casting.
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ red_wool run function game:misc/caught_sheep_red
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ orange_wool run function game:misc/caught_sheep_orange

## If there are no more sheep to be caught end the match and advance to game state 5
execute unless entity @e[type=sheep] run scoreboard players set dummy GameState 5