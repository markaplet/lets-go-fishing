#  ------------------------------------
#  Red Team Cast Rod
#  Tag bobber to red team
#  Reset player use_rod score
#  ------------------------------------

execute as @s run say red team cast
execute as @s at @s as @e[type=fishing_bobber,distance=..3,limit=1] run tag @e[type=fishing_bobber,tag=!red_bobber,tag=!orange_bobber,tag=!green_bobber,tag=!purple_bobber,limit=1] add red_bobber
scoreboard players set @s use_rod 0