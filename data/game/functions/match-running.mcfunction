#  ------------------------------------
#  GameState scoreboard matches 3
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 3 - Match Running"}]

## Item Teleportation
execute at @e[type=armor_stand,tag=cb_north] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~-0.1
execute at @e[type=armor_stand,tag=cb_east] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~0.1 ~ ~
execute at @e[type=armor_stand,tag=cb_south] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~0.1
execute at @e[type=armor_stand,tag=cb_west] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~-0.1 ~ ~