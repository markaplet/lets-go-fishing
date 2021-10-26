#  ------------------------------------
#  Red team caught a sheep
#  ------------------------------------
execute if entity @a[team=red] run execute as @e[type=fishing_bobber,tag=!orange_bobber,tag=!green_bobber,tag=!purple_bobber,limit=1,sort=nearest] run tag @s add red_bobber
execute if entity @a[team=red] run execute as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add used_bobber
execute as @e[type=fishing_bobber,tag=red_bobber] at @s if entity @e[type=sheep,distance=..1.04,limit=1] run tag @s add kill_bobber
execute if entity @e[type=fishing_bobber,tag=red_bobber,tag=kill_bobber] run scoreboard players add Red_Team catch 1
execute as @e[type=fishing_bobber,tag=red_bobber] at @s run kill @e[type=sheep,distance=..1.04,limit=1]
kill @e[tag=kill_bobber,tag=red_bobber]

#  ------------------------------------
#  Orange team caught a sheep
#  ------------------------------------
execute if entity @a[team=orange] run execute as @e[type=fishing_bobber,tag=!red_bobber,tag=!green_bobber,tag=!purple_bobber,limit=1,sort=nearest] run tag @s add orange_bobber
execute if entity @a[team=orange] run execute as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add used_bobber
execute as @e[type=fishing_bobber,tag=orange_bobber] at @s if entity @e[type=sheep,distance=..1.04,limit=1] run tag @s add kill_bobber
execute if entity @e[type=fishing_bobber,tag=orange_bobber,tag=kill_bobber] run scoreboard players add Red_Team catch 1
execute as @e[type=fishing_bobber,tag=orange_bobber] at @s run kill @e[type=sheep,distance=..1.04,limit=1]
kill @e[tag=kill_bobber,tag=orange_bobber]



## Busted code do not use
#execute as @e[type=fishing_bobber,tag=red_bobber] run kill @e[type=fishing_bobber,limit=1]
#execute at @e[type=fishing_bobber,tag=red_bobber] as @e[type=sheep,distance=..1.04,limit=1] run tag @s add killed 
#execute at @e[type=sheep,tag=killed,distance=..1.04,limit=1] as @e[type=fishing_bobber,tag=red_bobber] run tag @s add kill_bobber
#execute at @e[type=fishing_bobber,tag=red_bobber] as @e[type=sheep,distance=..1,limit=1.04] run kill @e[tag=red_bobber]
#execute at @e[type=sheep,tag=killed,limit=1] run teleport @s ~ -500 ~

## Green Team caught a sheep
#execute if entity @a[team=green] run execute as @e[type=fishing_bobber] run tag @s add green_bobber
#execute at @e[type=fishing_bobber,tag=green_bobber] as @e[type=sheep,distance=..1.1,limit=1] run scoreboard players add Green_Team catch 1
#execute at @e[type=fishing_bobber,tag=green_bobber] as @e[type=sheep,distance=..1.1,limit=1] run teleport @s ~ -500 ~

## Orange Team caught a sheep
#execute if entity @a[team=orange] run execute as @e[type=fishing_bobber] run tag @s add orange_bobber
#execute at @e[type=fishing_bobber,tag=orange_bobber] as @e[type=sheep,distance=..1.1,limit=1] run scoreboard players add Orange_Team catch 1
#execute at @e[type=fishing_bobber,tag=orange_bobber] as @e[type=sheep,distance=..1.1,limit=1] run teleport @s ~ -500 ~

## Purple Team caught a sheep
#execute if entity @a[team=purple] run execute as @e[type=fishing_bobber] run tag @s add purple_bobber
#execute at @e[type=fishing_bobber,tag=purple_bobber] as @e[type=sheep,distance=..1.1,limit=1] run scoreboard players add Purple_Team catch 1
#execute at @e[type=fishing_bobber,tag=purple_bobber] as @e[type=sheep,distance=..1.1,limit=1] run teleport @s ~ -500 ~
