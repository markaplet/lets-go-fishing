#  ------------------------------------
#  Tag the bobber with the color of the player who cast it
#  Tag the used bobber once it gets close to the sheep
#  reset the use_rod score
#  ------------------------------------

execute if entity @a[team=red,scores={use_rod=1}] as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add red_bobber
execute if entity @a[team=red,scores={use_rod=1}] as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add used_bobber
execute as @a[team=red,scores={use_rod=1}] run scoreboard players set @s use_rod 0

execute if entity @a[team=orange,scores={use_rod=1}] as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add orange_bobber
execute if entity @a[team=orange,scores={use_rod=1}] as @e[type=fishing_bobber,tag=!used_bobber,limit=1,sort=nearest] run tag @s add used_bobber
execute as @a[team=orange,scores={use_rod=1}] run scoreboard players set @s use_rod 0