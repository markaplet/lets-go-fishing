#  ------------------------------------
#  GameState scoreboard matches 4
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 4 - Match Running"}]

## Terracotta entity conveyor only work when match is running
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @e[distance=..0.1] ~ ~ ~0.2
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @e[distance=..0.1] ~-0.2 ~ ~
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @e[distance=..0.1] ~ ~ ~-0.2
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @e[distance=..0.1] ~0.2 ~ ~

## Players must stand on color wool blocks when casting.
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ red_wool run function game:misc/red_cast
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ yellow_wool run function game:misc/gold_cast
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ purple_wool run function game:misc/purple_cast
execute as @a[scores={use_rod=1..}] at @s if block ~ ~-1 ~ green_wool run function game:misc/green_cast

## Sheep Caught
execute as @e[type=fishing_bobber,tag=red_bobber] at @s if entity @e[type=sheep,distance=..1.09] run function game:misc/caught_sheep_red
execute as @e[type=fishing_bobber,tag=gold_bobber] at @s if entity @e[type=sheep,distance=..1.09] run function game:misc/caught_sheep_gold
execute as @e[type=fishing_bobber,tag=purple_bobber] at @s if entity @e[type=sheep,distance=..1.09] run function game:misc/caught_sheep_purple
execute as @e[type=fishing_bobber,tag=green_bobber] at @s if entity @e[type=sheep,distance=..1.09] run function game:misc/caught_sheep_green

## Effect applied to random players and sheep
execute if score difficulty GameState matches 3 run function game:misc/random_effects

## Kill any bobbers that are on the ground. Don't want players cheating.
execute as @e[type=fishing_bobber,nbt={OnGround:1b}] run kill @s

execute if score difficulty GameState matches 3 run function game:misc/random_effects

## If there are no more sheep to be caught end the match and advance to game state 5
execute unless entity @e[type=sheep] run scoreboard players set dummy GameState 5
