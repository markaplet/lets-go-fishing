#  ------------------------------------
#  Purple Team Cast Rod
#  Tag bobber to purple team
#  Reset player use_rod score
#  ------------------------------------

execute if score debug GameState matches 1 run execute as @s run say purple team cast
execute as @s at @s as @e[type=fishing_bobber,distance=..3,limit=1] run tag @e[type=fishing_bobber,tag=!red_bobber,tag=!gold_bobber,tag=!green_bobber,tag=!purple_bobber,limit=1] add purple_bobber
scoreboard players set @s use_rod 0