#  ------------------------------------
#  GameState scoreboard matches 4
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 4 - Match Running"}]

## Item Teleportation
#execute at @e[type=armor_stand,tag=cb_north] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~-0.1
#execute at @e[type=armor_stand,tag=cb_east] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~0.1 ~ ~
#execute at @e[type=armor_stand,tag=cb_south] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~0.1
#execute at @e[type=armor_stand,tag=cb_west] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~-0.1 ~ ~

execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @e[distance=..0.1] ~ ~ ~0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @e[distance=..0.1] ~-0.1 ~ ~
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @e[distance=..0.1] ~ ~ ~-0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @e[distance=..0.1] ~0.1 ~ ~


# add scores when caught
# Teleport caught sheep into the void

#execute if predicate game:attachedtosheep run say attached

#execute as @a if score @s use_rod matches 1 run function game:misc/caught_sheep3
function game:misc/caught_sheep3

## If there are no more sheep to be caught end the match and advance to game state 5