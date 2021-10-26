#TODO: Remove debugging chat
execute as @s run say Orange Player Cast
execute as @s at @s as @e[type=fishing_bobber,distance=..3,limit=1] run tag @e[type=fishing_bobber,tag=!red_bobber,limit=1] add orange_bobber
scoreboard players set @s use_rod 0
execute as @e[type=fishing_bobber,tag=orange_bobber,limit=1] at @s as @e[type=sheep,limit=1,sort=nearest] run tag @e[type=sheep,limit=1] add orange_caugh
scoreboard players add Orange_Team catch 1
execute as @e[type=sheep,tag=orange_caught,limit=1] at @s run tp ~ ~-200 ~
scoreboard players set @s use_rod 0