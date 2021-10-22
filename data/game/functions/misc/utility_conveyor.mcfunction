# CONVEYOR BELT UTILITY

## Traditional terracotta conveyor used for performance comparison.
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @e[distance=..0.1] ~ ~ ~0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @e[distance=..0.1] ~-0.1 ~ ~
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @e[distance=..0.1] ~ ~ ~-0.1
execute at @e if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @e[distance=..0.1] ~0.1 ~ ~


# ------------------------------------
## Utility Announce Direction
#execute if entity @p[y_rotation=-225..-135] run say North
#execute if entity @p[y_rotation=-135..-45] run say East
#execute if entity @p[y_rotation=-360..-315] run say South
#execute if entity @p[y_rotation=-315..-225] run say West

# ------------------------------------
## Place armor stand at chicken location
#execute if entity @p[y_rotation=-225..-135] at @e[type=chicken,tag=ConveyorBelt,sort=nearest] run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Tags:["CBNorth"]}
execute if entity @p[y_rotation=-225..-135] at @e[type=chicken,tag=ConveyorBelt,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:["cb_north"]}
execute if entity @p[y_rotation=-135..-45] at @e[type=chicken,tag=ConveyorBelt,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:["cb_east"]}
execute if entity @p[y_rotation=-360..-315] at @e[type=chicken,tag=ConveyorBelt,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:["cb_south"]}
execute if entity @p[y_rotation=-315..-225] at @e[type=chicken,tag=ConveyorBelt,sort=nearest] run summon armor_stand ~ ~ ~ {Tags:["cb_west"]}

# ------------------------------------
## Replace chicken with carpet
execute at @e[tag=ConveyorBelt] run fill ~ ~ ~ ~ ~ ~ minecraft:red_carpet replace air

# ------------------------------------
## Teleport chicken into the void
execute as @e[type=chicken,tag=ConveyorBelt] run teleport @s ~ ~-500 ~

# ------------------------------------
## Item Teleportation
execute at @e[type=armor_stand,tag=cb_north] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~-0.1
execute at @e[type=armor_stand,tag=cb_east] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~0.1 ~ ~
execute at @e[type=armor_stand,tag=cb_south] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~ ~ ~0.1
execute at @e[type=armor_stand,tag=cb_west] as @e[type=!armor_stand,distance=..1] at @s run tp @s ~-0.1 ~ ~