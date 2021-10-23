
execute as @e[type=fishing_bobber] run tag @s add red_bobber
execute at @e[type=fishing_bobber,tag=red_bobber] as @e[type=sheep,distance=..1.04,limit=1] run teleport @s ~ -500 ~
execute at @e[type=fishing_bobber,tag=red_bobber] as @e[type=sheep,distance=..1.04,limit=1] run scoreboard players add Red_Team catch 1